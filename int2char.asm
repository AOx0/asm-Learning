global _main

section .data

	ic			db 0
	iclen		equ $-ic

section .text

_main:
		mov		rdi, $10
		add		rdi, $10
		add		rdi, $48
		mov		[ic], 's'

		mov		rax, 0x2000004
		mov		rdi, 0x1
		mov		rsi, ic
		mov		rdx, iclen
		syscall

		jmp		exit

exit:
		mov		rax, 0x2000001
		mov		rdi, $0
		syscall
