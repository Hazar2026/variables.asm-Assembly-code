# Variables and Constants

## Objective

The objective of this activity is to learn how to declare and use initialized and uninitialized variables in Assembly language.

## Program Description

This program assigns the value 10 to `var1` and the value 15 to `var2`. It adds both variables together and stores the sum in the uninitialized variable `result`.

The final value stored in `result` should be:

```text
25
```

## Flowchart

<img width="478" height="707" alt="Screenshot 2026-06-28 231205" src="https://github.com/user-attachments/assets/9bd1abad-718a-4d36-a296-0b506fd59887" />


## Challenges Encountered

One challenge I encountered was understanding the difference between initialized and uninitialized variables. Initialized variables are placed in the `.data` segment because they already have values. The `result` variable is placed in the `.bss` segment because it does not have a starting value. Another challenge was understanding how to move values into registers, add them, and store the answer back into memory.

## Assembly Code

```asm
section .text
        global _start

_start:
        ; load var1 into eax
        mov eax, [var1]

        ; add var2 to eax
        add eax, [var2]

        ; store the answer in result
        mov [result], eax

        mov eax,1      ; set eax register to 1 (do not remove this line)
        int 0x80       ; interrupt 0x80 (do not remove this line)

segment .bss
        result resd 1  ; uninitialized variable for result

segment .data
        var1 dd 10     ; initialized variable
        var2 dd 15     ; initialized variable
```

## How to Compile and Run

```bash
nasm -f elf32 variables.asm -o variables.o
ld -m elf_i386 variables.o -o variables
./variables
```

## Expected Result

No output appears when the program runs successfully. The result must be checked using `gdb`.

The value of `result` should be:

```text
25
```

## Conclusion

This activity helped me understand how variables are declared in Assembly language, how values are loaded into registers, how addition is performed, and how the result is stored back into memory.
