; Program to add two numbers from memory locations 2050H and 2051H
; Stores result at 2052H and outputs to port 01H

LDA 2050H       ; Load first number from memory 2050H into accumulator
MOV B, A        ; Copy value from accumulator to register B
LDA 2051H       ; Load second number from memory 2051H into accumulator
ADD B           ; A = A + B (Add both numbers)
STA 2052H       ; Store result at memory location 2052H
OUT 01H         ; Output result to port 01H
HLT             ; Halt execution

