; Simple addition of two number with assembly
; Purpose is to figure out how to call, compile and link from C++ code.
section .text
global _sadd
_sadd:
        push    rbp
        mov     rbp, rsp
        mov     rax, rdi
        add     rax, rsi

        pop     rbp
        ret
