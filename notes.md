# 8085 Assembly Programming Notes

## 🔹 Registers & Memory
| Register | Purpose          | Example Usage      | Mnemonic |
|----------|------------------|-------------------|----------|
| A        | Accumulator      | `ADD B`           | **A**lways the main register |
| B, C, D  | General-purpose  | `MOV A, B`        | **B**uddy, **C**ompany, **D**ude (secondary registers) |
| H, L     | Memory Pointer   | `LDA 2050H`       | **H**olds **L**ocation (HL points to memory) |
| PC       | Program Counter  | Auto-increments   | **P**rogram **C**hapter (tracks current instruction) |
| SP       | Stack Pointer    | `PUSH/POP`        | **S**tack **P**rotector |

---

## 🔹 Key Instructions
### Data Transfer
| Instruction | Meaning          | Mnemonic |
|-------------|------------------|----------|
| `MOV Rd, Rs` | Copy register | **M**ove **O**ver **V**alue |
| `MVI R, data` | Load immediate | **M**emory **V**alue **I**mmediate |
| `LDA addr` | Load A from memory | **L**oad **D**irect to **A**ccumulator |
| `STA addr` | Store A to memory | **S**ave **T**o **A**ddress |

### Arithmetic
| Instruction | Meaning | Mnemonic |
|-------------|---------|----------|
| `ADD R` | A = A + R | **A**lways **D**o **D**dition |
| `ADI data` | A = A + data | **A**dd **D**irect **I**mmediate |
| `SUB R` | A = A - R | **S**ubtract **U**sing **B**register |

### Control Flow
| Instruction | Meaning | Mnemonic |
|-------------|---------|----------|
| `JMP addr` | Unconditional jump | **J**ust **M**ove **P**ointer |
| `JZ addr` | Jump if Zero=1 | **J**ump **Z**ero |

---

## 🔹 Common Output Locations
1. **Accumulator (A)**  
   - *Mnemonic*: **A**nswers live here  
2. **Memory (STA 2050H)**  
   - *Mnemonic*: **S**tored **T**reasures **A**t [address]  
3. **Ports (OUT 01H)**  
   - *Mnemonic*: **O**utput **U**sually **T**here  

---

## 🔹 Flag Register (Cheat Codes)
| Flag | Name | Mnemonic | Trigger Condition |
|------|------|----------|-------------------|
| Z    | Zero | **Z**ombies appear when result=0 | Result = 0 |
| CY   | Carry | **C**arry **Y**our overflow | Arithmetic overflow |
| S    | Sign | **S**ad when negative (MSB=1) | Negative result |
| P    | Parity | **P**arty if even 1's | Even # of set bits |
| AC   | Aux Carry | **A**uxiliary **C**hange | Nibble overflow |

