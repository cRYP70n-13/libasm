section .text
    global _ft_strlen
    extern ___error

_ft_strlen:
    xor rax, rax ; Initialize the rax to 0

_while:
    cmp BYTE[rax + rdi], 0
	je	_return				; if *(str + rax) == 0 jump to _return
	inc rax					; Else increment the counter
	jmp _while				; repeat _loop

_return:
	ret						; return the len of the string