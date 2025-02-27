bits 64

extern ft_strlen

; section .data
;     str_ : db "aaaa", 0
;     base : db "123456789", 0

section .bss

section .text
    global _start
    global ft_atoi_base

ft_atoi_base:

valid_base:
    push rdi
    push rsi

    mov rdi, rsi
    
    call ft_strlen ; get base len
    
    cmp rax, 2
    jl error ; if base_len < 2
    
    mov rdi, rsi ; restore rdi
    mov rcx, rdi ; make a copy of rdi

loop_rdi:
    cmp byte [rdi + 1], 0
        je end_check
    mov rcx, rdi
    inc rcx
    jmp loop_rcx

loop_rcx:
    cmp byte [rcx], 0
        je back_to_rdi
    jmp is_valid
    
back_to_rdi:
    inc rdi
    jmp loop_rdi    


is_valid:
    mov al, [rdi]
    mov bl, [rcx]
    cmp bl, al
        je error
    cmp al, 43 ; compare if its '+'
        je error
    cmp bl, 43 ; compare if its '+'
        je error
    cmp al, 45 ; compare if its '-'
        je error
    cmp bl, 45 ; compare if its '-'
        je error
    cmp al, 32 ; compare if its lower or equal space
        jle error
    cmp bl, 32 ; compare if its lower or equal space
        jle error
    cmp al, 126 ; check if above ascii printable char
        jg error
    cmp bl, 126 ; check if above ascii printable char
        jg error
    inc rcx
    jmp loop_rcx
    

error:
    pop rsi
    pop rdi
    xor rax, rax
    ret

end_check:
    pop rsi
    pop rdi
    mov rax, 1
    ret

; _start:
;     mov rsi, str_
;     mov rdi, base
;     call ft_atoi_base
;     mov rdi, rax
;     mov rax, 60
;     syscall


