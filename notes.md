# 8085 Assembly Programming Notes

## 🔹 Registers & Memory
| Register | Bit Size | Purpose          | Example Usage      |
|----------|---------|------------------|-------------------|
| A        | 8-bit   | Accumulator      | `ADD B`           |
| B, C, D, E | 8-bit | General-purpose  | `MOV A, B`        |
| H, L     | 8-bit   | Memory Pointer   | `LDA 2050H`       |
| PC       | 16-bit  | Program Counter  | Auto-increments   |
| SP       | 16-bit  | Stack Pointer    | `PUSH/POP`        |

**Memory Trick:** "**A Big Cat Digs Earth, Hides Little**" (A, B, C, D, E, H, L)

---

## 🔹 Instruction Groups

### A. Data Transfer Group
| Mnemonic | Example | Meaning | Pattern |
|----------|---------|---------|---------|
| `MOV` | `MOV A, B` | Copy B → A | Register to Register |
| `MVI` | `MVI A, 05H` | Load immediate → A | Immediate to Register |
| `LDA` | `LDA 2050H` | Memory → A | Memory to Accumulator |
| `STA` | `STA 2050H` | A → Memory | Accumulator to Memory |

### B. Arithmetic Group
| Mnemonic | Example | Operation | Memory Trick |
|----------|---------|-----------|--------------|
| `ADD` | `ADD B` | A = A + B | **ADD**ition |
| `ADI` | `ADI 05H` | A = A + data | **ADD** Immediate |
| `SUB` | `SUB C` | A = A - C | **SUB**tract |
| `INR` | `INR D` | D = D + 1 | **IN**crement |
| `DCR` | `DCR E` | E = E - 1 | **D**e**CR**ease |

### C. Logical & Complement Group
| Mnemonic | Example | Operation | Pattern |
|----------|---------|-----------|---------|
| `ANA` | `ANA B` | A = A AND B | AND Accumulator |
| `ORA` | `ORA C` | A = A OR C | OR Accumulator |
| `XRA` | `XRA D` | A = A XOR D | XOR Accumulator |
| `CMA` | `CMA` | A = NOT A | Complement Accumulator |
| `CMC` | `CMC` | Toggle Carry | Complement Carry |

---

## 🔹 Flag Register
| Flag | Name       | Trigger Condition | Mnemonic |
|------|------------|-------------------|----------|
| Z    | Zero       | Result = 0        | **Z**ero |
| CY   | Carry      | Arithmetic overflow | **C**arr**Y** |
| S    | Sign       | MSB=1 (Negative)  | **S**ign |
| P    | Parity     | Even # of set bits | **P**arity |
| AC   | Aux Carry  | Nibble overflow   | **A**ux **C**arry |

**Memory Trick:** "**Zero Carries Some Problems Always**" (Z, CY, S, P, AC)

---

## 🔹 Common Output Locations
1. **Accumulator (A)** - Primary result storage
2. **Memory (STA 2050H)** - Data storage
3. **Ports (OUT 01H)** - I/O operations

