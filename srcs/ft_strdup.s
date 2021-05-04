section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy

_ft_strdup:
    call _ft_strlen
    inc rax         ; Just to put the '\0' at the end of the string
    push rdi        ; Save the param
    mov rdi, rax
    call _malloc    ; Allocate memory for it
    cmp rax, 0      ; Check for any errors
    je _error
    mov rdi, rax
    pop rsi
    call _ft_strcpy
    ret

_error:
    ret