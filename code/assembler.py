#!/usr/bin/env python3

import sys

"""
This program is used to translate assembly files into machine code for the computer. For
now, it's a very basic assembly format and translates 1-to-1 into machine code, but in the
future more complicated things could be done.

An line in an assembly file has three sections: an optional memory location, an opcode,
and an optional operand. Thus, four types of lines are possible:

        OUT
        LDA     0b01101001
0x0001  AREFST
0xffff  DATA    53

Additionally, anything written after the third field is ignored, so can be used as a comment:

0x00ff  DATA    42      Put the decimal value 42 into the memory location 0x00ff

Numeric values can be written in decimal, hexadecimal, or binary notation, depending on
their prefix. The three sections of a line are separated by whitespace and don't need to be
line up with each other (but it helps readability).

DATA is the only "instruction" which doesn't map to an instruction in the machine code. It's
used to say that the specified memory address isn't an instruction, and instead the argument
of that line is just placed into memory at that location.

If the memory location isn't specified, it will be assumed to be the previous one plus two.
If the memory location of the first instruction is not specified, it is assumed to be zero.

If an argument isn't specified, it will default to zero.
"""

# the set of available instructions, where the list index corresponds to the instruction's opcode.
INSTRUCTIONS = [
    "HALT",
    "LDA",
    "STA",
    "OUT",
    "NO-OP",
    "MEMREFLD",
    "A->B",
    "A->ACC",
    "AREFLD",
    "B->A",
    "BREFLD",
    "B->ACC",
    "MEMREFST",
    "ACC->A",
    "ACC->B",
    "AREFST",
    "ADDR",
    "ADDA",
    "ADDB",
    "BREFST",
    "SUBR",
    "SUBA",
    "SUBB",
    "PAGE",
]

def parse_numeric(str):
    try:
        if len(str) > 2 and str[0:2] == "0x":
            return int(str, 16)
        elif len(str) > 2 and str[0:2] == "0b":
            return int(str, 2)
        else:
            return int(str)
    except ValueError:
        return None

def parse(str):
    prev_addr = None
    instructions = []
    
    for line in str.splitlines():
        fields = line.split()
        
        if len(fields) == 0:
            continue
        
        if parse_numeric(fields[0]) != None:
            if len(fields) == 1:
                return (None, "the address %s was specified without an instruction" % fields[0])
            else:
                addr = parse_numeric(fields[0])
                instr = fields[1]
            
            has_addr = True
        else:
            addr = 0 if prev_addr == None else prev_addr + 2
            instr = fields[0]
            
            has_addr = False

        try:
            instruction = INSTRUCTIONS.index(instr)
        except ValueError:
            if instr == "DATA":
                instruction = -1
            else:
                return (None, "%s is not a valid instruction" % instr)
        
        if (has_addr and len(fields) > 2) or (not has_addr and len(fields) > 1):
            arg = parse_numeric(fields[2 if has_addr else 1])
            if arg == None:
                return (None, "the argument %s can't be parsed as a number" % fields[2 if has_addr else 1])
        else:
            arg = 0
        
        instructions.append((addr, instruction, arg))
        prev_addr = addr
    
    return (instructions, None)

def assemble(instructions):
    # fill the ram with zeros
    ram = [ 0 for i in range(2 ** 16) ]
    
    for (address, instruction, argument) in instructions:
        if instruction >= 0:
            ram[address] = instruction
            ram[address+1] = argument
        else:
            ram[address] = argument
    
    return ram
    
def output_ram(ram):
    print("v2.0 raw")
    
    for d in ram:
        print(hex(d)[2:])
    
def main():
    content = sys.stdin.read()
    
    (instructions, err) = parse(content)
    if err != None:
        print("error:", err)
    else:
        output_ram(assemble(instructions))
    
if __name__ == "__main__":
    main()