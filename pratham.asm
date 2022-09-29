global main
extern printf, scanf

section .data
	stringask: db "Enter the string: ",10, 0
	numbrask: db "Enter the number: ",10, 0
	scanA: db "%s", 0
	scanB: db "%d", 0

section .bss
	StringPrint resb 16
	NumberPrint resb 4

section .text
main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	xor eax,eax
        lea rdi, [stringask]
	call printf

	xor eax,eax
	lea rdi, [scanA]
	lea rsi, [StringPrint]
	call scanf

	xor eax,eax
	lea rdi, [scanA]
	lea rsi, [StringPrint]
	call printf

	xor eax,eax
	lea rdi, [numbrask]
	call printf

	xor eax,eax
	lea rdi, [scanB]
	lea rsi, [NumberPrint]
	call scanf

	xor eax,eax
	lea rdi, [scanB]
	mov rsi, [NumberPrint]
	call printf

	add rsp, 16
	leave
	ret

