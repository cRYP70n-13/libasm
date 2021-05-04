section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx

_while:
	cmp		BYTE[rsi + rcx], 0
	je		_return
	mov		dl, BYTE[rsi + rcx]
	mov		BYTE[rdi + rcx], dl
	inc		rcx
	jmp		_while

_return:
	mov		BYTE[rdi + rcx], 0		; put '\0'
	mov		rax, rdi				; put dst in rax
	ret