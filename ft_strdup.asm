bits 64

extern malloc
extern ft_strlen
extern ft_strcpy

extern .data

extern .bss

extern .text
    global ft_strdup

ft_strdup:
    mov rbx, rdi ; copy the original string in constant register
    call ft_strlen ; get the length of the string to copy
    add rax, 1 ; adding +1 for '\0'
    mov rdi, rax
    call malloc ; call malloc with the size defined previously
    test rax, rax 
        jz error
    mov rdi, rax
    mov rsi, rbx
    call ft_strcpy
    mov rax, rdi
    ret

error:
    xor rax, rax
    ret


