; AOx0

global _main

section .data
    msg   db    "Suma: ", 0xA
    msg_l equ   $-msg

section .text

    _main:
        mov     rax, 0x2000004
        mov     rdi, 1
        mov     rsi, msg
        mov     rdx, msg_l
        syscall

        mov     rax, 0x2000001
        mov     rdi, 0
        syscall
