bits 64

;  %rdi, %rsi, %rdx, %r10, %r8 and %r9

section .data

section .bss

section .text
    global ft_strlen

ft_strlen :
    xor rcx, rcx

loop :
        mov al, [rdi]
        cmp al, 0
            je end
        inc rcx
        inc rdi
        jmp loop

end :
        mov rax, rcx
        ret
