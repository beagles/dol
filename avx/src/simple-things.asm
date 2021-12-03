; Simple math type operations. I'll leverage glibc for output
;


section .data
    message     db "Let's do some simple stuff!", 0
    fail_msg    db "Alloc failed", 0

section .text
    extern _puts, _printf
    global _main

_main:
        ; set up the frame
        push    rbp
        mov     rbp, rsp

        ; align
        sub     rsp, 16
        lea     rdi, [rel message]
        call    _puts
        add     rsp, 16

        ; cleanup
        mov     rsp, rbp
        pop     rbp
        ret

failed_alloc:
        sub     rsp, 16
        lea     rdi, [rel fail_msg]
        call    _puts
        add     rsp, 16
        mov     rax, 1
        pop     rbp
        ret

