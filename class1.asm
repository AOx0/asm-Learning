global _main

section .data
    write           equ         0x2000004
    exit            equ         0x2000001
    stdout          equ         1
    exit_success    equ         0
    msg             db          "Hola Mundo!", 0xA
    msg_lenght      equ         $-msg

section .text

_main:
    mov         rax, write
    mov         rdi, stdout
    mov         rsi, msg
    mov         rdx, msg_lenght
    syscall

    mov         rax, exit
    mov         rdi, exit_success
    syscall
