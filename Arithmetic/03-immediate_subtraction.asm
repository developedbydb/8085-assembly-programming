; Program to subtract two 8-bit numbers (30H - 10H)
; Stores result at 2050H and outputs to port 01H

MVI B, 10H      ; Load subtrahend (10H) into register B
MVI A, 30H      ; Load minuend (30H) into accumulator
SUB B           ; A = A - B (30H - 10H = 20H)
STA 2050H       ; Store result at memory location 2050H
OUT 01H         ; Output result to port 01H
HLT             ; Halt execution
