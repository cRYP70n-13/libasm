section .text
	global _ft_write
	extern ___error

_ft_write:
	mov rax, 0x2000004
	syscall
	jc _err
	ret

_err:
	push rax
	call ___error ; Return the int * (Errno Address)
	pop rcx
	mov QWORD[rax], rcx
	mov rax, -1
	ret
