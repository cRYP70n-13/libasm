section .text
    global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
    xor rax, rax

_while:
    cmp BYTE[rdi + rcx], 0
    je _return
    cmp BYTE[rsi + rcx], 0
    je _return
    mov dl, BYTE[rdi + rcx]
    cmp dl, BYTE[rsi + rcx]
    jne _return
    inc rcx
    jmp _while

_return:
    movzx rax, BYTE[rdi + rcx]
    movzx rbx, BYTE[rsi + rcx]
    sub rax, rbx
    ret