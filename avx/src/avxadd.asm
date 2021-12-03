; Simple addition of two arrays of integers 
section .text
global _avxadd
_avxadd:
        push            rbp
        mov             rbp, rsp
        vzeroall
        vmovups         ymm0, [rdi]
        vmovups         ymm1, [rsi]
        vaddps          ymm2, ymm0, ymm1
        vmovups         [rdx], ymm2

        pop     rbp
        ret
