bits 64

;  %rdi, %rsi, %rdx, %r10, %r8 and %r9
; extern ft_strlen

section .data
    ; s1 : db "a copier", 10, 0
    ; s2 : db "aaaaaaaa", 10, 0

section .bss

section .text
    global ft_strcpy
    ;global _start

ft_strcpy :
    mov al, al
    push rdi
    push rsi

loop :
    mov al, [rsi]
    cmp al, 0
        je end
    mov [rdi], al
    inc rsi
    inc rdi
    jmp loop

end :
    pop rsi
    pop rdi
    ret

; print :
;     mov rdi, rsi
;     call ft_strlen
;     mov rdx, rax
;     mov rax, 1
;     mov rdi, 1
;     syscall
;     ret

; _start :
;     mov rdi, s2
;     mov rsi, s1
;     call ft_strcpy
;     mov rbx, rdi
;     mov rbp, rsi
;     mov rsi, rbp
;     call print
;     mov rsi, rbp
;     call print
;     mov rax, 60
;     mov rdi, 0
;     syscall



