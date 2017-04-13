# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "-S -o tsc_s112.s -std=c11 -fno-inline-functions";
	.file "tsc_s112.c"
	.text
..TXTST0:
# -- Begin  s112
	.text
# mark_begin;
       .align    16,0x90
	.globl s112
# --- s112()
s112:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s112.1:
..L2:
                                                          #4.1
        pushq     %rbx                                          #4.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #4.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #4.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.0, %edi                         #12.2
..___tag_value_s112.8:
#       init(char *)
        call      init                                          #12.2
..___tag_value_s112.9:
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #13.12
                                # LOE rax rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbp                                    #13.12
                                # LOE rbx rbp r12 r13 r14 r15
..B1.3:                         # Preds ..B1.14
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #15.14
        movl      %eax, %ebx                                    #15.14
                                # LOE rbp r12 r13 r14 r15 ebx
..B1.4:                         # Preds ..B1.7 ..B1.3
                                # Execution count [1.99e+05]
        xorl      %ecx, %ecx                                    #17.3
        xorl      %edx, %edx                                    #17.3
                                # LOE rdx rbp r12 r13 r14 r15 ecx ebx
..B1.5:                         # Preds ..B1.5 ..B1.4
                                # Execution count [3.17e+09]
        movss     127992+a(%rdx), %xmm0                         #18.13
        incl      %ecx                                          #17.3
        movss     127988+a(%rdx), %xmm1                         #18.13
        addss     127992+b(%rdx), %xmm0                         #18.20
        addss     127988+b(%rdx), %xmm1                         #18.20
        movss     %xmm0, 127996+a(%rdx)                         #18.4
        movss     %xmm1, 127992+a(%rdx)                         #18.4
        addq      $-8, %rdx                                     #17.3
        cmpl      $15999, %ecx                                  #17.3
        jb        ..B1.5        # Prob 99%                      #17.3
                                # LOE rdx rbp r12 r13 r14 r15 ecx ebx
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.99e+05]
        movss     a(%rip), %xmm0                                #18.13
        movl      $a, %edi                                      #20.3
        pushq     $cc                                           #20.3
	.cfi_def_cfa_offset 40
        movl      $b, %esi                                      #20.3
        movl      $c, %edx                                      #20.3
        movl      $d, %ecx                                      #20.3
        movl      $e, %r8d                                      #20.3
        movl      $aa, %r9d                                     #20.3
        addss     b(%rip), %xmm0                                #18.20
        movss     %xmm0, 4+a(%rip)                              #18.4
        pxor      %xmm0, %xmm0                                  #20.3
        pushq     $bb                                           #20.3
	.cfi_def_cfa_offset 48
..___tag_value_s112.12:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #20.3
..___tag_value_s112.13:
                                # LOE rbp r12 r13 r14 r15 ebx
..B1.15:                        # Preds ..B1.6
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #20.3
	.cfi_def_cfa_offset 32
                                # LOE rbp r12 r13 r14 r15 ebx
..B1.7:                         # Preds ..B1.15
                                # Execution count [1.99e+05]
        incl      %ebx                                          #15.32
        cmpl      $200000, %ebx                                 #15.24
        jl        ..B1.4        # Prob 99%                      #15.24
                                # LOE rbp r12 r13 r14 r15 ebx
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #22.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        subq      %rbp, %rax                                    #24.2
        pxor      %xmm0, %xmm0                                  #24.2
        cvtsi2sdq %rax, %xmm0                                   #24.2
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #24.2
        movl      $.L_2__STRING.1, %edi                         #24.2
        movl      $1, %eax                                      #24.2
..___tag_value_s112.15:
#       printf(const char *__restrict__, ...)
        call      printf                                        #24.2
..___tag_value_s112.16:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        movl      $1, %edi                                      #25.2
..___tag_value_s112.17:
#       check(int)
        call      check                                         #25.2
..___tag_value_s112.18:
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #26.9
        popq      %rcx                                          #26.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #26.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #26.9
	.cfi_def_cfa_offset 8
        ret                                                     #26.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	s112,@function
	.size	s112,.-s112
	.data
# -- End  s112
	.section .rodata, "a"
	.align 8
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	842084723
	.word	32
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	842084691
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,14
	.data
	.comm X,128000,32
	.comm Y,128000,32
	.comm Z,128000,32
	.comm U,128000,32
	.comm V,128000,32
	.comm array,129600,32
	.comm x,128000,32
	.comm temp,4,4
	.comm temp_int,4,4
	.comm a,128000,32
	.comm b,128000,32
	.comm c,128000,32
	.comm d,128000,32
	.comm e,128000,32
	.comm aa,129600,32
	.comm bb,129600,32
	.comm cc,129600,32
	.comm tt,129600,32
	.comm indx,128000,32
	.comm xx,8,8
	.comm yy,8,8
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
