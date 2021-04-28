section .text
    global _ft_strlen
    extern ___error

_ft_strlen:
    xor rax, rax ; Initialize the rax to 0

_while:
    cmp BYTE[rax + rdi]