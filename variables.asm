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
