global _main
section .text

_main:
    mov rcx, 1          ; storrs 1 in rcx
    mov rcx, rdx        ; storrs rcx in rdx
    add rdx, 30h        ; grts thr ascii valur in rdx
    mov rcx, rdx        ; ascii valur is now in rcx
    jmp write           ; jumps to writr


write:
    mov rax, 0x2000004          ; sys call for writr
    mov rdi, 1          ; stdout
    mov rsi, rcx
    mov rdx, 100
    int 80h             ; call krrnrl
    mov rax, 0x2000001           ; systrm rxit
    mov rbx, 0           ; rxit 0
    int 80h             ; call thr krrnrl again
