#!/usr/bin/env python3

"""
This program is used to generate the contents of the decoder EEPROM in the computer. This EEPROM
has a 13-bit address and a 32-bit output, giving a total of 8192 words / 32768 bytes.

The decoder takes 13 inputs, containing information such as the current opcode or the µ-code step,
and outputs a set of control signals that should be active at that time. The control signals can
tell each part of the computer to do certain things, like outputting to the data bus or incrementing
the program counter.

The control signals are partially multiplexed. This is possible because, to prevent bus contention,
only one component can output to the data bus at any given time. Additionally, it's never required
that two components will read from the data bus at the same time. Therefore, 4-bit data output
and data input selector sections of the decoder's output can control 16 different data IO components.

Therefore, the decoder's output is arranged like this, with the MSB on the left. Also, the bit-width
of each section is shown below.

MISC CTRL  IN SELECT  IN?  OUT SELECT  OUT?
22         4          1    4           1

IN? and OUT? are used to say whether or not a data bus read or write should actually occur, and then
IN SELECT and OUT SELECT are used to select the component to read from or write to. MISC CTRL controls
the rest of the components in the computer - things like adding numbers, halting the clock, and many more.

The address is arranged like this:

OPCODE  Z  C  STEP
7       1  1  4

OPCODE is a 7-bit value used to indicate the instruction which is currently being executed. Z amd C
give the values of the zero and carry flags respectively, which are updated every time an arithmetic
operation is performed. STEP is a value from 0 to 15, specifying how far through the execution of
the current instruction the CPU is. If all decoder output bits are 0, then STEP will be set back to
0 and the next clock cycle will begin the next instruction from RAM.

The first four µ-code steps are consumed by the fetch + decode stages of the instruction cycle. This
leaves 12 steps available for instructions to actually carry out some task, which is plenty for any
instruction in reality.

The outputs produced from this program are in the format described on this page:
http://www.cburch.com/logisim/docs/2.7/en/html/guide/mem/menu.html, such that they can be read into
Logisim.
"""

DATA_OUT = 1 << 0
DATA_IN  = 1 << 5

OUT = 1
IN  = 6

A_IO       = 0
B_IO       = 1
RAM_IO     = 2
ACC_IO     = 3
ARG_IO     = 4
OP_IO      = 5
PC_ADDR_IO = 6
PC_PAGE_IO = 7
OUT_IO     = 8
PAGE_IO    = 9
ADDR_IO    = 10

# With the above definitions, the bits for reading the data bus into the accumulator would be
# defined as DATA_IN | (ACC_IO << IN), and outputting RAM[address bus] into the data bus would
# be DATA_OUT | (RAM_IO << OUT).

def output(io):
    return DATA_OUT | (io << OUT)

def input(io):
    return DATA_IN | (io << IN)
    
# These helper functions let you write mk_out(A_IO) in place of DATA_OUT | (A_IO << OUT).

MAR_TO_ADRB = 1 << 12
ADRB_TO_MAR = 1 << 13
SUB         = 1 << 14
FLAG_IN     = 1 << 15
LATCH_ACC   = 1 << 16
SUM_TO_ACC  = 1 << 17
JUMP        = 1 << 18
PC_OUT      = 1 << 19
SPTR_IN     = 1 << 20
SPTR_OUT    = 1 << 21
SPTR_INCR   = 1 << 22
SPTR_DECR   = 1 << 23
COUNT       = 1 << 24
HALT        = 1 << 25

Z = 0b10
C = 0b01

# The four control words used for the fetch + decode stage.
FETCH = [
    output(RAM_IO) | input(OP_IO) | PC_OUT,
    COUNT,
    output(RAM_IO) | input(ARG_IO) | PC_OUT,
    COUNT,
]

