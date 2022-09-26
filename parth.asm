global main
extern printf
extern scanf

section .text
main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov eax, 0
	lea rdi, [strques]
	call printf

	mov eax, 0
	lea rdi, [strscn]
	lea rsi, [strprnt]
	call scanf

	mov eax, 0
	lea rdi, [strscp]
	lea rsi, [strprnt]
	call printf

	mov eax, 0
	lea rdi, [numques]
	call printf

	mov eax, 0
	lea rdi, [numscn]
	lea rsi, [numprnt]
	call scanf

	mov eax, 0
	lea rdi, [numscp]
	mov rsi, [numprnt]
	call printf

	add rsp, 16
	leave
	ret

section .data
	strques: db "Enter string: ", 10, 0
	numques: db "Enter number: ", 10, 0
	strscn: db "%s",0
	numscn: db "%d",0
	strscp: db "%s",10,0
	numscp: db "%d",10,0
section .bss
	strprnt resb 16
	numprnt resb 4
