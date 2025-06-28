; Program to subtract two numbers from memory locations 2050H and 2051H
; Stores result at 2052H and outputs to port 01H

LDA 2051H       ; Load subtrahend from memory 2051H into accumulator
MOV B, A        ; Copy value to register B
LDA 2050H       ; Load minuend from memory 2050H into accumulator
SUB B           ; A = A - B (Subtract contents)
STA 2052H       ; Store result at memory location 2052H
OUT 01H         ; Output result to port 01H
HLT             ; Halt execution