# The instructions, in order, starting from instruction index 0.
INSTRUCTIONS = [
    # 0: HALT
    [ HALT ],
    
    # 1: LDA x
    [ output(ARG_IO) | input(ADDR_IO),
      output(ACC_IO) | input(RAM_IO) | MAR_TO_ADRB ],
    
    # 2: STA x
    [ output(ARG_IO) | input(ADDR_IO),
      output(ACC_IO) | input(RAM_IO) | MAR_TO_ADRB ],
    
    # 3: OUT
    [ output(ACC_IO) | input(OUT_IO) ],
    
    # 4: NO-OP
    [],
    
    # 5: MEMREFLD x
    [ output(ARG_IO) | input(ADDR_IO),
      output(RAM_IO) | input(ADDR_IO) | MAR_TO_ADRB,
      output(RAM_IO) | input(ACC_IO) | MAR_TO_ADRB ],
    
    # 6: A->B
    [ output(A_IO) | input(B_IO) ],
    
    # 7: A->ACC
    [ output(A_IO) | input(ACC_IO) ],
    
    # 8: AREFLD
    [ output(A_IO) | input(ADDR_IO),
      output(RAM_IO) | input(ACC_IO) | MAR_TO_ADRB ],
    
    # 9: B->A
    [ output(B_IO) | input(A_IO) ],
    
    # 10: BREFLD
    [ output(B_IO) | input(ADDR_IO),
      output(RAM_IO) | input(ACC_IO) | MAR_TO_ADRB ],
    
    # 11: B->ACC
    [ ouput(B_IO) | input(ACC_IO) ],
    
    # 12: MEMREFST x
    [ output(ARG_IO) | input(ADDR_IO),
      output(RAM_IO) | input(ADDR_IO) | MAR_TO_ADRB,
      output(ACC_IO) | input(RAM_IO) | MAR_TO_ADRB ],
    
    # 13: ACC->A
    [ output(ACC_IO) | input(A_IO) ],
    
    # 14: ACC->B
    [ output(ACC_IO) | input(B_IO) ],
    
    # 15: AREFST
    [ output(A_IO) | input(ADDR_IO),
      output(ACC_IO) | input(RAM_IO) | MAR_TO_ADRB ],
    
    # 16: ADDR x
    [ output(ARG_IO) | input(ADDR_IO) | LATCH_ACC,
      output(RAM_IO) | MAR_TO_ADRB | SUM_TO_ACC | FLAG_IN ],
    
    # 17: ADDA
    [ LATCH_ACC,
      output(A_IO) | SUM_TO_ACC | FLAG_IN ],
    
    # 18: ADDB
    [ LATCH_ACC,
      output(B_IO) | SUM_TO_ACC | FLAG_IN ],
    
    # 19: BREFST
    [ output(B_IO) | ADDR_IO,
      output(ACC_IO) | input(RAM_IO) | MAR_TO_ADRB ],
    
    # 20: SUBR x
    [ output(ARG_IO) | input(ADDR_IO) | LATCH_ACC,
      output(RAM_IO) | MAR_TO_ADRB | SUM_TO_ACC | FLAG_IN | SUB ],
    
    # 21: SUBA
    [ LATCH_ACC,
      output(A_IO) | SUM_TO_ACC | FLAG_IN | SUB ],
    
    # 22: SUBB
    [ LATCH_ACC,
      output(B_IO) | SUM_TO_ACC | FLAG_IN | SUB ],
    
    # 23: PAGE x
    [ output(ARG_IO) | input(PAGE_IO) ],
    
    # 24: JMP x
    [ output(ARG_IO) | input(ADDR_IO),
      JUMP | MAR_TO_ADRB ],
    
    # 25: JZ x
    {
        Z: [ output(ARG_IO) | input(ADDR_IO),
             JUMP | MAR_TO_ADRB ],
        Z | C: [ output(ARG_IO) | input(ADDR_IO),
                 JUMP | MAR_TO_ADRB ],
    },
    
    # 26: JC x
    {
        C: [ output(ARG_IO) | input(ADDR_IO),
             JUMP | MAR_TO_ADRB ],
        Z | C: [ output(ARG_IO) | input(ADDR_IO),
                 JUMP | MAR_TO_ADRB ],
    },
    
    # 27: PUSH
    [ SPTR_DECR,
      output(ACC_IO) | input(RAM_IO) | SPTR_OUT ],
    
    # 28: POP
    [ output(RAM_IO) | input(ACC_IO) | SPTR_OUT,
      SPTR_INCR ],
    
    # 29: CALL x
    [ SPTR_DECR,
      output(PC_ADDR_IO) | input(RAM_IO) | SPTR_OUT,
      SPTR_DECR,
      output(PC_PAGE_IO) | input(RAM_IO) | SPTR_OUT,
      output(ARG_IO) | input(ADDR_IO),
      JUMP | MAR_TO_ADRB ],
    
    # 30: RETURN
    [ output(RAM_IO) | input(PAGE_IO) | SPTR_OUT,
      SPTR_INCR,
      output(RAM_IO) | input(ADDR_IO) | SPTR_OUT,
      SPTR_INCR,
      JUMP | MAR_TO_ADRB ],
]
