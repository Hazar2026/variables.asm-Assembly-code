section .text
        global _start

_start:
        mov eax, [var1]
        add eax, [var2]
        mov [result], eax

        mov eax,1
        int 0x80

segment .bss
        result resd 1

segment .data
        var1 dd 10
        var2 dd 15
