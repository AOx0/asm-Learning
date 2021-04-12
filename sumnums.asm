global _main

section .data

	num1 equ 0x1
	num2 equ 0x2

section .text

_main:
	mov		rax, 0x2000001
	mov		rdi, 0
	add		rdi, num1
	add		rdi, num2

	syscall
