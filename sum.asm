section .data
	num1	equ		0xA
	num2	equ		0xA

	msg		db		"El resultado es = %d", 0xA, 0

section .text

	global _main
	extern _printf

	_main:
		mov 	r10, num1
		add		r10, num2
		jmp		printResult

	printResult:
		push    rbp                 ; re-aligns the stack by 16 before call
		mov     rbp, rsp

		xor     eax, eax            ; al = 0 FP args in XMM regs
		lea     rdi, [rel msg]
		mov		rsi, r10			; First argument %d value is rdi
		call    _printf

		mov     rsp, rbp
		pop     rbp
		ret
