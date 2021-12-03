; Simple hello world on a mac
; nasm -g -f macho64 hello-world.asm
; gcc -o hello-world hello-world.o # Using gcc here avoids some ld nonsense
;
global _main
section .text

_main:
    mov         rax, 0x02000004
    mov         rdi, 1
    mov         rsi, message
    mov         rdx, 13
    syscall
    mov         rax, 0x02000001
    xor         rdi, rdi
    syscall

    section .data
message:
    db          "Hello World", 10

