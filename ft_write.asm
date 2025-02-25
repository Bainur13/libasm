bits 64

section .data
    numb : db 5

section .bss

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1

    mov rdx, 2
    syscall
    mov rax, 60
    mov rsi, 0
    syscall
    