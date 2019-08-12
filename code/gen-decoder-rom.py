#!/usr/bin/env python3

"""
This program is used to generate the EEPROM contents to be used in the computer for
decoding instructions.

The EEPROM used (at an abstract level - it is actually 4 EEPROMs) has a 13-bit address
and 32-bit output.

The address is arranged, with the most significant bit on the left, like so:

OPCODE           Z C  STEP
x x x x x x x x  x x  x x x

OPCODE is an 8-bit value, with the LSB on the left, representing the current instruction's
opcode. The opcode tells the CPU what should be done for the instruction, for example
00000001 corresponds to the LDA instruction. Z and C and the zero and carry flags,
respectively. STEP is the current microcode step, ranging from 0 to 7.

The EEPROM output feeds into the CPU's control word which allows the decoder to maniupulate
and control each module in the computer. The bits are arranged, from least signficant to most,
like so:

0   A register -> data bus
    data bus -> A register
    B register -> data bus
    data bus -> B register
4   RAM -> data bus
    data bus -> RAM
    data bus -> page register
    data bus -> addr register
8   memory address register -> address bus
    address bus -> memory address register
    subtract or add? 1 = subtract, 0 = add
    accumulator = accumulator (+ / -) data bus
12  accumulator -> ALU latch register
    load flags into flag register
    accumulator -> data bus
    data bus -> accumulator
16  jump (address bus -> program counter)
    count (increment program counter)
    program counter -> address bus
    halt
20  data bus -> opcode register
    operand/argument register -> data bus
    data bus -> operand/argument register
    data bus -> output register

More control signals will be added when they're needed, but hopefully no more than 32 will be necessary.

Additionally, every instruction's first four clock cycles are consumed by fetching and decoding the
opcode and operand. In memory, if the program counter is pointing at an opcode, the next memory location
will always be its argument (even if that particular instruction doesn't use its argument). This might
be something to look at changing in the future though.

The outputs produced from this program are in the format described on this page:
http://www.cburch.com/logisim/docs/2.7/en/html/guide/mem/menu.html, such that they can be read into
Logisim.

In 'fetch' and 'instructions', control words are encoded in sets of integers corresponding to the ACTIVE
control signals (not, active, not high. Many of the control signals in the physical computer are active low.)
"""

# constants to make the instruction definitions readable.
A_OUT = 0
A_IN = 1
B_OUT = 2
B_IN = 3
RAM_OUT = 4
RAM_IN = 5
PAGE_IN = 6
ADDR_IN = 7
MAR_TO_ADRB = 8
ADRB_TO_MAR = 9
SUB = 10
SUM_TO_ACC = 11
LATCH_ACC = 12
FLAG_IN = 13
ACC_OUT = 14
ACC_IN = 15
JUMP = 16
COUNT = 17
PC_OUT = 18
HALT = 19
OP_IN = 20
ARG_OUT = 21
ARG_IN = 22
OUTPUT = 23

# the four control words used to fetch and decode the instruction currently pointed to by PC.
FETCH = [
    { RAM_OUT, PC_OUT, OP_IN },
    { COUNT },
    { RAM_OUT, PC_OUT, ARG_IN },
    { COUNT },
]

# the instructions, in order, starting from 0x00.
INSTRUCTIONS = [
    [ # 0   HALT
        { HALT },
    ],
    [ # 1   LDA x
        { ADDR_IN, ARG_OUT },
        { RAM_OUT, MAR_TO_ADRB, ACC_IN },
    ],
    [ # 2   STA x
        { ADDR_IN, ARG_OUT },
        { RAM_IN, MAR_TO_ADRB, ACC_OUT },
    ],
    [ # 3   OUT
        { ACC_OUT, OUTPUT },
    ]
]

def generate_rom():
    # initialise ROM, filled with zeros.
    rom = [ 0 for i in range(2 ** 13) ]
    
    for (opcode, instr) in enumerate(INSTRUCTIONS):
        # add the fetch steps before the instruction
        steps = FETCH + instr
        
        # pad with empty control words up to a length of 8
        for i in range(8 - len(steps)):
            steps.append({})
        
        base_address = opcode << 5
        
        for (i, signals) in enumerate(steps):
            # construct the control word
            word = 0
            for sig in signals:
                word |= 1 << sig
            
            addr = base_address | i
            
            for flags in range(0b11):
                rom[addr | (flags << 3)] = word
    
    return rom

def output_rom(rom):
    print("v2.0 raw")
    
    for x in rom:
        print(hex(x)[2:])

def main():
    output_rom(generate_rom())

if __name__ == "__main__":
    main()