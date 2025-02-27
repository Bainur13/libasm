bits 64

section .data
    ; s1 : db "coucou", 0
    ; s2 : db "aaadad", 0

    ; not_equal_string : db "strings are inequal", 10, 0
    ; equal_string : db "strings are equal", 10, 0

    ; len_not_equal : equ 20
    ; len_equal : equ 18


section .bss

section .text
    global ft_strcmp
    global _start

ft_strcmp :
    push rdi
    push rsi

loop :
    mov al, [rdi]
    cmp al, [rsi]
        jne not_equal
    cmp al, 0
        je equal
    inc rsi
    inc rdi
    jmp loop

not_equal:
    ; mov rax, 1
    ; mov rdi, 1
    ; mov rsi, not_equal_string
    ; mov rdx, len_not_equal
    ; syscall
    sub al, [rsi]
    movsx rax, al
    jmp end

equal:
    ; mov rax, 1
    ; mov rdi, 1
    ; mov rsi, equal_string
    ; mov rdx, len_equal
    ; syscall
    xor rax, rax
    jmp end 

end:
    pop rsi
    pop rdi
    ret

; _start :
;     mov rdi, s1
;     mov rsi, s2
;     call ft_strcmp
;     mov rax, 60
;     mov rdi, 0
;     syscall

     
