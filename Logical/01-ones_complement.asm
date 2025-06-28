; Program to compute 1's complement of a number stored at 2050H
; Stores result at 2051H and outputs to port 02H

LDA 2050H       ; Load number from memory
CMA             ; A = NOT A (1's complement)
STA 2051H       ; Store result at 2051H
OUT 02H         ; Output to port 02H
HLT             ; Halt execution
