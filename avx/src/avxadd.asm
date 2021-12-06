; Simple addition of two arrays of integers
section .text
global _avxadd, _avxdiv

_avxadd:
        push            rbp                     ; I don't think these are
                                                ; necessary. The callee is
                                                ; supposedly responsible for this
        mov             rbp, rsp

        vzeroall                                ; zero all the registers
                                                ; this probably is redundant
                                                ; it might help catch errors
                                                ; while debugging, but I suspect
                                                ; in this case it's a waste of
                                                ; cycles

        vmovups         ymm0, [rdi]             ; move 1st argument to ymm0
        vmovups         ymm1, [rsi]             ; move 2nd argument to ymm1

        vaddps          ymm2, ymm0, ymm1        ; add 1st and 2nd arguments,
                                                ; putting result in ymm2

        vmovups         [rdx], ymm2             ; store the result in array that
                                                ; is the 3rd argument

        pop     rbp
        ret


_avxdiv:
        push            rbp
        mov             rbp, rsp
        vzeroall
        vmovups         ymm0, [rdi]
        vmovups         ymm1, [rsi]
        vdivps          ymm2, ymm0, ymm1
        vmovups         [rdx], ymm2

        pop     rbp
        ret

