section .data
    msg db      "hello, world", 0
    NL  db      0xa
section .bss
section .text
global main
main:
    push rbp
    mov rbp, rsp

    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 12
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, NL
    mov rdx, 1
    syscall
    mov rax, 60
    mov rdi, 0
    syscall

    mov rsp, rbp
    pop rbp

    ret
