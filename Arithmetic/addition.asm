; Program to add two 8-bit numbers (25H + 15H)
; Stores result at 2050H and outputs to port 01H

MVI B, 25H      ; Load first number (25H) into register B
MVI A, 15H      ; Load second number (15H) into accumulator
ADD B           ; A = A + B (15H + 25H = 3AH)
STA 2050H       ; Store result at memory location 2050H
OUT 01H         ; Output result to port 01H
HLT             ; Halt execution

