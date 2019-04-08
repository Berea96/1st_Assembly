section .data
	message db "Hello World in Assembly on linux"

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov r10, 1
	mov rsi, message
	mov rdx, 63
	syscall

gugudan:
	cmp r10, 10
	je done
	syscall
	mov rax, 1
	inc r10
	jmp gugudan

done:
	mov rax, 60
	mov rdi, 0
	syscall
