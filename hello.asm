;       AOx0        2021 - 03 - 15

global _main

section .text

    _main:
        mov         rax, 0x2000004  ; sys call
        mov         rdi, 1
        mov         rsi, message
        mov         rdx, 12
        syscall

        mov         rax, 0x2000001  ; sys call exit
        xor         rdi, rdi
        syscall


section .data
    message: db "Hola amigo!", 0xA
