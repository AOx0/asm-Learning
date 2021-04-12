global _main

section .data

	exit		equ	0x2000001	; MacOS exit value
	write		equ 0x2000004	; MacOS write value


	num1		equ 0x1			; num1 = 1
	num2		equ 0x2			; num2 = 2

	msg			db "Los numeros son iguales", 0xA
	msg_len		equ $-msg		; msg lenght

	msg2		db "Los numeros no son iguales", 0xA
	msg_len2	equ $-msg2		; msg2 lenght

section .text

_main:
		mov 	rax, num1		; rax = 1
		cmp		rax, num2		; rax == 2 ?
		mov		rax, write		; rax = 0x2000004
		mov		rdi, $1 		; stdout
		je		print			; jump if equal (rax == 2 is True)

		mov		rsi, msg2		; write msg2
		mov		rdx, msg_len2	; of lenght..
		syscall

		jmp exitp				; exit

print:
		mov		rsi, msg		; write msg
		mov		rdx, msg_len	; of lenght..
		syscall

		jmp exitp				; exit

exitp:
		mov 	rax, exit		; rax = 0x2000001
		mov		rdi, $0			; exit status = 0 (rdi = 0)
		syscall
