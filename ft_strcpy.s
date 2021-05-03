section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx 					; Just a counter set to 0

_while:
	cmp		BYTE[rsi + rcx], 0		; check *(s + rcx) Is NULL '\0'
	je		_return					; if yes, jump _return
	mov		dl, BYTE[rsi + rcx]		; else, copy character in dst into dl
	mov		BYTE[rdi + rcx], dl		; copy character in dl into s
	inc		rcx						; counter++
	jmp		_while					; repeat loop

_return:
	mov		BYTE[rdi + rcx], 0		; put '\0' at end of dst
	mov		rax, rdi				; put dst in rax
	ret								; return of function (rax)