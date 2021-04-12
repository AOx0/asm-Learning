default rel             ; make [rel msg] the default for [msg]
section .data
    msg:  db 'This is a test %d', 10, 0    ; something stupid here

section .text
    global _main
    extern _printf

_main:
    push    rbp                 ; re-aligns the stack by 16 before call
    mov     rbp, rsp
	mov		r10, 0xAA			; r10 = 0xAA

    xor     eax, eax            ; al = 0 FP args in XMM regs
    lea     rdi, [rel msg]
	mov		rsi, r10			; First argument %d value
    call    _printf

    mov     rsp, rbp
    pop     rbp
    ret
