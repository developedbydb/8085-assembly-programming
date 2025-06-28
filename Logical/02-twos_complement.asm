; Program to compute 2's complement of a number stored at 2050H
; Stores result at 2051H and outputs to port 03H

LDA 2050H       ; Load number from memory
CMA             ; Step 1: 1's complement (NOT A)
INR A           ; Step 2: Add 1 to get 2's complement
STA 2051H       ; Store result at 2051H
OUT 03H         ; Output to port 03H
HLT             ; Halt execution

