# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "-S -o tsc.s -std=c11 -fno-inline-functions";
	.file "tsc.c"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main()
main:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #290.11
        pushq     %rbp                                          #290.11
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #290.11
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #290.11
        pushq     %r12                                          #290.11
        subq      $120, %rsp                                    #290.11
        xorl      %esi, %esi                                    #290.11
        movl      $3, %edi                                      #290.11
        call      __intel_new_feature_proc_init                 #290.11
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx r13 r14 r15
..B1.19:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #290.11
        movl      $16, %edi                                     #294.20
        movl      $128000, %esi                                 #294.20
        orl       $32832, (%rsp)                                #290.11
        ldmxcsr   (%rsp)                                        #290.11
#       memalign(size_t, size_t)
        call      memalign                                      #294.20
                                # LOE rax rbx r13 r14 r15
..B1.2:                         # Preds ..B1.19
                                # Execution count [1.00e+00]
        movq      %rax, %rdi                                    #296.2
        lea       (%rsp), %rsi                                  #296.2
        lea       4(%rsp), %rdx                                 #296.2
..___tag_value_main.7:
#       set(int *, float *, float *)
        call      set                                           #296.2
..___tag_value_main.8:
                                # LOE rbx r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_0, %edi               #297.2
        call      puts                                          #297.2
                                # LOE rbx r13 r14 r15
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #299.12
                                # LOE rax rbx r13 r14 r15
..B1.20:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #299.12
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.20
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_1, %edi               #301.2
        call      puts                                          #301.2
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        movss     (%rsp), %xmm0                                 #302.2
        movss     4(%rsp), %xmm1                                #302.2
..___tag_value_main.9:
#       s242(float, float)
        call      s242                                          #302.2
..___tag_value_main.10:
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
..___tag_value_main.11:
#       s2275()
        call      s2275                                         #303.2
..___tag_value_main.12:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_2, %edi               #306.2
        call      puts                                          #306.2
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #307.2
..___tag_value_main.13:
#       s112()
        call      s112                                          #307.2
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_3, %edi               #310.2
        call      puts                                          #310.2
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
..___tag_value_main.15:
#       s312()
        call      s312                                          #311.2
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
..___tag_value_main.17:
#       s317()
        call      s317                                          #312.2
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #314.10
                                # LOE rax rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        subq      %r12, %rax                                    #316.2
        pxor      %xmm0, %xmm0                                  #316.2
        cvtsi2sdq %rax, %xmm0                                   #316.2
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #316.2
        movl      $.L_2__STRING.15, %edi                        #316.2
        movl      $1, %eax                                      #316.2
..___tag_value_main.19:
#       printf(const char *__restrict__, ...)
        call      printf                                        #316.2
..___tag_value_main.20:
                                # LOE rbx r13 r14 r15
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #318.9
        addq      $120, %rsp                                    #318.9
	.cfi_restore 12
        popq      %r12                                          #318.9
        movq      %rbp, %rsp                                    #318.9
        popq      %rbp                                          #318.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #318.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_0:
	.long	1886351180
	.long	1411385632
	.long	677735785
	.long	694379859
	.long	1126172960
	.long	1801676136
	.long	544044403
	.byte	0
	.space 3, 0x00 	# pad
	.align 4
il0_peep_printf_format_1:
	.long	544370502
	.long	977486665
	.byte	0
	.space 3, 0x00 	# pad
	.align 4
il0_peep_printf_format_2:
	.long	544370502
	.long	977486663
	.byte	0
	.space 3, 0x00 	# pad
	.align 4
il0_peep_printf_format_3:
	.long	544370502
	.long	1297501260
	.word	58
	.data
# -- End  main
	.text
# -- Begin  set
	.text
# mark_begin;
       .align    16,0x90
	.globl set
# --- set(int *, float *, float *)
set:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set.25:
..L26:
                                                         #128.40
        pushq     %r12                                          #128.40
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #128.40
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #128.40
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        movq      %rsi, %r12                                    #128.40
        movq      %rdi, %r13                                    #128.40
        movl      $16, %edi                                     #129.16
        movl      $128000, %esi                                 #129.16
        movq      %rdx, %r14                                    #128.40
#       memalign(size_t, size_t)
        call      memalign                                      #129.16
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        movl      $10, %edi                                     #130.2
        movq      %rax, xx(%rip)                                #129.2
        call      putchar                                       #130.2
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2
                                # Execution count [1.00e+00]
        xorl      %edx, %edx                                    #131.2
        xorl      %eax, %eax                                    #131.2
        .align    16,0x90
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.4:                         # Preds ..B2.4 ..B2.3
                                # Execution count [3.20e+03]
        movslq    %eax, %rax                                    #132.3
        incl      %edx                                          #131.2
        lea       4(%rax), %ecx                                 #132.14
        lea       2(%rax), %esi                                 #133.16
        lea       3(%rax), %edi                                 #135.16
        movl      %ecx, (%r13,%rax,4)                           #132.3
        lea       1(%rax), %r8d                                 #136.16
        movl      %esi, 4(%r13,%rax,4)                          #133.3
        lea       9(%rax), %r9d                                 #132.14
        movl      %eax, 8(%r13,%rax,4)                          #134.3
        lea       7(%rax), %r10d                                #133.16
        movl      %edi, 12(%r13,%rax,4)                         #135.3
        lea       5(%rax), %r11d                                #132.3
        movl      %r8d, 16(%r13,%rax,4)                         #136.3
        lea       8(%rax), %ecx                                 #135.16
        movl      %r9d, 20(%r13,%rax,4)                         #132.3
        lea       6(%rax), %esi                                 #136.16
        movl      %r10d, 24(%r13,%rax,4)                        #133.3
        movl      %r11d, 28(%r13,%rax,4)                        #134.3
        movl      %ecx, 32(%r13,%rax,4)                         #135.3
        movl      %esi, 36(%r13,%rax,4)                         #136.3
        addl      $10, %eax                                     #131.2
        cmpl      $3200, %edx                                   #131.2
        jb        ..B2.4        # Prob 99%                      #131.2
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.5:                         # Preds ..B2.4
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #140.2
        movl      $a, %edi                                      #140.2
        movl      $1, %esi                                      #140.2
..___tag_value_set.33:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #140.2
..___tag_value_set.34:
                                # LOE rbx rbp r12 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #141.2
        movl      $b, %edi                                      #141.2
        movl      $1, %esi                                      #141.2
..___tag_value_set.35:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #141.2
..___tag_value_set.36:
                                # LOE rbx rbp r12 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #142.2
        movl      $c, %edi                                      #142.2
        movl      $1, %esi                                      #142.2
..___tag_value_set.37:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #142.2
..___tag_value_set.38:
                                # LOE rbx rbp r12 r14 r15
..B2.8:                         # Preds ..B2.7
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #143.2
        movl      $d, %edi                                      #143.2
        movl      $1, %esi                                      #143.2
..___tag_value_set.39:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #143.2
..___tag_value_set.40:
                                # LOE rbx rbp r12 r14 r15
..B2.9:                         # Preds ..B2.8
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #144.2
        movl      $e, %edi                                      #144.2
        movl      $1, %esi                                      #144.2
..___tag_value_set.41:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #144.2
..___tag_value_set.42:
                                # LOE rbx rbp r12 r14 r15
..B2.10:                        # Preds ..B2.9
                                # Execution count [1.00e+00]
        movl      $aa, %edi                                     #145.2
        movl      $-1, %esi                                     #145.2
        pxor      %xmm0, %xmm0                                  #145.2
..___tag_value_set.43:
#       set2d..0(float (*)[180], float, int)
        call      set2d..0                                      #145.2
..___tag_value_set.44:
                                # LOE rbx rbp r12 r14 r15
..B2.11:                        # Preds ..B2.10
                                # Execution count [1.00e+00]
        movl      $bb, %edi                                     #146.2
        movl      $-1, %esi                                     #146.2
        pxor      %xmm0, %xmm0                                  #146.2
..___tag_value_set.45:
#       set2d..0(float (*)[180], float, int)
        call      set2d..0                                      #146.2
..___tag_value_set.46:
                                # LOE rbx rbp r12 r14 r15
..B2.12:                        # Preds ..B2.11
                                # Execution count [1.00e+00]
        movl      $cc, %edi                                     #147.2
        movl      $-1, %esi                                     #147.2
        pxor      %xmm0, %xmm0                                  #147.2
..___tag_value_set.47:
#       set2d..0(float (*)[180], float, int)
        call      set2d..0                                      #147.2
..___tag_value_set.48:
                                # LOE rbx rbp r12 r14 r15
..B2.13:                        # Preds ..B2.12
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #149.13
                                # LOE rax rbx rbp r12 r14 r15
..B2.14:                        # Preds ..B2.14 ..B2.13
                                # Execution count [3.20e+04]
        movl      %eax, %edx                                    #150.3
        incl      %edx                                          #150.16
        andl      $3, %edx                                      #150.21
        incl      %edx                                          #150.23
        movl      %edx, indx(,%rax,4)                           #150.3
        incq      %rax                                          #149.27
        cmpq      $32000, %rax                                  #149.22
        jl        ..B2.14       # Prob 99%                      #149.22
                                # LOE rax rbx rbp r12 r14 r15
..B2.15:                        # Preds ..B2.14
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #152.3
        movss     %xmm0, (%r12)                                 #152.3
        movl      $1073741824, (%r14)                           #153.3
	.cfi_restore 14
        popq      %r14                                          #155.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #155.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #155.1
	.cfi_def_cfa_offset 8
        ret                                                     #155.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	set,@function
	.size	set,.-set
	.data
# -- End  set
	.text
# -- Begin  set2d..0
	.text
# mark_begin;
       .align    16,0x90
# --- set2d..0(float (*)[180], float, int)
set2d..0:
# parameter 1: %rdi
# parameter 2: %xmm0
# parameter 3: %esi
..B3.1:                         # Preds ..B3.0
                                # Execution count [3.34e-01]
	.cfi_startproc
..___tag_value_set2d..0.56:
..L57:
                                                         #24.1
        movq      %rdi, %r8                                     #24.1
        xorl      %edi, %edi                                    #29.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 edi
..B3.2:                         # Preds ..B3.19 ..B3.1
                                # Execution count [6.00e+01]
        movq      %r8, %rdx                                     #30.4
        andq      $15, %rdx                                     #30.4
        testl     %edx, %edx                                    #30.4
        je        ..B3.7        # Prob 50%                      #30.4
                                # LOE rbx rbp r8 r12 r13 r14 r15 edx edi
..B3.3:                         # Preds ..B3.2
                                # Execution count [6.00e+01]
        testb     $3, %dl                                       #30.4
        jne       ..B3.21       # Prob 10%                      #30.4
                                # LOE rbx rbp r8 r12 r13 r14 r15 edx edi
..B3.4:                         # Preds ..B3.3
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #31.33
        lea       1(%rdi), %esi                                 #31.33
        cvtsi2ss  %esi, %xmm1                                   #31.33
        negl      %edx                                          #30.4
        xorl      %ecx, %ecx                                    #30.4
        addl      $16, %edx                                     #30.4
        shrl      $2, %edx                                      #30.4
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #31.33
        movl      %edx, %eax                                    #30.4
        divss     %xmm1, %xmm0                                  #31.33
                                # LOE rax rcx rbx rbp r8 r12 r13 r14 r15 edx edi xmm0
..B3.5:                         # Preds ..B3.5 ..B3.4
                                # Execution count [1.08e+04]
        movss     %xmm0, (%r8,%rcx,4)                           #31.5
        incq      %rcx                                          #30.4
        cmpq      %rax, %rcx                                    #30.4
        jb        ..B3.5        # Prob 99%                      #30.4
        jmp       ..B3.8        # Prob 100%                     #30.4
                                # LOE rax rcx rbx rbp r8 r12 r13 r14 r15 edx edi xmm0
..B3.7:                         # Preds ..B3.2
                                # Execution count [3.00e+01]
        pxor      %xmm1, %xmm1                                  #31.33
        lea       1(%rdi), %ecx                                 #31.33
        cvtsi2ss  %ecx, %xmm1                                   #31.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #31.33
        xorl      %eax, %eax                                    #30.4
        divss     %xmm1, %xmm0                                  #31.33
                                # LOE rax rbx rbp r8 r12 r13 r14 r15 edx edi xmm0
..B3.8:                         # Preds ..B3.5 ..B3.7
                                # Execution count [6.00e+01]
        negl      %edx                                          #30.4
        lea       (%r8,%rax,4), %r9                             #30.4
        addl      $4, %edx                                      #30.4
        andl      $7, %edx                                      #30.4
        negl      %edx                                          #30.4
        shufps    $0, %xmm0, %xmm0                              #31.33
        lea       180(%rdx), %ecx                               #30.4
        movl      %ecx, %esi                                    #30.4
                                # LOE rax rbx rbp rsi r8 r9 r12 r13 r14 r15 edx ecx edi xmm0
..B3.9:                         # Preds ..B3.9 ..B3.8
                                # Execution count [1.08e+04]
        addq      $8, %rax                                      #30.4
        movups    %xmm0, (%r9)                                  #31.5
        movups    %xmm0, 16(%r9)                                #31.5
        addq      $32, %r9                                      #30.4
        cmpq      %rsi, %rax                                    #30.4
        jb        ..B3.9        # Prob 99%                      #30.4
                                # LOE rax rbx rbp rsi r8 r9 r12 r13 r14 r15 edx ecx edi xmm0
..B3.10:                        # Preds ..B3.9
                                # Execution count [6.00e+01]
        addl      $181, %edx                                    #30.4
        cmpl      $180, %edx                                    #30.4
        ja        ..B3.19       # Prob 50%                      #30.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm0
..B3.11:                        # Preds ..B3.10
                                # Execution count [6.00e+01]
        movl      %ecx, %edx                                    #30.4
        negl      %edx                                          #30.4
        addl      $180, %edx                                    #30.4
        cmpl      $4, %edx                                      #30.4
        jb        ..B3.22       # Prob 10%                      #30.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 edx ecx edi xmm0
..B3.12:                        # Preds ..B3.11
                                # Execution count [6.00e+01]
        movl      %edx, %eax                                    #30.4
        xorl      %r9d, %r9d                                    #30.4
        andl      $-4, %eax                                     #30.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 eax edx ecx edi r9d xmm0
..B3.13:                        # Preds ..B3.13 ..B3.12
                                # Execution count [1.08e+04]
        addl      $4, %r9d                                      #30.4
        movups    %xmm0, (%r8,%rsi,4)                           #31.5
        addq      $4, %rsi                                      #30.4
        cmpl      %eax, %r9d                                    #30.4
        jb        ..B3.13       # Prob 99%                      #30.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 eax edx ecx edi r9d xmm0
..B3.15:                        # Preds ..B3.13 ..B3.22 ..B3.21
                                # Execution count [6.00e+01]
        addl      %eax, %ecx                                    #30.4
        movslq    %ecx, %rcx                                    #30.4
        cmpl      %edx, %eax                                    #30.4
        jae       ..B3.19       # Prob 0%                       #30.4
                                # LOE rcx rbx rbp r8 r12 r13 r14 r15 eax edx edi
..B3.16:                        # Preds ..B3.15
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #31.33
        lea       1(%rdi), %esi                                 #31.33
        cvtsi2ss  %esi, %xmm1                                   #31.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #31.33
        divss     %xmm1, %xmm0                                  #31.33
                                # LOE rcx rbx rbp r8 r12 r13 r14 r15 eax edx edi xmm0
..B3.17:                        # Preds ..B3.17 ..B3.16
                                # Execution count [1.08e+04]
        incl      %eax                                          #30.4
        movss     %xmm0, (%r8,%rcx,4)                           #31.5
        incq      %rcx                                          #30.4
        cmpl      %edx, %eax                                    #30.4
        jb        ..B3.17       # Prob 99%                      #30.4
                                # LOE rcx rbx rbp r8 r12 r13 r14 r15 eax edx edi xmm0
..B3.19:                        # Preds ..B3.17 ..B3.15 ..B3.10
                                # Execution count [6.00e+01]
        incl      %edi                                          #29.3
        addq      $720, %r8                                     #29.3
        cmpl      $180, %edi                                    #29.3
        jb        ..B3.2        # Prob 99%                      #29.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 edi
..B3.20:                        # Preds ..B3.19
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #47.9
        ret                                                     #47.9
                                # LOE
..B3.21:                        # Preds ..B3.3
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #30.4
        movl      $180, %edx                                    #30.4
        xorl      %eax, %eax                                    #30.4
        jmp       ..B3.15       # Prob 100%                     #30.4
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax edx ecx edi
..B3.22:                        # Preds ..B3.11
                                # Execution count [6.00e+00]: Infreq
        xorl      %eax, %eax                                    #30.4
        jmp       ..B3.15       # Prob 100%                     #30.4
        .align    16,0x90
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax edx ecx edi
	.cfi_endproc
# mark_end;
	.type	set2d..0,@function
	.size	set2d..0,.-set2d..0
	.data
# -- End  set2d..0
	.text
# -- Begin  s242
	.text
# mark_begin;
       .align    16,0x90
	.globl s242
# --- s242(float, float)
s242:
# parameter 1: %xmm0
# parameter 2: %xmm1
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s242.59:
..L60:
                                                         #160.1
        pushq     %rbx                                          #160.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #160.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        subq      $24, %rsp                                     #160.1
	.cfi_def_cfa_offset 48
        movl      $.L_2__STRING.3, %edi                         #167.2
        movss     %xmm1, (%rsp)                                 #167.2[spill]
        movss     %xmm0, 8(%rsp)                                #167.2[spill]
..___tag_value_s242.66:
#       init(char *)
        call      init                                          #167.2
..___tag_value_s242.67:
                                # LOE rbp r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #168.12
                                # LOE rax rbp r12 r13 r14 r15
..B4.16:                        # Preds ..B4.2
                                # Execution count [1.00e+00]
        movss     8(%rsp), %xmm0                                #[spill]
        movq      %rax, %rbx                                    #168.12
        movss     (%rsp), %xmm1                                 #[spill]
                                # LOE rbx rbp r12 r13 r14 r15 xmm0 xmm1
..B4.3:                         # Preds ..B4.16
                                # Execution count [1.22e+02]
        xorl      %eax, %eax                                    #170.14
        addss     %xmm1, %xmm0                                  #172.22
        movss     %xmm0, 8(%rsp)                                #172.22[spill]
        movl      %eax, %ebp                                    #172.22
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.4:                         # Preds ..B4.9 ..B4.3
                                # Execution count [1.99e+05]
        movss     8(%rsp), %xmm1                                #171.3[spill]
        xorl      %ecx, %ecx                                    #171.3
        xorl      %edx, %edx                                    #171.3
                                # LOE rdx rbx r12 r13 r14 r15 ecx ebp xmm1
..B4.5:                         # Preds ..B4.5 ..B4.4
                                # Execution count [1.59e+09]
        movss     a(%rdx), %xmm0                                #172.11
        incl      %ecx                                          #171.3
        addss     %xmm1, %xmm0                                  #172.27
        addss     4+b(%rdx), %xmm0                              #172.32
        addss     4+c(%rdx), %xmm0                              #172.39
        addss     4+d(%rdx), %xmm0                              #172.46
        movss     %xmm0, 4+a(%rdx)                              #172.4
        addss     %xmm1, %xmm0                                  #172.27
        addss     8+b(%rdx), %xmm0                              #172.32
        addss     8+c(%rdx), %xmm0                              #172.39
        addss     8+d(%rdx), %xmm0                              #172.46
        movss     %xmm0, 8+a(%rdx)                              #172.4
        addss     %xmm1, %xmm0                                  #172.27
        addss     12+b(%rdx), %xmm0                             #172.32
        addss     12+c(%rdx), %xmm0                             #172.39
        addss     12+d(%rdx), %xmm0                             #172.46
        movss     %xmm0, 12+a(%rdx)                             #172.4
        addss     %xmm1, %xmm0                                  #172.27
        addss     16+b(%rdx), %xmm0                             #172.32
        addss     16+c(%rdx), %xmm0                             #172.39
        addss     16+d(%rdx), %xmm0                             #172.46
        movss     %xmm0, 16+a(%rdx)                             #172.4
        addq      $16, %rdx                                     #171.3
        cmpl      $7999, %ecx                                   #171.3
        jb        ..B4.5        # Prob 99%                      #171.3
                                # LOE rdx rbx r12 r13 r14 r15 ecx ebp xmm1
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.99e+05]
        movss     8(%rsp), %xmm1                                #171.3[spill]
        movl      $31996, %edx                                  #171.3
                                # LOE rdx rbx r12 r13 r14 r15 ebp xmm1
..B4.7:                         # Preds ..B4.7 ..B4.6
                                # Execution count [5.96e+05]
        movss     a(,%rdx,4), %xmm0                             #172.11
        addss     %xmm1, %xmm0                                  #172.27
        addss     4+b(,%rdx,4), %xmm0                           #172.32
        addss     4+c(,%rdx,4), %xmm0                           #172.39
        addss     4+d(,%rdx,4), %xmm0                           #172.46
        movss     %xmm0, 4+a(,%rdx,4)                           #172.4
        incq      %rdx                                          #171.3
        cmpq      $31999, %rdx                                  #171.3
        jb        ..B4.7        # Prob 66%                      #171.3
                                # LOE rdx rbx r12 r13 r14 r15 ebp xmm1
..B4.8:                         # Preds ..B4.7
                                # Execution count [1.99e+05]
        pushq     $cc                                           #174.3
	.cfi_def_cfa_offset 56
        movl      $a, %edi                                      #174.3
        movl      $b, %esi                                      #174.3
        movl      $c, %edx                                      #174.3
        movl      $d, %ecx                                      #174.3
        movl      $e, %r8d                                      #174.3
        movl      $aa, %r9d                                     #174.3
        pxor      %xmm0, %xmm0                                  #174.3
        pushq     $bb                                           #174.3
	.cfi_def_cfa_offset 64
..___tag_value_s242.70:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #174.3
..___tag_value_s242.71:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.17:                        # Preds ..B4.8
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #174.3
	.cfi_def_cfa_offset 48
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.9:                         # Preds ..B4.17
                                # Execution count [1.99e+05]
        incl      %ebp                                          #170.32
        cmpl      $200000, %ebp                                 #170.24
        jl        ..B4.4        # Prob 99%                      #170.24
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.10:                        # Preds ..B4.9
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #176.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B4.11:                        # Preds ..B4.10
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #178.2
        pxor      %xmm0, %xmm0                                  #178.2
        cvtsi2sdq %rax, %xmm0                                   #178.2
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #178.2
        movl      $.L_2__STRING.5, %edi                         #178.2
        movl      $1, %eax                                      #178.2
..___tag_value_s242.73:
#       printf(const char *__restrict__, ...)
        call      printf                                        #178.2
..___tag_value_s242.74:
                                # LOE rbp r12 r13 r14 r15
..B4.12:                        # Preds ..B4.11
                                # Execution count [1.00e+00]
        movl      $1, %edi                                      #179.2
..___tag_value_s242.75:
#       check..0(int)
        call      check..0                                      #179.2
..___tag_value_s242.76:
                                # LOE rbp r12 r13 r14 r15
..B4.13:                        # Preds ..B4.12
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #180.9
        addq      $24, %rsp                                     #180.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #180.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #180.9
	.cfi_def_cfa_offset 8
        ret                                                     #180.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	s242,@function
	.size	s242,.-s242
	.data
# -- End  s242
	.text
# -- Begin  check..0
	.text
# mark_begin;
       .align    16,0x90
# --- check..0(int)
check..0:
# parameter 1: %edi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check..0.83:
..L84:
                                                         #50.21
        pushq     %rsi                                          #50.21
	.cfi_def_cfa_offset 16
        xorl      %eax, %eax                                    #57.2
        pxor      %xmm7, %xmm7                                  #52.13
        movaps    %xmm7, %xmm6                                  #52.13
        movaps    %xmm7, %xmm5                                  #52.13
        movaps    %xmm7, %xmm4                                  #52.13
        movaps    %xmm7, %xmm3                                  #52.13
        movaps    %xmm7, %xmm2                                  #52.13
        movaps    %xmm7, %xmm1                                  #52.13
        movaps    %xmm7, %xmm0                                  #52.13
        .align    16,0x90
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.2:                         # Preds ..B5.2 ..B5.1
                                # Execution count [3.20e+04]
        addps     a(,%rax,4), %xmm7                             #58.3
        addps     16+a(,%rax,4), %xmm6                          #58.3
        addps     32+a(,%rax,4), %xmm5                          #58.3
        addps     48+a(,%rax,4), %xmm4                          #58.3
        addps     64+a(,%rax,4), %xmm3                          #58.3
        addps     80+a(,%rax,4), %xmm2                          #58.3
        addps     96+a(,%rax,4), %xmm1                          #58.3
        addps     112+a(,%rax,4), %xmm0                         #58.3
        addq      $32, %rax                                     #57.2
        cmpq      $32000, %rax                                  #57.2
        jb        ..B5.2        # Prob 99%                      #57.2
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.3:                         # Preds ..B5.2
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %edi                         #80.17
        movl      $1, %eax                                      #80.17
        addps     %xmm6, %xmm7                                  #52.13
        addps     %xmm4, %xmm5                                  #52.13
        addps     %xmm2, %xmm3                                  #52.13
        addps     %xmm0, %xmm1                                  #52.13
        addps     %xmm5, %xmm7                                  #52.13
        addps     %xmm1, %xmm3                                  #52.13
        addps     %xmm3, %xmm7                                  #52.13
        movaps    %xmm7, %xmm0                                  #52.13
        movhlps   %xmm7, %xmm0                                  #52.13
        addps     %xmm0, %xmm7                                  #52.13
        movaps    %xmm7, %xmm1                                  #52.13
        shufps    $245, %xmm7, %xmm1                            #52.13
        addss     %xmm1, %xmm7                                  #52.13
        cvtss2sd  %xmm7, %xmm7                                  #80.17
        movaps    %xmm7, %xmm0                                  #80.17
..___tag_value_check..0.86:
#       printf(const char *__restrict__, ...)
        call      printf                                        #80.17
..___tag_value_check..0.87:
                                # LOE rbx rbp r12 r13 r14 r15
..B5.4:                         # Preds ..B5.3
                                # Execution count [1.00e+00]
        popq      %rcx                                          #99.1
	.cfi_def_cfa_offset 8
        ret                                                     #99.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	check..0,@function
	.size	check..0,.-check..0
	.data
# -- End  check..0
	.text
# -- Begin  s2275
	.text
# mark_begin;
       .align    16,0x90
	.globl s2275
# --- s2275()
s2275:
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s2275.90:
..L91:
                                                         #183.1
        pushq     %rbx                                          #183.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #183.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #183.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.6, %edi                         #190.2
..___tag_value_s2275.97:
#       init(char *)
        call      init                                          #190.2
..___tag_value_s2275.98:
                                # LOE rbp r12 r13 r14 r15
..B6.2:                         # Preds ..B6.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #191.12
                                # LOE rax rbp r12 r13 r14 r15
..B6.16:                        # Preds ..B6.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #191.12
                                # LOE rbx rbp r12 r13 r14 r15
..B6.3:                         # Preds ..B6.16
                                # Execution count [2.39e+02]
        xorl      %eax, %eax                                    #193.14
        movl      %eax, %ebp                                    #193.14
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.4:                         # Preds ..B6.9 ..B6.3
                                # Execution count [1.99e+05]
        xorl      %edx, %edx                                    #195.4
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.5:                         # Preds ..B6.5 ..B6.4
                                # Execution count [6.43e+09]
        movups    bb(,%rdx,4), %xmm0                            #196.27
        movups    16+bb(,%rdx,4), %xmm1                         #196.27
        movups    32+bb(,%rdx,4), %xmm2                         #196.27
        movups    48+bb(,%rdx,4), %xmm3                         #196.27
        mulps     cc(,%rdx,4), %xmm0                            #196.38
        mulps     16+cc(,%rdx,4), %xmm1                         #196.38
        mulps     32+cc(,%rdx,4), %xmm2                         #196.38
        addps     aa(,%rdx,4), %xmm0                            #196.38
        mulps     48+cc(,%rdx,4), %xmm3                         #196.38
        addps     16+aa(,%rdx,4), %xmm1                         #196.38
        addps     32+aa(,%rdx,4), %xmm2                         #196.38
        addps     48+aa(,%rdx,4), %xmm3                         #196.38
        movups    %xmm0, aa(,%rdx,4)                            #196.5
        movups    %xmm1, 16+aa(,%rdx,4)                         #196.5
        movups    %xmm2, 32+aa(,%rdx,4)                         #196.5
        movups    %xmm3, 48+aa(,%rdx,4)                         #196.5
        addq      $16, %rdx                                     #195.4
        cmpq      $32400, %rdx                                  #195.4
        jb        ..B6.5        # Prob 99%                      #195.4
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.99e+05]
        xorl      %edx, %edx                                    #194.3
        .align    16,0x90
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.7:                         # Preds ..B6.7 ..B6.6
                                # Execution count [3.57e+07]
        movups    c(,%rdx,4), %xmm0                             #198.18
        movups    16+c(,%rdx,4), %xmm1                          #198.18
        mulps     d(,%rdx,4), %xmm0                             #198.25
        mulps     16+d(,%rdx,4), %xmm1                          #198.25
        addps     b(,%rdx,4), %xmm0                             #198.25
        addps     16+b(,%rdx,4), %xmm1                          #198.25
        movups    %xmm0, a(,%rdx,4)                             #198.4
        movups    %xmm1, 16+a(,%rdx,4)                          #198.4
        addq      $8, %rdx                                      #194.3
        cmpq      $176, %rdx                                    #194.3
        jb        ..B6.7        # Prob 99%                      #194.3
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.8:                         # Preds ..B6.7
                                # Execution count [1.99e+05]
        movups    704+c(%rip), %xmm0                            #198.18
        movl      $a, %edi                                      #200.3
        mulps     704+d(%rip), %xmm0                            #198.25
        movl      $b, %esi                                      #200.3
        pushq     $cc                                           #200.3
	.cfi_def_cfa_offset 40
        movl      $c, %edx                                      #200.3
        movl      $d, %ecx                                      #200.3
        movl      $e, %r8d                                      #200.3
        movl      $aa, %r9d                                     #200.3
        pushq     $bb                                           #200.3
	.cfi_def_cfa_offset 48
        addps     704+b(%rip), %xmm0                            #198.25
        movups    %xmm0, 704+a(%rip)                            #198.4
        pxor      %xmm0, %xmm0                                  #200.3
..___tag_value_s2275.101:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #200.3
..___tag_value_s2275.102:
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.17:                        # Preds ..B6.8
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #200.3
	.cfi_def_cfa_offset 32
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.9:                         # Preds ..B6.17
                                # Execution count [1.99e+05]
        incl      %ebp                                          #193.32
        cmpl      $200000, %ebp                                 #193.24
        jl        ..B6.4        # Prob 99%                      #193.24
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.10:                        # Preds ..B6.9
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #202.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.11:                        # Preds ..B6.10
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #204.2
        pxor      %xmm0, %xmm0                                  #204.2
        cvtsi2sdq %rax, %xmm0                                   #204.2
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #204.2
        movl      $.L_2__STRING.7, %edi                         #204.2
        movl      $1, %eax                                      #204.2
..___tag_value_s2275.104:
#       printf(const char *__restrict__, ...)
        call      printf                                        #204.2
..___tag_value_s2275.105:
                                # LOE rbp r12 r13 r14 r15
..B6.12:                        # Preds ..B6.11
                                # Execution count [1.00e+00]
        movl      $11, %edi                                     #205.2
..___tag_value_s2275.106:
#       check..1(int)
        call      check..1                                      #205.2
..___tag_value_s2275.107:
                                # LOE rbp r12 r13 r14 r15
..B6.13:                        # Preds ..B6.12
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #206.9
        popq      %rcx                                          #206.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #206.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #206.9
	.cfi_def_cfa_offset 8
        ret                                                     #206.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	s2275,@function
	.size	s2275,.-s2275
	.data
# -- End  s2275
	.text
# -- Begin  check..1
	.text
# mark_begin;
       .align    16,0x90
# --- check..1(int)
check..1:
# parameter 1: %edi
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check..1.114:
..L115:
                                                        #50.21
        pushq     %rsi                                          #50.21
	.cfi_def_cfa_offset 16
        xorl      %eax, %eax                                    #67.2
        pxor      %xmm0, %xmm0                                  #64.14
        xorl      %edx, %edx                                    #67.2
        movaps    %xmm0, %xmm7                                  #64.14
        movaps    %xmm0, %xmm6                                  #64.14
        movaps    %xmm0, %xmm5                                  #64.14
        movaps    %xmm0, %xmm4                                  #64.14
        movaps    %xmm0, %xmm3                                  #64.14
        movaps    %xmm0, %xmm2                                  #64.14
        movaps    %xmm0, %xmm1                                  #64.14
        .align    16,0x90
                                # LOE rax rdx rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B7.2:                         # Preds ..B7.2 ..B7.1
                                # Execution count [3.24e+04]
        addps     aa(,%rax,4), %xmm0                            #69.4
        addps     16+aa(,%rax,4), %xmm7                         #69.4
        addps     32+aa(,%rax,4), %xmm6                         #69.4
        addps     48+aa(,%rax,4), %xmm5                         #69.4
        addps     64+aa(,%rax,4), %xmm4                         #69.4
        addps     80+aa(,%rax,4), %xmm3                         #69.4
        addps     96+aa(,%rax,4), %xmm2                         #69.4
        addps     112+aa(,%rax,4), %xmm1                        #69.4
        addq      $32, %rax                                     #67.2
        cmpq      $32384, %rax                                  #67.2
        jb        ..B7.2        # Prob 99%                      #67.2
                                # LOE rax rdx rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B7.3:                         # Preds ..B7.2
                                # Execution count [1.00e+00]
        addps     %xmm7, %xmm0                                  #64.14
        addps     %xmm5, %xmm6                                  #64.14
        addps     %xmm3, %xmm4                                  #64.14
        addps     %xmm1, %xmm2                                  #64.14
        addps     %xmm6, %xmm0                                  #64.14
        addps     %xmm2, %xmm4                                  #64.14
        addps     %xmm4, %xmm0                                  #64.14
                                # LOE rdx rbx rbp r12 r13 r14 r15 xmm0
..B7.4:                         # Preds ..B7.4 ..B7.3
                                # Execution count [3.24e+04]
        addps     129536+aa(,%rdx,4), %xmm0                     #69.4
        addq      $4, %rdx                                      #67.2
        cmpq      $16, %rdx                                     #67.2
        jb        ..B7.4        # Prob 99%                      #67.2
                                # LOE rdx rbx rbp r12 r13 r14 r15 xmm0
..B7.5:                         # Preds ..B7.4
                                # Execution count [1.00e+00]
        movaps    %xmm0, %xmm1                                  #64.14
        movl      $.L_2__STRING.0, %edi                         #85.18
        movhlps   %xmm0, %xmm1                                  #64.14
        movl      $1, %eax                                      #85.18
        addps     %xmm1, %xmm0                                  #64.14
        movaps    %xmm0, %xmm2                                  #64.14
        shufps    $245, %xmm0, %xmm2                            #64.14
        addss     %xmm2, %xmm0                                  #64.14
        cvtss2sd  %xmm0, %xmm0                                  #85.18
..___tag_value_check..1.117:
#       printf(const char *__restrict__, ...)
        call      printf                                        #85.18
..___tag_value_check..1.118:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.6:                         # Preds ..B7.5
                                # Execution count [1.00e+00]
        popq      %rcx                                          #99.1
	.cfi_def_cfa_offset 8
        ret                                                     #99.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	check..1,@function
	.size	check..1,.-check..1
	.data
# -- End  check..1
	.text
# -- Begin  s312
	.text
# mark_begin;
       .align    16,0x90
	.globl s312
# --- s312()
s312:
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s312.121:
..L122:
                                                        #209.1
        pushq     %rbx                                          #209.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #209.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #209.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.1, %edi                         #217.2
..___tag_value_s312.128:
#       init(char *)
        call      init                                          #217.2
..___tag_value_s312.129:
                                # LOE rbx r12 r13 r14 r15
..B8.2:                         # Preds ..B8.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #218.12
                                # LOE rax rbx r12 r13 r14 r15
..B8.14:                        # Preds ..B8.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbp                                    #218.12
                                # LOE rbx rbp r12 r13 r14 r15
..B8.3:                         # Preds ..B8.14
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #221.14
        movl      %eax, %ebx                                    #220.2
                                # LOE rbp r12 r13 r14 r15 ebx
..B8.4:                         # Preds ..B8.7 ..B8.3
                                # Execution count [1.99e+05]
        movups    .L_2il0floatpacket.3(%rip), %xmm0             #220.2
        xorl      %edx, %edx                                    #223.3
                                # LOE rdx rbp r12 r13 r14 r15 ebx xmm0
..B8.5:                         # Preds ..B8.5 ..B8.4
                                # Execution count [6.35e+09]
        mulps     a(,%rdx,4), %xmm0                             #224.4
        mulps     16+a(,%rdx,4), %xmm0                          #224.4
        mulps     32+a(,%rdx,4), %xmm0                          #224.4
        mulps     48+a(,%rdx,4), %xmm0                          #224.4
        addq      $16, %rdx                                     #223.3
        cmpq      $32000, %rdx                                  #223.3
        jb        ..B8.5        # Prob 99%                      #223.3
                                # LOE rdx rbp r12 r13 r14 r15 ebx xmm0
..B8.6:                         # Preds ..B8.5
                                # Execution count [1.99e+05]
        movaps    %xmm0, %xmm1                                  #220.2
        movl      $a, %edi                                      #226.3
        movhlps   %xmm0, %xmm1                                  #220.2
        movl      $b, %esi                                      #226.3
        mulps     %xmm1, %xmm0                                  #220.2
        movl      $c, %edx                                      #226.3
        movaps    %xmm0, %xmm2                                  #220.2
        movl      $d, %ecx                                      #226.3
        shufps    $245, %xmm0, %xmm2                            #220.2
        movl      $e, %r8d                                      #226.3
        mulss     %xmm2, %xmm0                                  #220.2
        movl      $aa, %r9d                                     #226.3
        movss     %xmm0, (%rsp)                                 #220.2[spill]
        pushq     $cc                                           #226.3
	.cfi_def_cfa_offset 40
        pushq     $bb                                           #226.3
	.cfi_def_cfa_offset 48
..___tag_value_s312.132:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #226.3
..___tag_value_s312.133:
                                # LOE rbp r12 r13 r14 r15 ebx
..B8.15:                        # Preds ..B8.6
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #226.3
	.cfi_def_cfa_offset 32
                                # LOE rbp r12 r13 r14 r15 ebx
..B8.7:                         # Preds ..B8.15
                                # Execution count [1.99e+05]
        incl      %ebx                                          #221.32
        cmpl      $200000, %ebx                                 #221.24
        jl        ..B8.4        # Prob 99%                      #221.24
                                # LOE rbp r12 r13 r14 r15 ebx
..B8.8:                         # Preds ..B8.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #228.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.9:                         # Preds ..B8.8
                                # Execution count [1.00e+00]
        subq      %rbp, %rax                                    #230.2
        pxor      %xmm0, %xmm0                                  #230.2
        cvtsi2sdq %rax, %xmm0                                   #230.2
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #230.2
        movl      $.L_2__STRING.8, %edi                         #230.2
        movl      $1, %eax                                      #230.2
..___tag_value_s312.135:
#       printf(const char *__restrict__, ...)
        call      printf                                        #230.2
..___tag_value_s312.136:
                                # LOE rbx r12 r13 r14 r15
..B8.10:                        # Preds ..B8.9
                                # Execution count [1.00e+00]
        movss     (%rsp), %xmm0                                 #231.2[spill]
        movl      $-1, %edi                                     #232.2
        movss     %xmm0, temp(%rip)                             #231.2
..___tag_value_s312.137:
#       check..2(int)
        call      check..2                                      #232.2
..___tag_value_s312.138:
                                # LOE rbx r12 r13 r14 r15
..B8.11:                        # Preds ..B8.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #233.9
        popq      %rcx                                          #233.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #233.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #233.9
	.cfi_def_cfa_offset 8
        ret                                                     #233.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	s312,@function
	.size	s312,.-s312
	.data
# -- End  s312
	.text
# -- Begin  check..2
	.text
# mark_begin;
       .align    16,0x90
# --- check..2(int)
check..2:
# parameter 1: %edi
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check..2.145:
..L146:
                                                        #50.21
        pxor      %xmm0, %xmm0                                  #96.18
        cvtss2sd  temp(%rip), %xmm0                             #96.18
        movl      $.L_2__STRING.0, %edi                         #96.18
        movl      $1, %eax                                      #96.18
#       printf(const char *__restrict__, ...)
        jmp       printf                                        #96.18
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	check..2,@function
	.size	check..2,.-check..2
	.data
# -- End  check..2
	.text
# -- Begin  s317
	.text
# mark_begin;
       .align    16,0x90
	.globl s317
# --- s317()
s317:
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s317.148:
..L149:
                                                        #236.1
        pushq     %rbx                                          #236.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #236.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #236.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.9, %edi                         #246.2
..___tag_value_s317.155:
#       init(char *)
        call      init                                          #246.2
..___tag_value_s317.156:
                                # LOE rbp r12 r13 r14 r15
..B10.2:                        # Preds ..B10.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #247.12
                                # LOE rax rbp r12 r13 r14 r15
..B10.14:                       # Preds ..B10.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #247.12
                                # LOE rbx rbp r12 r13 r14 r15
..B10.3:                        # Preds ..B10.14
                                # Execution count [4.86e+02]
        xorl      %eax, %eax                                    #250.14
        movl      %eax, %ebp                                    #253.9
                                # LOE rbx r12 r13 r14 r15 ebp
..B10.4:                        # Preds ..B10.7 ..B10.3
                                # Execution count [3.97e+05]
        movups    .L_2il0floatpacket.3(%rip), %xmm0             #249.2
        xorl      %edx, %edx                                    #252.3
        movups    .L_2il0floatpacket.4(%rip), %xmm1             #252.3
                                # LOE rbx r12 r13 r14 r15 edx ebp xmm0 xmm1
..B10.5:                        # Preds ..B10.5 ..B10.4
                                # Execution count [6.36e+09]
        mulps     %xmm1, %xmm0                                  #253.4
        addl      $16, %edx                                     #252.3
        mulps     %xmm1, %xmm0                                  #253.4
        mulps     %xmm1, %xmm0                                  #253.4
        mulps     %xmm1, %xmm0                                  #253.4
        cmpl      $16000, %edx                                  #252.3
        jb        ..B10.5       # Prob 99%                      #252.3
                                # LOE rbx r12 r13 r14 r15 edx ebp xmm0 xmm1
..B10.6:                        # Preds ..B10.5
                                # Execution count [3.97e+05]
        movaps    %xmm0, %xmm1                                  #249.2
        movl      $a, %edi                                      #255.3
        movhlps   %xmm0, %xmm1                                  #249.2
        movl      $b, %esi                                      #255.3
        mulps     %xmm1, %xmm0                                  #249.2
        movl      $c, %edx                                      #255.3
        movaps    %xmm0, %xmm2                                  #249.2
        movl      $d, %ecx                                      #255.3
        shufps    $245, %xmm0, %xmm2                            #249.2
        movl      $e, %r8d                                      #255.3
        mulss     %xmm2, %xmm0                                  #249.2
        movl      $aa, %r9d                                     #255.3
        movss     %xmm0, (%rsp)                                 #249.2[spill]
        pushq     $cc                                           #255.3
	.cfi_def_cfa_offset 40
        pushq     $bb                                           #255.3
	.cfi_def_cfa_offset 48
..___tag_value_s317.159:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #255.3
..___tag_value_s317.160:
                                # LOE rbx r12 r13 r14 r15 ebp
..B10.15:                       # Preds ..B10.6
                                # Execution count [3.97e+05]
        addq      $16, %rsp                                     #255.3
	.cfi_def_cfa_offset 32
                                # LOE rbx r12 r13 r14 r15 ebp
..B10.7:                        # Preds ..B10.15
                                # Execution count [3.97e+05]
        incl      %ebp                                          #250.34
        cmpl      $400000, %ebp                                 #250.24
        jl        ..B10.4       # Prob 99%                      #250.24
                                # LOE rbx r12 r13 r14 r15 ebp
..B10.8:                        # Preds ..B10.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #257.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B10.9:                        # Preds ..B10.8
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #259.2
        pxor      %xmm0, %xmm0                                  #259.2
        cvtsi2sdq %rax, %xmm0                                   #259.2
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #259.2
        movl      $.L_2__STRING.10, %edi                        #259.2
        movl      $1, %eax                                      #259.2
..___tag_value_s317.162:
#       printf(const char *__restrict__, ...)
        call      printf                                        #259.2
..___tag_value_s317.163:
                                # LOE rbp r12 r13 r14 r15
..B10.10:                       # Preds ..B10.9
                                # Execution count [1.00e+00]
        movss     (%rsp), %xmm0                                 #260.2[spill]
        movl      $-1, %edi                                     #261.2
        movss     %xmm0, temp(%rip)                             #260.2
..___tag_value_s317.164:
#       check..2(int)
        call      check..2                                      #261.2
..___tag_value_s317.165:
                                # LOE rbp r12 r13 r14 r15
..B10.11:                       # Preds ..B10.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #262.9
        popq      %rcx                                          #262.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #262.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #262.9
	.cfi_def_cfa_offset 8
        ret                                                     #262.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	s317,@function
	.size	s317,.-s317
	.data
# -- End  s317
	.text
# -- Begin  set1d
	.text
# mark_begin;
       .align    16,0x90
	.globl set1d
# --- set1d(float *, float, int)
set1d:
# parameter 1: %rdi
# parameter 2: %xmm0
# parameter 3: %esi
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set1d.172:
..L173:
                                                        #6.1
        movslq    %esi, %rcx                                    #6.1
        cmpl      $-1, %esi                                     #7.6
        jne       ..B11.18      # Prob 66%                      #7.6
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B11.2:                        # Preds ..B11.1
                                # Execution count [3.33e-01]
        movq      %rdi, %rdx                                    #8.3
        andq      $15, %rdx                                     #8.3
        testl     %edx, %edx                                    #8.3
        je        ..B11.7       # Prob 50%                      #8.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B11.3:                        # Preds ..B11.2
                                # Execution count [3.33e-01]
        testb     $3, %dl                                       #8.3
        jne       ..B11.41      # Prob 10%                      #8.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B11.4:                        # Preds ..B11.3
                                # Execution count [3.32e-01]
        negl      %edx                                          #8.3
        xorl      %ecx, %ecx                                    #8.3
        addl      $16, %edx                                     #8.3
        xorl      %eax, %eax                                    #8.3
        shrl      $2, %edx                                      #8.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B11.5:                        # Preds ..B11.5 ..B11.4
                                # Execution count [1.07e+04]
        incl      %ecx                                          #9.29
        pxor      %xmm0, %xmm0                                  #9.29
        cvtsi2ss  %ecx, %xmm0                                   #9.29
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #9.29
        divss     %xmm0, %xmm1                                  #9.29
        movss     %xmm1, (%rdi,%rax,4)                          #9.4
        incq      %rax                                          #9.29
        cmpl      %edx, %ecx                                    #8.3
        jb        ..B11.5       # Prob 99%                      #8.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B11.7:                        # Preds ..B11.5 ..B11.2
                                # Execution count [3.32e-01]
        movl      %edx, %esi                                    #8.3
        lea       1(%rdx), %ecx                                 #9.29
        negl      %esi                                          #8.3
        lea       2(%rdx), %r9d                                 #9.29
        andl      $15, %esi                                     #8.3
        lea       3(%rdx), %r10d                                #9.29
        negl      %esi                                          #8.3
        lea       4(%rdx), %r11d                                #9.29
        movl      $4, %eax                                      #9.29
        movd      %ecx, %xmm1                                   #9.29
        movd      %r9d, %xmm2                                   #9.29
        movd      %r10d, %xmm4                                  #9.29
        movd      %r11d, %xmm3                                  #9.29
        lea       32000(%rsi), %r8d                             #8.3
        punpcklqdq %xmm2, %xmm1                                 #9.29
        movd      %eax, %xmm0                                   #9.29
        punpcklqdq %xmm3, %xmm4                                 #9.29
        movl      %r8d, %eax                                    #8.3
        pshufd    $0, %xmm0, %xmm0                              #9.29
        shufps    $136, %xmm4, %xmm1                            #9.29
        movl      %edx, %edx                                    #8.3
        .align    16,0x90
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B11.8:                        # Preds ..B11.8 ..B11.7
                                # Execution count [1.07e+04]
        cvtdq2ps  %xmm1, %xmm2                                  #9.29
        paddd     %xmm0, %xmm1                                  #9.29
        cvtdq2ps  %xmm1, %xmm4                                  #9.29
        rcpps     %xmm2, %xmm3                                  #9.29
        rcpps     %xmm4, %xmm5                                  #9.29
        mulps     %xmm3, %xmm2                                  #9.29
        mulps     %xmm5, %xmm4                                  #9.29
        mulps     %xmm3, %xmm2                                  #9.29
        addps     %xmm3, %xmm3                                  #9.29
        mulps     %xmm5, %xmm4                                  #9.29
        addps     %xmm5, %xmm5                                  #9.29
        subps     %xmm2, %xmm3                                  #9.29
        subps     %xmm4, %xmm5                                  #9.29
        paddd     %xmm0, %xmm1                                  #9.29
        cvtdq2ps  %xmm1, %xmm6                                  #9.29
        paddd     %xmm0, %xmm1                                  #9.29
        cvtdq2ps  %xmm1, %xmm8                                  #9.29
        rcpps     %xmm6, %xmm7                                  #9.29
        rcpps     %xmm8, %xmm9                                  #9.29
        mulps     %xmm7, %xmm6                                  #9.29
        mulps     %xmm9, %xmm8                                  #9.29
        mulps     %xmm7, %xmm6                                  #9.29
        addps     %xmm7, %xmm7                                  #9.29
        mulps     %xmm9, %xmm8                                  #9.29
        addps     %xmm9, %xmm9                                  #9.29
        subps     %xmm6, %xmm7                                  #9.29
        subps     %xmm8, %xmm9                                  #9.29
        movups    %xmm3, (%rdi,%rdx,4)                          #9.4
        paddd     %xmm0, %xmm1                                  #9.29
        movups    %xmm5, 16(%rdi,%rdx,4)                        #9.4
        movups    %xmm7, 32(%rdi,%rdx,4)                        #9.4
        movups    %xmm9, 48(%rdi,%rdx,4)                        #9.4
        addq      $16, %rdx                                     #8.3
        cmpq      %rax, %rdx                                    #8.3
        jb        ..B11.8       # Prob 99%                      #8.3
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B11.9:                        # Preds ..B11.8
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #8.3
        cmpl      $32000, %r9d                                  #8.3
        ja        ..B11.40      # Prob 50%                      #8.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm0
..B11.10:                       # Preds ..B11.9
                                # Execution count [3.16e-01]
        movl      %r8d, %edx                                    #8.3
        negl      %edx                                          #8.3
        addl      $32000, %edx                                  #8.3
        cmpl      $4, %edx                                      #8.3
        jb        ..B11.42      # Prob 10%                      #8.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx esi r8d r9d xmm0
..B11.11:                       # Preds ..B11.10
                                # Execution count [3.32e-01]
        movd      %r9d, %xmm1                                   #9.29
        lea       32002(%rsi), %r10d                            #9.29
        movl      %edx, %ecx                                    #8.3
        lea       32003(%rsi), %r11d                            #9.29
        addl      $32004, %esi                                  #9.29
        andl      $-4, %ecx                                     #8.3
        movd      %r10d, %xmm2                                  #9.29
        movd      %r11d, %xmm4                                  #9.29
        movd      %esi, %xmm3                                   #9.29
        xorl      %esi, %esi                                    #8.3
        punpcklqdq %xmm2, %xmm1                                 #9.29
        punpcklqdq %xmm3, %xmm4                                 #9.29
        shufps    $136, %xmm4, %xmm1                            #9.29
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B11.12:                       # Preds ..B11.12 ..B11.11
                                # Execution count [1.07e+04]
        cvtdq2ps  %xmm1, %xmm2                                  #9.29
        rcpps     %xmm2, %xmm3                                  #9.29
        mulps     %xmm3, %xmm2                                  #9.29
        addl      $4, %esi                                      #8.3
        mulps     %xmm3, %xmm2                                  #9.29
        addps     %xmm3, %xmm3                                  #9.29
        paddd     %xmm0, %xmm1                                  #9.29
        subps     %xmm2, %xmm3                                  #9.29
        movups    %xmm3, (%rdi,%rax,4)                          #9.4
        addq      $4, %rax                                      #8.3
        cmpl      %ecx, %esi                                    #8.3
        jb        ..B11.12      # Prob 99%                      #8.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B11.14:                       # Preds ..B11.12 ..B11.42 ..B11.41
                                # Execution count [3.33e-01]
        addl      %ecx, %r8d                                    #8.3
        movslq    %r8d, %rax                                    #8.3
        cmpl      %edx, %ecx                                    #8.3
        jae       ..B11.40      # Prob 0%                       #8.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B11.16:                       # Preds ..B11.14 ..B11.16
                                # Execution count [1.07e+04]
        incl      %r8d                                          #9.29
        pxor      %xmm0, %xmm0                                  #9.29
        cvtsi2ss  %r8d, %xmm0                                   #9.29
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #9.29
        incl      %ecx                                          #8.3
        divss     %xmm0, %xmm1                                  #9.29
        movss     %xmm1, (%rdi,%rax,4)                          #9.4
        incq      %rax                                          #8.3
        cmpl      %edx, %ecx                                    #8.3
        jb        ..B11.16      # Prob 99%                      #8.3
        jmp       ..B11.40      # Prob 100%                     #8.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B11.18:                       # Preds ..B11.1
                                # Execution count [6.67e-01]
        cmpl      $-2, %esi                                     #7.6
        jne       ..B11.35      # Prob 50%                      #7.6
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B11.19:                       # Preds ..B11.18
                                # Execution count [3.33e-01]
        movq      %rdi, %rax                                    #12.3
        andq      $15, %rax                                     #12.3
        testl     %eax, %eax                                    #12.3
        je        ..B11.24      # Prob 50%                      #12.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B11.20:                       # Preds ..B11.19
                                # Execution count [3.33e-01]
        testb     $3, %al                                       #12.3
        jne       ..B11.43      # Prob 10%                      #12.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B11.21:                       # Preds ..B11.20
                                # Execution count [3.33e-01]
        negl      %eax                                          #12.3
        xorl      %ecx, %ecx                                    #12.3
        addl      $16, %eax                                     #12.3
        xorl      %edx, %edx                                    #12.3
        shrl      $2, %eax                                      #12.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B11.22:                       # Preds ..B11.22 ..B11.21
                                # Execution count [1.07e+04]
        incl      %ecx                                          #13.30
        pxor      %xmm0, %xmm0                                  #13.38
        movl      %ecx, %esi                                    #13.38
        imull     %ecx, %esi                                    #13.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #13.38
        cvtsi2ss  %esi, %xmm0                                   #13.38
        divss     %xmm0, %xmm1                                  #13.38
        movss     %xmm1, (%rdi,%rdx,4)                          #13.4
        incq      %rdx                                          #13.30
        cmpl      %eax, %ecx                                    #12.3
        jb        ..B11.22      # Prob 99%                      #12.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B11.24:                       # Preds ..B11.22 ..B11.19
                                # Execution count [3.33e-01]
        movl      %eax, %esi                                    #12.3
        movl      $4, %edx                                      #13.30
        negl      %esi                                          #12.3
        lea       1(%rax), %ecx                                 #13.30
        andl      $15, %esi                                     #12.3
        lea       2(%rax), %r9d                                 #13.30
        negl      %esi                                          #12.3
        lea       3(%rax), %r10d                                #13.30
        movd      %edx, %xmm0                                   #13.30
        lea       4(%rax), %r11d                                #13.30
        pshufd    $0, %xmm0, %xmm2                              #13.30
        movd      %ecx, %xmm0                                   #13.30
        movd      %r9d, %xmm1                                   #13.30
        movd      %r10d, %xmm4                                  #13.30
        lea       32000(%rsi), %r8d                             #12.3
        movd      %r11d, %xmm3                                  #13.30
        movl      %r8d, %edx                                    #12.3
        punpcklqdq %xmm1, %xmm0                                 #13.30
        punpcklqdq %xmm3, %xmm4                                 #13.30
        shufps    $136, %xmm4, %xmm0                            #13.30
        movl      %eax, %eax                                    #12.3
        movdqu    .L_2il0floatpacket.5(%rip), %xmm1             #13.38
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B11.25:                       # Preds ..B11.25 ..B11.24
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #13.38
        movaps    %xmm0, %xmm4                                  #13.38
        psrlq     $32, %xmm3                                    #13.38
        pmuludq   %xmm0, %xmm4                                  #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        pmuludq   %xmm3, %xmm3                                  #13.38
        pand      %xmm1, %xmm4                                  #13.38
        psllq     $32, %xmm3                                    #13.38
        por       %xmm3, %xmm4                                  #13.38
        movaps    %xmm0, %xmm8                                  #13.38
        cvtdq2ps  %xmm4, %xmm5                                  #13.38
        pmuludq   %xmm0, %xmm8                                  #13.38
        rcpps     %xmm5, %xmm6                                  #13.38
        movaps    %xmm0, %xmm7                                  #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        movaps    %xmm0, %xmm12                                 #13.38
        movaps    %xmm0, %xmm11                                 #13.38
        pmuludq   %xmm0, %xmm12                                 #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        mulps     %xmm6, %xmm5                                  #13.38
        movaps    %xmm0, %xmm15                                 #13.38
        psrlq     $32, %xmm7                                    #13.38
        psrlq     $32, %xmm11                                   #13.38
        psrlq     $32, %xmm15                                   #13.38
        movaps    %xmm0, %xmm3                                  #13.38
        pand      %xmm1, %xmm8                                  #13.38
        pmuludq   %xmm7, %xmm7                                  #13.38
        pand      %xmm1, %xmm12                                 #13.38
        mulps     %xmm6, %xmm5                                  #13.38
        addps     %xmm6, %xmm6                                  #13.38
        pmuludq   %xmm11, %xmm11                                #13.38
        pmuludq   %xmm0, %xmm3                                  #13.38
        pmuludq   %xmm15, %xmm15                                #13.38
        subps     %xmm5, %xmm6                                  #13.38
        psllq     $32, %xmm7                                    #13.38
        psllq     $32, %xmm11                                   #13.38
        pand      %xmm1, %xmm3                                  #13.38
        psllq     $32, %xmm15                                   #13.38
        por       %xmm7, %xmm8                                  #13.38
        por       %xmm11, %xmm12                                #13.38
        por       %xmm15, %xmm3                                 #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        cvtdq2ps  %xmm8, %xmm9                                  #13.38
        cvtdq2ps  %xmm12, %xmm13                                #13.38
        cvtdq2ps  %xmm3, %xmm4                                  #13.38
        rcpps     %xmm9, %xmm10                                 #13.38
        rcpps     %xmm13, %xmm14                                #13.38
        rcpps     %xmm4, %xmm5                                  #13.38
        mulps     %xmm10, %xmm9                                 #13.38
        mulps     %xmm14, %xmm13                                #13.38
        mulps     %xmm5, %xmm4                                  #13.38
        mulps     %xmm10, %xmm9                                 #13.38
        addps     %xmm10, %xmm10                                #13.38
        mulps     %xmm14, %xmm13                                #13.38
        addps     %xmm14, %xmm14                                #13.38
        mulps     %xmm5, %xmm4                                  #13.38
        addps     %xmm5, %xmm5                                  #13.38
        subps     %xmm9, %xmm10                                 #13.38
        subps     %xmm13, %xmm14                                #13.38
        subps     %xmm4, %xmm5                                  #13.38
        movups    %xmm6, (%rdi,%rax,4)                          #13.4
        movups    %xmm10, 16(%rdi,%rax,4)                       #13.4
        movups    %xmm14, 32(%rdi,%rax,4)                       #13.4
        movups    %xmm5, 48(%rdi,%rax,4)                        #13.4
        addq      $16, %rax                                     #12.3
        cmpq      %rdx, %rax                                    #12.3
        jb        ..B11.25      # Prob 99%                      #12.3
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B11.26:                       # Preds ..B11.25
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #12.3
        cmpl      $32000, %r9d                                  #12.3
        ja        ..B11.40      # Prob 50%                      #12.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm1 xmm2
..B11.27:                       # Preds ..B11.26
                                # Execution count [3.16e-01]
        movl      %r8d, %eax                                    #12.3
        negl      %eax                                          #12.3
        addl      $32000, %eax                                  #12.3
        cmpl      $4, %eax                                      #12.3
        jb        ..B11.44      # Prob 10%                      #12.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax esi r8d r9d xmm1 xmm2
..B11.28:                       # Preds ..B11.27
                                # Execution count [3.33e-01]
        movd      %r9d, %xmm0                                   #13.30
        lea       32002(%rsi), %r10d                            #13.30
        movl      %eax, %ecx                                    #12.3
        lea       32003(%rsi), %r11d                            #13.30
        addl      $32004, %esi                                  #13.30
        andl      $-4, %ecx                                     #12.3
        movd      %r10d, %xmm3                                  #13.30
        movd      %r11d, %xmm5                                  #13.30
        movd      %esi, %xmm4                                   #13.30
        xorl      %esi, %esi                                    #12.3
        punpcklqdq %xmm3, %xmm0                                 #13.30
        punpcklqdq %xmm4, %xmm5                                 #13.30
        shufps    $136, %xmm5, %xmm0                            #13.30
        .align    16,0x90
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B11.29:                       # Preds ..B11.29 ..B11.28
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #13.38
        movaps    %xmm0, %xmm4                                  #13.38
        psrlq     $32, %xmm3                                    #13.38
        addl      $4, %esi                                      #12.3
        pmuludq   %xmm0, %xmm4                                  #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        pmuludq   %xmm3, %xmm3                                  #13.38
        pand      %xmm1, %xmm4                                  #13.38
        psllq     $32, %xmm3                                    #13.38
        por       %xmm3, %xmm4                                  #13.38
        cvtdq2ps  %xmm4, %xmm5                                  #13.38
        rcpps     %xmm5, %xmm6                                  #13.38
        mulps     %xmm6, %xmm5                                  #13.38
        mulps     %xmm6, %xmm5                                  #13.38
        addps     %xmm6, %xmm6                                  #13.38
        subps     %xmm5, %xmm6                                  #13.38
        movups    %xmm6, (%rdi,%rdx,4)                          #13.4
        addq      $4, %rdx                                      #12.3
        cmpl      %ecx, %esi                                    #12.3
        jb        ..B11.29      # Prob 99%                      #12.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B11.31:                       # Preds ..B11.29 ..B11.44 ..B11.43
                                # Execution count [3.33e-01]
        addl      %ecx, %r8d                                    #12.3
        movslq    %r8d, %rdx                                    #12.3
        cmpl      %eax, %ecx                                    #12.3
        jae       ..B11.40      # Prob 0%                       #12.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B11.33:                       # Preds ..B11.31 ..B11.33
                                # Execution count [1.07e+04]
        incl      %r8d                                          #13.38
        pxor      %xmm0, %xmm0                                  #13.38
        movl      %r8d, %esi                                    #13.38
        incl      %ecx                                          #12.3
        imull     %r8d, %esi                                    #13.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #13.38
        cvtsi2ss  %esi, %xmm0                                   #13.38
        divss     %xmm0, %xmm1                                  #13.38
        movss     %xmm1, (%rdi,%rdx,4)                          #13.4
        incq      %rdx                                          #12.3
        cmpl      %eax, %ecx                                    #12.3
        jb        ..B11.33      # Prob 99%                      #12.3
        jmp       ..B11.40      # Prob 100%                     #12.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B11.35:                       # Preds ..B11.18
                                # Execution count [0.00e+00]
        testl     %esi, %esi                                    #16.3
        jne       ..B11.37      # Prob 50%                      #16.3
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B11.36:                       # Preds ..B11.35
                                # Execution count [3.33e-01]
        movss     %xmm0, (%rdi)                                 #17.4
        jmp       ..B11.40      # Prob 100%                     #17.4
                                # LOE rbx rbp r12 r13 r14 r15
..B11.37:                       # Preds ..B11.35
                                # Execution count [3.33e-01]
        xorl      %r8d, %r8d                                    #16.3
        lea       31999(%rcx), %rax                             #16.23
        cmpq      $-1, %rcx                                     #16.23
        je        ..B11.49      # Prob 2%                       #16.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B11.50:                       # Preds ..B11.37
                                # Execution count [3.33e-01]
        movslq    %eax, %rdx                                    #16.23
        cmpq      %rax, %rdx                                    #16.23
        jne       ..B11.49      # Prob 2%                       #16.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B11.48:                       # Preds ..B11.50
                                # Execution count [3.33e-01]
        cltd                                                    #16.23
        idivl     %esi                                          #16.23
        movslq    %eax, %rax                                    #16.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
..B11.47:                       # Preds ..B11.49 ..B11.48
                                # Execution count [3.33e-01]
        movl      %eax, %edx                                    #16.23
        xorl      %eax, %eax                                    #17.4
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B11.38:                       # Preds ..B11.38 ..B11.47
                                # Execution count [1.85e+00]
        incl      %r8d                                          #16.3
        movss     %xmm0, (%rdi,%rax,4)                          #17.4
        addq      %rcx, %rax                                    #16.3
        cmpl      %edx, %r8d                                    #16.3
        jl        ..B11.38      # Prob 82%                      #16.3
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B11.40:                       # Preds ..B11.38 ..B11.33 ..B11.16 ..B11.31 ..B11.9
                                #       ..B11.14 ..B11.26 ..B11.36
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #20.9
        ret                                                     #20.9
                                # LOE
..B11.41:                       # Preds ..B11.3
                                # Execution count [3.33e-02]: Infreq
        xorl      %r8d, %r8d                                    #8.3
        movl      $32000, %edx                                  #8.3
        xorl      %ecx, %ecx                                    #8.3
        jmp       ..B11.14      # Prob 100%                     #8.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B11.42:                       # Preds ..B11.10
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #8.3
        jmp       ..B11.14      # Prob 100%                     #8.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B11.43:                       # Preds ..B11.20
                                # Execution count [3.33e-02]: Infreq
        xorl      %r8d, %r8d                                    #12.3
        movl      $32000, %eax                                  #12.3
        xorl      %ecx, %ecx                                    #12.3
        jmp       ..B11.31      # Prob 100%                     #12.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B11.44:                       # Preds ..B11.27
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #12.3
        jmp       ..B11.31      # Prob 100%                     #12.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B11.49:                       # Preds ..B11.37 ..B11.50
                                # Execution count [3.33e-01]: Infreq
        cqto                                                    #16.23
        idivq     %rcx                                          #16.23
        jmp       ..B11.47      # Prob 100%                     #16.23
        .align    16,0x90
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
	.cfi_endproc
# mark_end;
	.type	set1d,@function
	.size	set1d,.-set1d
	.data
# -- End  set1d
	.text
# -- Begin  set2d
	.text
# mark_begin;
       .align    16,0x90
	.globl set2d
# --- set2d(float (*)[180], float, int)
set2d:
# parameter 1: %rdi
# parameter 2: %xmm0
# parameter 3: %esi
..B12.1:                        # Preds ..B12.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set2d.175:
..L176:
                                                        #24.1
        movslq    %esi, %rsi                                    #24.1
        cmpq      $-1, %rsi                                     #28.6
        je        ..B12.28      # Prob 33%                      #28.6
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B12.2:                        # Preds ..B12.1
                                # Execution count [6.67e-01]
        cmpq      $-2, %rsi                                     #28.6
        je        ..B12.8       # Prob 50%                      #28.6
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B12.3:                        # Preds ..B12.2
                                # Execution count [3.33e-01]
        xorl      %eax, %eax                                    #41.14
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B12.4:                        # Preds ..B12.6 ..B12.3
                                # Execution count [6.00e+01]
        xorl      %edx, %edx                                    #42.15
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B12.5:                        # Preds ..B12.5 ..B12.4
                                # Execution count [3.33e+02]
        movss     %xmm0, (%rdi,%rdx,4)                          #43.5
        addq      %rsi, %rdx                                    #42.30
        cmpq      $180, %rdx                                    #42.24
        jl        ..B12.5       # Prob 82%                      #42.24
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B12.6:                        # Preds ..B12.5
                                # Execution count [6.00e+01]
        incl      %eax                                          #41.29
        addq      $720, %rdi                                    #41.29
        cmpl      $180, %eax                                    #41.23
        jl        ..B12.4       # Prob 99%                      #41.23
        jmp       ..B12.48      # Prob 100%                     #41.23
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B12.8:                        # Preds ..B12.2
                                # Execution count [3.34e-01]
        xorl      %r9d, %r9d                                    #35.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B12.9:                        # Preds ..B12.26 ..B12.8
                                # Execution count [6.00e+01]
        movslq    %r9d, %r9                                     #37.5
        imulq     $720, %r9, %r8                                #37.5
        addq      %rdi, %r8                                     #37.5
        movq      %r8, %rax                                     #36.4
        andq      $15, %rax                                     #36.4
        testl     %eax, %eax                                    #36.4
        je        ..B12.14      # Prob 50%                      #36.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B12.10:                       # Preds ..B12.9
                                # Execution count [6.00e+01]
        incl      %r9d                                          #37.34
        testb     $3, %al                                       #36.4
        jne       ..B12.49      # Prob 10%                      #36.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B12.11:                       # Preds ..B12.10
                                # Execution count [6.00e+01]
        movl      %r9d, %esi                                    #37.42
        pxor      %xmm1, %xmm1                                  #37.42
        imull     %r9d, %esi                                    #37.42
        negl      %eax                                          #36.4
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #37.42
        cvtsi2ss  %esi, %xmm1                                   #37.42
        addl      $16, %eax                                     #36.4
        xorl      %ecx, %ecx                                    #36.4
        shrl      $2, %eax                                      #36.4
        movl      %eax, %edx                                    #36.4
        divss     %xmm1, %xmm0                                  #37.42
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B12.12:                       # Preds ..B12.12 ..B12.11
                                # Execution count [1.08e+04]
        movss     %xmm0, (%r8,%rcx,4)                           #37.5
        incq      %rcx                                          #36.4
        cmpq      %rdx, %rcx                                    #36.4
        jb        ..B12.12      # Prob 99%                      #36.4
        jmp       ..B12.15      # Prob 100%                     #36.4
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B12.14:                       # Preds ..B12.9
                                # Execution count [3.00e+01]
        incl      %r9d                                          #37.34
        pxor      %xmm1, %xmm1                                  #37.42
        movl      %r9d, %ecx                                    #37.42
        xorl      %edx, %edx                                    #36.4
        imull     %r9d, %ecx                                    #37.42
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #37.42
        cvtsi2ss  %ecx, %xmm1                                   #37.42
        divss     %xmm1, %xmm0                                  #37.42
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B12.15:                       # Preds ..B12.12 ..B12.14
                                # Execution count [6.00e+01]
        negl      %eax                                          #36.4
        addl      $4, %eax                                      #36.4
        andl      $7, %eax                                      #36.4
        negl      %eax                                          #36.4
        shufps    $0, %xmm0, %xmm0                              #37.42
        lea       180(%rax), %ecx                               #36.4
        movl      %ecx, %esi                                    #36.4
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B12.16:                       # Preds ..B12.16 ..B12.15
                                # Execution count [1.08e+04]
        movups    %xmm0, (%r8,%rdx,4)                           #37.5
        movups    %xmm0, 16(%r8,%rdx,4)                         #37.5
        addq      $8, %rdx                                      #36.4
        cmpq      %rsi, %rdx                                    #36.4
        jb        ..B12.16      # Prob 99%                      #36.4
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B12.17:                       # Preds ..B12.16
                                # Execution count [6.00e+01]
        addl      $181, %eax                                    #36.4
        cmpl      $180, %eax                                    #36.4
        ja        ..B12.26      # Prob 50%                      #36.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 ecx r9d xmm0
..B12.18:                       # Preds ..B12.17
                                # Execution count [6.00e+01]
        movl      %ecx, %eax                                    #36.4
        negl      %eax                                          #36.4
        addl      $180, %eax                                    #36.4
        cmpl      $4, %eax                                      #36.4
        jb        ..B12.50      # Prob 10%                      #36.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B12.19:                       # Preds ..B12.18
                                # Execution count [6.00e+01]
        movl      %eax, %edx                                    #36.4
        xorl      %r10d, %r10d                                  #36.4
        andl      $-4, %edx                                     #36.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B12.20:                       # Preds ..B12.20 ..B12.19
                                # Execution count [1.08e+04]
        addl      $4, %r10d                                     #36.4
        movups    %xmm0, (%r8,%rsi,4)                           #37.5
        addq      $4, %rsi                                      #36.4
        cmpl      %edx, %r10d                                   #36.4
        jb        ..B12.20      # Prob 99%                      #36.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B12.22:                       # Preds ..B12.20 ..B12.50 ..B12.49
                                # Execution count [6.00e+01]
        addl      %edx, %ecx                                    #36.4
        movslq    %ecx, %rcx                                    #36.4
        cmpl      %eax, %edx                                    #36.4
        jae       ..B12.26      # Prob 0%                       #36.4
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d
..B12.23:                       # Preds ..B12.22
                                # Execution count [6.00e+01]
        movl      %r9d, %esi                                    #37.42
        pxor      %xmm1, %xmm1                                  #37.42
        imull     %r9d, %esi                                    #37.42
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #37.42
        cvtsi2ss  %esi, %xmm1                                   #37.42
        divss     %xmm1, %xmm0                                  #37.42
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B12.24:                       # Preds ..B12.24 ..B12.23
                                # Execution count [1.08e+04]
        incl      %edx                                          #36.4
        movss     %xmm0, (%r8,%rcx,4)                           #37.5
        incq      %rcx                                          #36.4
        cmpl      %eax, %edx                                    #36.4
        jb        ..B12.24      # Prob 99%                      #36.4
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B12.26:                       # Preds ..B12.24 ..B12.17 ..B12.22
                                # Execution count [6.00e+01]
        cmpl      $180, %r9d                                    #35.3
        jb        ..B12.9       # Prob 99%                      #35.3
        jmp       ..B12.48      # Prob 100%                     #35.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B12.28:                       # Preds ..B12.1
                                # Execution count [3.34e-01]
        xorl      %r8d, %r8d                                    #29.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B12.29:                       # Preds ..B12.46 ..B12.28
                                # Execution count [6.00e+01]
        movq      %rdi, %rdx                                    #30.4
        andq      $15, %rdx                                     #30.4
        testl     %edx, %edx                                    #30.4
        je        ..B12.34      # Prob 50%                      #30.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B12.30:                       # Preds ..B12.29
                                # Execution count [6.00e+01]
        testb     $3, %dl                                       #30.4
        jne       ..B12.51      # Prob 10%                      #30.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B12.31:                       # Preds ..B12.30
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #31.33
        lea       1(%r8), %esi                                  #31.33
        cvtsi2ss  %esi, %xmm1                                   #31.33
        negl      %edx                                          #30.4
        xorl      %ecx, %ecx                                    #30.4
        addl      $16, %edx                                     #30.4
        shrl      $2, %edx                                      #30.4
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #31.33
        movl      %edx, %eax                                    #30.4
        divss     %xmm1, %xmm0                                  #31.33
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B12.32:                       # Preds ..B12.32 ..B12.31
                                # Execution count [1.08e+04]
        movss     %xmm0, (%rdi,%rcx,4)                          #31.5
        incq      %rcx                                          #30.4
        cmpq      %rax, %rcx                                    #30.4
        jb        ..B12.32      # Prob 99%                      #30.4
        jmp       ..B12.35      # Prob 100%                     #30.4
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B12.34:                       # Preds ..B12.29
                                # Execution count [3.00e+01]
        pxor      %xmm1, %xmm1                                  #31.33
        lea       1(%r8), %ecx                                  #31.33
        cvtsi2ss  %ecx, %xmm1                                   #31.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #31.33
        xorl      %eax, %eax                                    #30.4
        divss     %xmm1, %xmm0                                  #31.33
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B12.35:                       # Preds ..B12.32 ..B12.34
                                # Execution count [6.00e+01]
        negl      %edx                                          #30.4
        lea       (%rdi,%rax,4), %r9                            #30.4
        addl      $4, %edx                                      #30.4
        andl      $7, %edx                                      #30.4
        negl      %edx                                          #30.4
        shufps    $0, %xmm0, %xmm0                              #31.33
        lea       180(%rdx), %ecx                               #30.4
        movl      %ecx, %esi                                    #30.4
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B12.36:                       # Preds ..B12.36 ..B12.35
                                # Execution count [1.08e+04]
        addq      $8, %rax                                      #30.4
        movups    %xmm0, (%r9)                                  #31.5
        movups    %xmm0, 16(%r9)                                #31.5
        addq      $32, %r9                                      #30.4
        cmpq      %rsi, %rax                                    #30.4
        jb        ..B12.36      # Prob 99%                      #30.4
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B12.37:                       # Preds ..B12.36
                                # Execution count [6.00e+01]
        addl      $181, %edx                                    #30.4
        cmpl      $180, %edx                                    #30.4
        ja        ..B12.46      # Prob 50%                      #30.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d xmm0
..B12.38:                       # Preds ..B12.37
                                # Execution count [6.00e+01]
        movl      %ecx, %edx                                    #30.4
        negl      %edx                                          #30.4
        addl      $180, %edx                                    #30.4
        cmpl      $4, %edx                                      #30.4
        jb        ..B12.52      # Prob 10%                      #30.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx r8d xmm0
..B12.39:                       # Preds ..B12.38
                                # Execution count [6.00e+01]
        movl      %edx, %eax                                    #30.4
        xorl      %r9d, %r9d                                    #30.4
        andl      $-4, %eax                                     #30.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B12.40:                       # Preds ..B12.40 ..B12.39
                                # Execution count [1.08e+04]
        addl      $4, %r9d                                      #30.4
        movups    %xmm0, (%rdi,%rsi,4)                          #31.5
        addq      $4, %rsi                                      #30.4
        cmpl      %eax, %r9d                                    #30.4
        jb        ..B12.40      # Prob 99%                      #30.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B12.42:                       # Preds ..B12.40 ..B12.52 ..B12.51
                                # Execution count [6.00e+01]
        addl      %eax, %ecx                                    #30.4
        movslq    %ecx, %rcx                                    #30.4
        cmpl      %edx, %eax                                    #30.4
        jae       ..B12.46      # Prob 0%                       #30.4
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d
..B12.43:                       # Preds ..B12.42
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #31.33
        lea       1(%r8), %esi                                  #31.33
        cvtsi2ss  %esi, %xmm1                                   #31.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #31.33
        divss     %xmm1, %xmm0                                  #31.33
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B12.44:                       # Preds ..B12.44 ..B12.43
                                # Execution count [1.08e+04]
        incl      %eax                                          #30.4
        movss     %xmm0, (%rdi,%rcx,4)                          #31.5
        incq      %rcx                                          #30.4
        cmpl      %edx, %eax                                    #30.4
        jb        ..B12.44      # Prob 99%                      #30.4
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B12.46:                       # Preds ..B12.44 ..B12.42 ..B12.37
                                # Execution count [6.00e+01]
        incl      %r8d                                          #29.3
        addq      $720, %rdi                                    #29.3
        cmpl      $180, %r8d                                    #29.3
        jb        ..B12.29      # Prob 99%                      #29.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B12.48:                       # Preds ..B12.46 ..B12.26 ..B12.6
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #47.9
        ret                                                     #47.9
                                # LOE
..B12.49:                       # Preds ..B12.10
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #36.4
        movl      $180, %eax                                    #36.4
        xorl      %edx, %edx                                    #36.4
        jmp       ..B12.22      # Prob 100%                     #36.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B12.50:                       # Preds ..B12.18
                                # Execution count [6.00e+00]: Infreq
        xorl      %edx, %edx                                    #36.4
        jmp       ..B12.22      # Prob 100%                     #36.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B12.51:                       # Preds ..B12.30
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #30.4
        movl      $180, %edx                                    #30.4
        xorl      %eax, %eax                                    #30.4
        jmp       ..B12.42      # Prob 100%                     #30.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
..B12.52:                       # Preds ..B12.38
                                # Execution count [6.00e+00]: Infreq
        xorl      %eax, %eax                                    #30.4
        jmp       ..B12.42      # Prob 100%                     #30.4
        .align    16,0x90
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
	.cfi_endproc
# mark_end;
	.type	set2d,@function
	.size	set2d,.-set2d
	.data
# -- End  set2d
	.text
# -- Begin  check
	.text
# mark_begin;
       .align    16,0x90
	.globl check
# --- check(int)
check:
# parameter 1: %edi
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check.178:
..L179:
                                                        #50.21
        pushq     %rbp                                          #50.21
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
        subq      $48, %rsp                                     #50.21
	.cfi_def_cfa_offset 64
        xorl      %eax, %eax                                    #57.2
        pxor      %xmm2, %xmm2                                  #52.13
        movl      %edi, %ebp                                    #50.21
        movaps    %xmm2, %xmm0                                  #52.13
        movaps    %xmm2, %xmm9                                  #53.13
        movaps    %xmm2, %xmm3                                  #54.13
        movaps    %xmm2, %xmm7                                  #55.13
        movaps    %xmm2, %xmm8                                  #56.13
        xorl      %edx, %edx                                    #57.2
                                # LOE rax rdx rbx r12 r13 r14 r15 ebp xmm0 xmm2 xmm3 xmm7 xmm8 xmm9
..B13.2:                        # Preds ..B13.2 ..B13.1
                                # Execution count [3.20e+04]
        addps     a(,%rax,4), %xmm0                             #58.3
        addps     b(,%rax,4), %xmm9                             #59.3
        addps     c(,%rax,4), %xmm3                             #60.3
        addps     d(,%rax,4), %xmm7                             #61.3
        addps     e(,%rax,4), %xmm8                             #62.3
        addq      $4, %rax                                      #57.2
        cmpq      $32000, %rax                                  #57.2
        jb        ..B13.2       # Prob 99%                      #57.2
                                # LOE rax rdx rbx r12 r13 r14 r15 ebp xmm0 xmm2 xmm3 xmm7 xmm8 xmm9
..B13.3:                        # Preds ..B13.2
                                # Execution count [1.00e+00]
        movaps    %xmm0, %xmm13                                 #52.13
        movaps    %xmm8, %xmm1                                  #56.13
        movaps    %xmm3, %xmm6                                  #54.13
        movaps    %xmm9, %xmm11                                 #53.13
        movhlps   %xmm0, %xmm13                                 #52.13
        movq      %rdx, %rax                                    #67.2
        movhlps   %xmm8, %xmm1                                  #56.13
        addps     %xmm13, %xmm0                                 #52.13
        addps     %xmm1, %xmm8                                  #56.13
        movhlps   %xmm3, %xmm6                                  #54.13
        movaps    %xmm0, %xmm14                                 #52.13
        movhlps   %xmm9, %xmm11                                 #53.13
        movaps    %xmm8, %xmm5                                  #56.13
        shufps    $245, %xmm0, %xmm14                           #52.13
        addps     %xmm6, %xmm3                                  #54.13
        addps     %xmm11, %xmm9                                 #53.13
        addss     %xmm14, %xmm0                                 #52.13
        movaps    %xmm3, %xmm10                                 #54.13
        movaps    %xmm9, %xmm12                                 #53.13
        shufps    $245, %xmm8, %xmm5                            #56.13
        movaps    %xmm0, %xmm4                                  #52.13
        shufps    $245, %xmm3, %xmm10                           #54.13
        movaps    %xmm2, %xmm6                                  #65.14
        shufps    $245, %xmm9, %xmm12                           #53.13
        pxor      %xmm0, %xmm0                                  #64.14
        addss     %xmm5, %xmm8                                  #56.13
        movaps    %xmm2, %xmm5                                  #66.14
        addss     %xmm10, %xmm3                                 #54.13
        addss     %xmm12, %xmm9                                 #53.13
                                # LOE rax rdx rbx r12 r13 r14 r15 ebp xmm0 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.4:                        # Preds ..B13.4 ..B13.3
                                # Execution count [3.24e+04]
        addps     aa(,%rax,4), %xmm0                            #69.4
        addps     bb(,%rax,4), %xmm6                            #70.4
        addps     cc(,%rax,4), %xmm5                            #71.4
        addps     16+aa(,%rax,4), %xmm0                         #69.4
        addps     16+bb(,%rax,4), %xmm6                         #70.4
        addps     16+cc(,%rax,4), %xmm5                         #71.4
        addq      $8, %rax                                      #67.2
        cmpq      $32400, %rax                                  #67.2
        jb        ..B13.4       # Prob 99%                      #67.2
                                # LOE rax rdx rbx r12 r13 r14 r15 ebp xmm0 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.5:                        # Preds ..B13.4
                                # Execution count [1.00e+00]
        movaps    %xmm0, %xmm14                                 #64.14
        movaps    %xmm5, %xmm10                                 #66.14
        movaps    %xmm6, %xmm12                                 #65.14
        movq      %rdx, %rax                                    #76.2
        movhlps   %xmm0, %xmm14                                 #64.14
        movhlps   %xmm5, %xmm10                                 #66.14
        addps     %xmm14, %xmm0                                 #64.14
        addps     %xmm10, %xmm5                                 #66.14
        movhlps   %xmm6, %xmm12                                 #65.14
        movaps    %xmm0, %xmm15                                 #64.14
        movaps    %xmm5, %xmm11                                 #66.14
        movaps    %xmm2, %xmm14                                 #75.17
        shufps    $245, %xmm0, %xmm15                           #64.14
        movaps    %xmm2, %xmm10                                 #75.17
        shufps    $245, %xmm5, %xmm11                           #66.14
        addps     %xmm12, %xmm6                                 #65.14
        addss     %xmm15, %xmm0                                 #64.14
        addss     %xmm11, %xmm5                                 #66.14
        movaps    %xmm6, %xmm13                                 #65.14
        movaps    %xmm0, %xmm1                                  #64.14
        shufps    $245, %xmm6, %xmm13                           #65.14
        movaps    %xmm2, %xmm15                                 #75.17
        pxor      %xmm0, %xmm0                                  #75.17
        movaps    %xmm2, %xmm12                                 #75.17
        movaps    %xmm2, %xmm11                                 #75.17
        addss     %xmm13, %xmm6                                 #65.14
        movaps    %xmm2, %xmm13                                 #75.17
        .align    16,0x90
                                # LOE rax rdx rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B13.6:                        # Preds ..B13.6 ..B13.5
                                # Execution count [3.24e+04]
        addps     array(,%rax,4), %xmm2                         #77.3
        addps     16+array(,%rax,4), %xmm0                      #77.3
        addps     32+array(,%rax,4), %xmm15                     #77.3
        addps     48+array(,%rax,4), %xmm14                     #77.3
        addps     64+array(,%rax,4), %xmm13                     #77.3
        addps     80+array(,%rax,4), %xmm12                     #77.3
        addps     96+array(,%rax,4), %xmm11                     #77.3
        addps     112+array(,%rax,4), %xmm10                    #77.3
        addq      $32, %rax                                     #76.2
        cmpq      $32384, %rax                                  #76.2
        jb        ..B13.6       # Prob 99%                      #76.2
                                # LOE rax rdx rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B13.7:                        # Preds ..B13.6
                                # Execution count [1.00e+00]
        addps     %xmm0, %xmm2                                  #75.17
        addps     %xmm14, %xmm15                                #75.17
        addps     %xmm12, %xmm13                                #75.17
        addps     %xmm10, %xmm11                                #75.17
        addps     %xmm15, %xmm2                                 #75.17
        addps     %xmm11, %xmm13                                #75.17
        addps     %xmm13, %xmm2                                 #75.17
                                # LOE rdx rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.8:                        # Preds ..B13.8 ..B13.7
                                # Execution count [3.24e+04]
        addps     129536+array(,%rdx,4), %xmm2                  #77.3
        addq      $4, %rdx                                      #76.2
        cmpq      $16, %rdx                                     #76.2
        jb        ..B13.8       # Prob 99%                      #76.2
                                # LOE rdx rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.9:                        # Preds ..B13.8
                                # Execution count [1.00e+00]
        cmpl      $1, %ebp                                      #80.14
        je        ..B13.45      # Prob 5%                       #80.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.10:                       # Preds ..B13.9
                                # Execution count [9.49e-01]
        cmpl      $2, %ebp                                      #81.14
        je        ..B13.44      # Prob 5%                       #81.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.11:                       # Preds ..B13.10
                                # Execution count [8.98e-01]
        cmpl      $3, %ebp                                      #82.14
        je        ..B13.43      # Prob 5%                       #82.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.12:                       # Preds ..B13.11
                                # Execution count [8.47e-01]
        cmpl      $4, %ebp                                      #83.14
        je        ..B13.42      # Prob 5%                       #83.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9
..B13.13:                       # Preds ..B13.12
                                # Execution count [7.96e-01]
        cmpl      $5, %ebp                                      #84.14
        je        ..B13.41      # Prob 5%                       #84.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8 xmm9
..B13.14:                       # Preds ..B13.13
                                # Execution count [7.45e-01]
        cmpl      $11, %ebp                                     #85.14
        je        ..B13.40      # Prob 5%                       #85.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8 xmm9
..B13.15:                       # Preds ..B13.14
                                # Execution count [6.94e-01]
        cmpl      $22, %ebp                                     #86.14
        je        ..B13.39      # Prob 5%                       #86.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8 xmm9
..B13.16:                       # Preds ..B13.15
                                # Execution count [6.43e-01]
        cmpl      $33, %ebp                                     #87.14
        je        ..B13.38      # Prob 5%                       #87.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8 xmm9
..B13.17:                       # Preds ..B13.16
                                # Execution count [5.92e-01]
        testl     %ebp, %ebp                                    #88.14
        je        ..B13.27      # Prob 22%                      #88.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8 xmm9
..B13.18:                       # Preds ..B13.17
                                # Execution count [3.72e-01]
        cmpl      $12, %ebp                                     #89.14
        je        ..B13.37      # Prob 5%                       #89.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm3 xmm4 xmm5 xmm6 xmm8 xmm9
..B13.19:                       # Preds ..B13.18
                                # Execution count [3.21e-01]
        cmpl      $25, %ebp                                     #90.14
        je        ..B13.36      # Prob 5%                       #90.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm3 xmm4 xmm5 xmm6 xmm8 xmm9
..B13.20:                       # Preds ..B13.19
                                # Execution count [2.70e-01]
        cmpl      $13, %ebp                                     #91.14
        je        ..B13.35      # Prob 5%                       #91.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm3 xmm4 xmm5 xmm6 xmm9
..B13.21:                       # Preds ..B13.20
                                # Execution count [2.19e-01]
        cmpl      $123, %ebp                                    #92.14
        je        ..B13.34      # Prob 5%                       #92.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm3 xmm4 xmm5 xmm6 xmm9
..B13.22:                       # Preds ..B13.48 ..B13.21
                                # Execution count [2.19e-01]
        cmpl      $1122, %ebp                                   #93.14
        je        ..B13.33      # Prob 5%                       #93.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm4 xmm5 xmm6 xmm9
..B13.23:                       # Preds ..B13.49 ..B13.22
                                # Execution count [2.19e-01]
        cmpl      $112233, %ebp                                 #94.14
        je        ..B13.32      # Prob 5%                       #94.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm4 xmm5 xmm6 xmm9
..B13.24:                       # Preds ..B13.50 ..B13.23
                                # Execution count [2.19e-01]
        cmpl      $111, %ebp                                    #95.14
        je        ..B13.31      # Prob 5%                       #95.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm4 xmm9
..B13.25:                       # Preds ..B13.51 ..B13.24
                                # Execution count [2.19e-01]
        cmpl      $-1, %ebp                                     #96.14
        je        ..B13.30      # Prob 5%                       #96.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm9
..B13.26:                       # Preds ..B13.52 ..B13.25
                                # Execution count [2.19e-01]
        cmpl      $-12, %ebp                                    #97.14
        je        ..B13.29      # Prob 5%                       #97.14
        jmp       ..B13.28      # Prob 100%                     #97.14
                                # LOE rbx r12 r13 r14 r15 xmm9
..B13.27:                       # Preds ..B13.17
                                # Execution count [2.20e-01]
        movaps    %xmm2, %xmm0                                  #75.17
        movl      $.L_2__STRING.0, %edi                         #88.17
        movhlps   %xmm2, %xmm0                                  #75.17
        movl      $1, %eax                                      #88.17
        addps     %xmm0, %xmm2                                  #75.17
        movaps    %xmm2, %xmm1                                  #75.17
        shufps    $245, %xmm2, %xmm1                            #75.17
        addss     %xmm1, %xmm2                                  #75.17
        cvtss2sd  %xmm2, %xmm2                                  #88.17
        movaps    %xmm2, %xmm0                                  #88.17
..___tag_value_check.183:
#       printf(const char *__restrict__, ...)
        call      printf                                        #88.17
..___tag_value_check.184:
                                # LOE rbx r12 r13 r14 r15
..B13.28:                       # Preds ..B13.27 ..B13.26
                                # Execution count [1.00e+00]
        addq      $48, %rsp                                     #99.1
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #99.1
	.cfi_def_cfa_offset 8
        ret                                                     #99.1
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE
..B13.29:                       # Preds ..B13.26
                                # Execution count [5.10e-02]: Infreq
        movss     temp(%rip), %xmm0                             #97.19
        movl      $.L_2__STRING.0, %edi                         #97.19
        movl      $1, %eax                                      #97.19
        addss     %xmm9, %xmm0                                  #97.19
        cvtss2sd  %xmm0, %xmm0                                  #97.19
..___tag_value_check.190:
#       printf(const char *__restrict__, ...)
        call      printf                                        #97.19
..___tag_value_check.191:
        addq      $48, %rsp                                     #97.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #97.19
	.cfi_def_cfa_offset 8
        ret                                                     #97.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.30:                       # Preds ..B13.25
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #96.18
        movl      $.L_2__STRING.0, %edi                         #96.18
        cvtss2sd  temp(%rip), %xmm0                             #96.18
        movl      $1, %eax                                      #96.18
        addq      $48, %rsp                                     #96.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #96.18
	.cfi_def_cfa_offset 8
#       printf(const char *__restrict__, ...)
        jmp       printf                                        #96.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE
..B13.31:                       # Preds ..B13.24
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #95.19
        movl      $1, %eax                                      #95.19
        addss     %xmm1, %xmm4                                  #95.19
        cvtss2sd  %xmm4, %xmm4                                  #95.19
        movaps    %xmm4, %xmm0                                  #95.19
..___tag_value_check.202:
#       printf(const char *__restrict__, ...)
        call      printf                                        #95.19
..___tag_value_check.203:
        addq      $48, %rsp                                     #95.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #95.19
	.cfi_def_cfa_offset 8
        ret                                                     #95.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.32:                       # Preds ..B13.23
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #94.22
        movl      $1, %eax                                      #94.22
        addss     %xmm6, %xmm1                                  #94.22
        addss     %xmm5, %xmm1                                  #94.22
        cvtss2sd  %xmm1, %xmm1                                  #94.22
        movaps    %xmm1, %xmm0                                  #94.22
..___tag_value_check.209:
#       printf(const char *__restrict__, ...)
        call      printf                                        #94.22
..___tag_value_check.210:
        addq      $48, %rsp                                     #94.22
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #94.22
	.cfi_def_cfa_offset 8
        ret                                                     #94.22
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.33:                       # Preds ..B13.22
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #93.20
        movl      $1, %eax                                      #93.20
        addss     %xmm6, %xmm1                                  #93.20
        cvtss2sd  %xmm1, %xmm1                                  #93.20
        movaps    %xmm1, %xmm0                                  #93.20
..___tag_value_check.216:
#       printf(const char *__restrict__, ...)
        call      printf                                        #93.20
..___tag_value_check.217:
        addq      $48, %rsp                                     #93.20
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #93.20
	.cfi_def_cfa_offset 8
        ret                                                     #93.20
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.34:                       # Preds ..B13.21
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #92.19
        movl      $1, %eax                                      #92.19
        addss     %xmm9, %xmm4                                  #92.19
        addss     %xmm3, %xmm4                                  #92.19
        cvtss2sd  %xmm4, %xmm4                                  #92.19
        movaps    %xmm4, %xmm0                                  #92.19
..___tag_value_check.223:
#       printf(const char *__restrict__, ...)
        call      printf                                        #92.19
..___tag_value_check.224:
        addq      $48, %rsp                                     #92.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #92.19
	.cfi_def_cfa_offset 8
        ret                                                     #92.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.35:                       # Preds ..B13.20
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #91.18
        movl      $1, %eax                                      #91.18
        addss     %xmm3, %xmm4                                  #91.18
        cvtss2sd  %xmm4, %xmm4                                  #91.18
        movaps    %xmm4, %xmm0                                  #91.18
..___tag_value_check.230:
#       printf(const char *__restrict__, ...)
        call      printf                                        #91.18
..___tag_value_check.231:
        addq      $48, %rsp                                     #91.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #91.18
	.cfi_def_cfa_offset 8
        ret                                                     #91.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.36:                       # Preds ..B13.19
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #90.18
        movl      $1, %eax                                      #90.18
        addss     %xmm8, %xmm9                                  #90.18
        cvtss2sd  %xmm9, %xmm9                                  #90.18
        movaps    %xmm9, %xmm0                                  #90.18
..___tag_value_check.237:
#       printf(const char *__restrict__, ...)
        call      printf                                        #90.18
..___tag_value_check.238:
        addq      $48, %rsp                                     #90.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #90.18
	.cfi_def_cfa_offset 8
        ret                                                     #90.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.37:                       # Preds ..B13.18
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #89.18
        movl      $1, %eax                                      #89.18
        addss     %xmm9, %xmm4                                  #89.18
        cvtss2sd  %xmm4, %xmm4                                  #89.18
        movaps    %xmm4, %xmm0                                  #89.18
..___tag_value_check.244:
#       printf(const char *__restrict__, ...)
        call      printf                                        #89.18
..___tag_value_check.245:
        addq      $48, %rsp                                     #89.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #89.18
	.cfi_def_cfa_offset 8
        ret                                                     #89.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.38:                       # Preds ..B13.16
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm5, %xmm5                                  #87.18
        movl      $.L_2__STRING.0, %edi                         #87.18
        movl      $1, %eax                                      #87.18
        movaps    %xmm5, %xmm0                                  #87.18
..___tag_value_check.251:
#       printf(const char *__restrict__, ...)
        call      printf                                        #87.18
..___tag_value_check.252:
        addq      $48, %rsp                                     #87.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #87.18
	.cfi_def_cfa_offset 8
        ret                                                     #87.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.39:                       # Preds ..B13.15
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm6, %xmm6                                  #86.18
        movl      $.L_2__STRING.0, %edi                         #86.18
        movl      $1, %eax                                      #86.18
        movaps    %xmm6, %xmm0                                  #86.18
..___tag_value_check.258:
#       printf(const char *__restrict__, ...)
        call      printf                                        #86.18
..___tag_value_check.259:
        addq      $48, %rsp                                     #86.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #86.18
	.cfi_def_cfa_offset 8
        ret                                                     #86.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.40:                       # Preds ..B13.14
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm1, %xmm1                                  #85.18
        movl      $.L_2__STRING.0, %edi                         #85.18
        movl      $1, %eax                                      #85.18
        movaps    %xmm1, %xmm0                                  #85.18
..___tag_value_check.265:
#       printf(const char *__restrict__, ...)
        call      printf                                        #85.18
..___tag_value_check.266:
        addq      $48, %rsp                                     #85.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #85.18
	.cfi_def_cfa_offset 8
        ret                                                     #85.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B13.41:                       # Preds ..B13.13
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm8, %xmm8                                  #84.17
        movl      $.L_2__STRING.0, %edi                         #84.17
        movl      $1, %eax                                      #84.17
        movaps    %xmm8, %xmm0                                  #84.17
        movss     %xmm9, (%rsp)                                 #84.17[spill]
..___tag_value_check.272:
#       printf(const char *__restrict__, ...)
        call      printf                                        #84.17
..___tag_value_check.273:
                                # LOE rbx r12 r13 r14 r15 ebp
..B13.52:                       # Preds ..B13.41
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm9                                 #[spill]
        jmp       ..B13.26      # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm9
..B13.42:                       # Preds ..B13.12
                                # Execution count [5.10e-02]: Infreq
        movaps    %xmm7, %xmm1                                  #55.13
        movl      $.L_2__STRING.0, %edi                         #83.17
        movhlps   %xmm7, %xmm1                                  #55.13
        movl      $1, %eax                                      #83.17
        movss     %xmm9, (%rsp)                                 #83.17[spill]
        addps     %xmm1, %xmm7                                  #55.13
        movaps    %xmm7, %xmm2                                  #55.13
        shufps    $245, %xmm7, %xmm2                            #55.13
        addss     %xmm2, %xmm7                                  #55.13
        cvtss2sd  %xmm7, %xmm7                                  #83.17
        movaps    %xmm7, %xmm0                                  #83.17
..___tag_value_check.274:
#       printf(const char *__restrict__, ...)
        call      printf                                        #83.17
..___tag_value_check.275:
                                # LOE rbx r12 r13 r14 r15 ebp
..B13.51:                       # Preds ..B13.42
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm9                                 #[spill]
        jmp       ..B13.25      # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm9
..B13.43:                       # Preds ..B13.11
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm3, %xmm3                                  #82.17
        movl      $.L_2__STRING.0, %edi                         #82.17
        movl      $1, %eax                                      #82.17
        movaps    %xmm3, %xmm0                                  #82.17
        movss     %xmm1, 8(%rsp)                                #82.17[spill]
        movss     %xmm4, 16(%rsp)                               #82.17[spill]
        movss     %xmm9, (%rsp)                                 #82.17[spill]
..___tag_value_check.276:
#       printf(const char *__restrict__, ...)
        call      printf                                        #82.17
..___tag_value_check.277:
                                # LOE rbx r12 r13 r14 r15 ebp
..B13.50:                       # Preds ..B13.43
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm9                                 #[spill]
        movss     16(%rsp), %xmm4                               #[spill]
        movss     8(%rsp), %xmm1                                #[spill]
        jmp       ..B13.24      # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm4 xmm9
..B13.44:                       # Preds ..B13.10
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #81.17
        movl      $.L_2__STRING.0, %edi                         #81.17
        cvtss2sd  %xmm9, %xmm0                                  #81.17
        movl      $1, %eax                                      #81.17
        movss     %xmm1, 8(%rsp)                                #81.17[spill]
        movss     %xmm6, 24(%rsp)                               #81.17[spill]
        movss     %xmm5, 32(%rsp)                               #81.17[spill]
        movss     %xmm4, 16(%rsp)                               #81.17[spill]
        movss     %xmm9, (%rsp)                                 #81.17[spill]
..___tag_value_check.278:
#       printf(const char *__restrict__, ...)
        call      printf                                        #81.17
..___tag_value_check.279:
                                # LOE rbx r12 r13 r14 r15 ebp
..B13.49:                       # Preds ..B13.44
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm9                                 #[spill]
        movss     16(%rsp), %xmm4                               #[spill]
        movss     32(%rsp), %xmm5                               #[spill]
        movss     24(%rsp), %xmm6                               #[spill]
        movss     8(%rsp), %xmm1                                #[spill]
        jmp       ..B13.23      # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm4 xmm5 xmm6 xmm9
..B13.45:                       # Preds ..B13.9
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #80.17
        movl      $.L_2__STRING.0, %edi                         #80.17
        cvtss2sd  %xmm4, %xmm0                                  #80.17
        movl      $1, %eax                                      #80.17
        movss     %xmm1, 8(%rsp)                                #80.17[spill]
        movss     %xmm6, 24(%rsp)                               #80.17[spill]
        movss     %xmm5, 32(%rsp)                               #80.17[spill]
        movss     %xmm4, 16(%rsp)                               #80.17[spill]
        movss     %xmm9, (%rsp)                                 #80.17[spill]
..___tag_value_check.280:
#       printf(const char *__restrict__, ...)
        call      printf                                        #80.17
..___tag_value_check.281:
                                # LOE rbx r12 r13 r14 r15 ebp
..B13.48:                       # Preds ..B13.45
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm9                                 #[spill]
        movss     16(%rsp), %xmm4                               #[spill]
        movss     32(%rsp), %xmm5                               #[spill]
        movss     24(%rsp), %xmm6                               #[spill]
        movss     8(%rsp), %xmm1                                #[spill]
        jmp       ..B13.22      # Prob 100%                     #
        .align    16,0x90
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm4 xmm5 xmm6 xmm9
	.cfi_endproc
# mark_end;
	.type	check,@function
	.size	check,.-check
	.data
# -- End  check
	.text
# -- Begin  set1d..1
	.text
# mark_begin;
       .align    16,0x90
# --- set1d..1(float *, float, int)
set1d..1:
# parameter 1: %rdi
# parameter 2: %xmm0
# parameter 3: %esi
..B14.1:                        # Preds ..B14.0
                                # Execution count [3.33e-01]
	.cfi_startproc
..___tag_value_set1d..1.283:
..L284:
                                                        #6.1
        movq      %rdi, %r8                                     #6.1
        movq      %r8, %rax                                     #12.3
        andq      $15, %rax                                     #12.3
        testl     %eax, %eax                                    #12.3
        je        ..B14.6       # Prob 50%                      #12.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax
..B14.2:                        # Preds ..B14.1
                                # Execution count [3.33e-01]
        testb     $3, %al                                       #12.3
        jne       ..B14.18      # Prob 10%                      #12.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax
..B14.3:                        # Preds ..B14.2
                                # Execution count [3.33e-01]
        negl      %eax                                          #12.3
        xorl      %ecx, %ecx                                    #12.3
        addl      $16, %eax                                     #12.3
        xorl      %edx, %edx                                    #12.3
        shrl      $2, %eax                                      #12.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx
..B14.4:                        # Preds ..B14.4 ..B14.3
                                # Execution count [1.07e+04]
        incl      %ecx                                          #13.30
        pxor      %xmm0, %xmm0                                  #13.38
        movl      %ecx, %esi                                    #13.38
        imull     %ecx, %esi                                    #13.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #13.38
        cvtsi2ss  %esi, %xmm0                                   #13.38
        divss     %xmm0, %xmm1                                  #13.38
        movss     %xmm1, (%r8,%rdx,4)                           #13.4
        incq      %rdx                                          #13.30
        cmpl      %eax, %ecx                                    #12.3
        jb        ..B14.4       # Prob 99%                      #12.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx
..B14.6:                        # Preds ..B14.4 ..B14.1
                                # Execution count [3.33e-01]
        movl      %eax, %esi                                    #12.3
        movl      $4, %edx                                      #13.30
        negl      %esi                                          #12.3
        lea       1(%rax), %ecx                                 #13.30
        andl      $15, %esi                                     #12.3
        lea       2(%rax), %r9d                                 #13.30
        negl      %esi                                          #12.3
        lea       3(%rax), %r10d                                #13.30
        movd      %edx, %xmm0                                   #13.30
        lea       4(%rax), %r11d                                #13.30
        pshufd    $0, %xmm0, %xmm2                              #13.30
        movd      %ecx, %xmm0                                   #13.30
        movd      %r9d, %xmm1                                   #13.30
        movd      %r10d, %xmm4                                  #13.30
        lea       32000(%rsi), %edi                             #12.3
        movd      %r11d, %xmm3                                  #13.30
        movl      %edi, %edx                                    #12.3
        punpcklqdq %xmm1, %xmm0                                 #13.30
        punpcklqdq %xmm3, %xmm4                                 #13.30
        shufps    $136, %xmm4, %xmm0                            #13.30
        movl      %eax, %eax                                    #12.3
        movdqu    .L_2il0floatpacket.5(%rip), %xmm1             #13.38
                                # LOE rax rdx rbx rbp r8 r12 r13 r14 r15 esi edi xmm0 xmm1 xmm2
..B14.7:                        # Preds ..B14.7 ..B14.6
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #13.38
        movaps    %xmm0, %xmm4                                  #13.38
        psrlq     $32, %xmm3                                    #13.38
        pmuludq   %xmm0, %xmm4                                  #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        pmuludq   %xmm3, %xmm3                                  #13.38
        pand      %xmm1, %xmm4                                  #13.38
        psllq     $32, %xmm3                                    #13.38
        por       %xmm3, %xmm4                                  #13.38
        movaps    %xmm0, %xmm8                                  #13.38
        cvtdq2ps  %xmm4, %xmm5                                  #13.38
        pmuludq   %xmm0, %xmm8                                  #13.38
        rcpps     %xmm5, %xmm6                                  #13.38
        movaps    %xmm0, %xmm7                                  #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        movaps    %xmm0, %xmm12                                 #13.38
        movaps    %xmm0, %xmm11                                 #13.38
        pmuludq   %xmm0, %xmm12                                 #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        mulps     %xmm6, %xmm5                                  #13.38
        movaps    %xmm0, %xmm15                                 #13.38
        psrlq     $32, %xmm7                                    #13.38
        psrlq     $32, %xmm11                                   #13.38
        psrlq     $32, %xmm15                                   #13.38
        movaps    %xmm0, %xmm3                                  #13.38
        pand      %xmm1, %xmm8                                  #13.38
        pmuludq   %xmm7, %xmm7                                  #13.38
        pand      %xmm1, %xmm12                                 #13.38
        mulps     %xmm6, %xmm5                                  #13.38
        addps     %xmm6, %xmm6                                  #13.38
        pmuludq   %xmm11, %xmm11                                #13.38
        pmuludq   %xmm0, %xmm3                                  #13.38
        pmuludq   %xmm15, %xmm15                                #13.38
        subps     %xmm5, %xmm6                                  #13.38
        psllq     $32, %xmm7                                    #13.38
        psllq     $32, %xmm11                                   #13.38
        pand      %xmm1, %xmm3                                  #13.38
        psllq     $32, %xmm15                                   #13.38
        por       %xmm7, %xmm8                                  #13.38
        por       %xmm11, %xmm12                                #13.38
        por       %xmm15, %xmm3                                 #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        cvtdq2ps  %xmm8, %xmm9                                  #13.38
        cvtdq2ps  %xmm12, %xmm13                                #13.38
        cvtdq2ps  %xmm3, %xmm4                                  #13.38
        rcpps     %xmm9, %xmm10                                 #13.38
        rcpps     %xmm13, %xmm14                                #13.38
        rcpps     %xmm4, %xmm5                                  #13.38
        mulps     %xmm10, %xmm9                                 #13.38
        mulps     %xmm14, %xmm13                                #13.38
        mulps     %xmm5, %xmm4                                  #13.38
        mulps     %xmm10, %xmm9                                 #13.38
        addps     %xmm10, %xmm10                                #13.38
        mulps     %xmm14, %xmm13                                #13.38
        addps     %xmm14, %xmm14                                #13.38
        mulps     %xmm5, %xmm4                                  #13.38
        addps     %xmm5, %xmm5                                  #13.38
        subps     %xmm9, %xmm10                                 #13.38
        subps     %xmm13, %xmm14                                #13.38
        subps     %xmm4, %xmm5                                  #13.38
        movups    %xmm6, (%r8,%rax,4)                           #13.4
        movups    %xmm10, 16(%r8,%rax,4)                        #13.4
        movups    %xmm14, 32(%r8,%rax,4)                        #13.4
        movups    %xmm5, 48(%r8,%rax,4)                         #13.4
        addq      $16, %rax                                     #12.3
        cmpq      %rdx, %rax                                    #12.3
        jb        ..B14.7       # Prob 99%                      #12.3
                                # LOE rax rdx rbx rbp r8 r12 r13 r14 r15 esi edi xmm0 xmm1 xmm2
..B14.8:                        # Preds ..B14.7
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #12.3
        cmpl      $32000, %r9d                                  #12.3
        ja        ..B14.17      # Prob 50%                      #12.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 esi edi r9d xmm1 xmm2
..B14.9:                        # Preds ..B14.8
                                # Execution count [3.16e-01]
        movl      %edi, %eax                                    #12.3
        negl      %eax                                          #12.3
        addl      $32000, %eax                                  #12.3
        cmpl      $4, %eax                                      #12.3
        jb        ..B14.19      # Prob 10%                      #12.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax esi edi r9d xmm1 xmm2
..B14.10:                       # Preds ..B14.9
                                # Execution count [3.33e-01]
        movd      %r9d, %xmm0                                   #13.30
        lea       32002(%rsi), %r10d                            #13.30
        movl      %eax, %ecx                                    #12.3
        lea       32003(%rsi), %r11d                            #13.30
        addl      $32004, %esi                                  #13.30
        andl      $-4, %ecx                                     #12.3
        movd      %r10d, %xmm3                                  #13.30
        movd      %r11d, %xmm5                                  #13.30
        movd      %esi, %xmm4                                   #13.30
        xorl      %esi, %esi                                    #12.3
        punpcklqdq %xmm3, %xmm0                                 #13.30
        punpcklqdq %xmm4, %xmm5                                 #13.30
        shufps    $136, %xmm5, %xmm0                            #13.30
        .align    16,0x90
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx esi edi xmm0 xmm1 xmm2
..B14.11:                       # Preds ..B14.11 ..B14.10
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #13.38
        movaps    %xmm0, %xmm4                                  #13.38
        psrlq     $32, %xmm3                                    #13.38
        addl      $4, %esi                                      #12.3
        pmuludq   %xmm0, %xmm4                                  #13.38
        paddd     %xmm2, %xmm0                                  #13.30
        pmuludq   %xmm3, %xmm3                                  #13.38
        pand      %xmm1, %xmm4                                  #13.38
        psllq     $32, %xmm3                                    #13.38
        por       %xmm3, %xmm4                                  #13.38
        cvtdq2ps  %xmm4, %xmm5                                  #13.38
        rcpps     %xmm5, %xmm6                                  #13.38
        mulps     %xmm6, %xmm5                                  #13.38
        mulps     %xmm6, %xmm5                                  #13.38
        addps     %xmm6, %xmm6                                  #13.38
        subps     %xmm5, %xmm6                                  #13.38
        movups    %xmm6, (%r8,%rdx,4)                           #13.4
        addq      $4, %rdx                                      #12.3
        cmpl      %ecx, %esi                                    #12.3
        jb        ..B14.11      # Prob 99%                      #12.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx esi edi xmm0 xmm1 xmm2
..B14.13:                       # Preds ..B14.11 ..B14.19 ..B14.18
                                # Execution count [3.33e-01]
        addl      %ecx, %edi                                    #12.3
        movslq    %edi, %rdx                                    #12.3
        cmpl      %eax, %ecx                                    #12.3
        jae       ..B14.17      # Prob 0%                       #12.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx edi
..B14.15:                       # Preds ..B14.13 ..B14.15
                                # Execution count [1.07e+04]
        incl      %edi                                          #13.38
        pxor      %xmm0, %xmm0                                  #13.38
        movl      %edi, %esi                                    #13.38
        incl      %ecx                                          #12.3
        imull     %edi, %esi                                    #13.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #13.38
        cvtsi2ss  %esi, %xmm0                                   #13.38
        divss     %xmm0, %xmm1                                  #13.38
        movss     %xmm1, (%r8,%rdx,4)                           #13.4
        incq      %rdx                                          #12.3
        cmpl      %eax, %ecx                                    #12.3
        jb        ..B14.15      # Prob 99%                      #12.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx edi
..B14.17:                       # Preds ..B14.15 ..B14.13 ..B14.8
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #20.9
        ret                                                     #20.9
                                # LOE
..B14.18:                       # Preds ..B14.2
                                # Execution count [3.33e-02]: Infreq
        xorl      %edi, %edi                                    #12.3
        movl      $32000, %eax                                  #12.3
        xorl      %ecx, %ecx                                    #12.3
        jmp       ..B14.13      # Prob 100%                     #12.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax ecx edi
..B14.19:                       # Preds ..B14.9
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #12.3
        jmp       ..B14.13      # Prob 100%                     #12.3
        .align    16,0x90
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax ecx edi
	.cfi_endproc
# mark_end;
	.type	set1d..1,@function
	.size	set1d..1,.-set1d..1
	.data
# -- End  set1d..1
	.text
# -- Begin  set1d..0
	.text
# mark_begin;
       .align    16,0x90
# --- set1d..0(float *, float, int)
set1d..0:
# parameter 1: %rdi
# parameter 2: %xmm0
# parameter 3: %esi
..B15.1:                        # Preds ..B15.0
                                # Execution count [3.33e-01]
	.cfi_startproc
..___tag_value_set1d..0.286:
..L287:
                                                        #6.1
        movq      %rdi, %rdx                                    #16.3
        andq      $15, %rdx                                     #16.3
        testl     %edx, %edx                                    #16.3
        je        ..B15.6       # Prob 50%                      #16.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B15.2:                        # Preds ..B15.1
                                # Execution count [3.33e-01]
        testb     $3, %dl                                       #16.3
        jne       ..B15.19      # Prob 10%                      #16.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B15.3:                        # Preds ..B15.2
                                # Execution count [3.33e-01]
        negl      %edx                                          #16.3
        xorl      %eax, %eax                                    #16.3
        addl      $16, %edx                                     #16.3
        shrl      $2, %edx                                      #16.3
        movl      %edx, %ecx                                    #16.3
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B15.4:                        # Preds ..B15.4 ..B15.3
                                # Execution count [1.85e+00]
        movss     %xmm0, (%rdi,%rax,4)                          #17.4
        incq      %rax                                          #16.3
        cmpq      %rcx, %rax                                    #16.3
        jb        ..B15.4       # Prob 82%                      #16.3
        jmp       ..B15.7       # Prob 100%                     #16.3
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B15.6:                        # Preds ..B15.1
                                # Execution count [1.67e-01]
        xorl      %ecx, %ecx                                    #16.3
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B15.7:                        # Preds ..B15.4 ..B15.6
                                # Execution count [3.33e-01]
        negl      %edx                                          #16.3
        movaps    %xmm0, %xmm1                                  #5.5
        andl      $15, %edx                                     #16.3
        negl      %edx                                          #16.3
        shufps    $0, %xmm1, %xmm1                              #5.5
        lea       32000(%rdx), %eax                             #16.3
        movl      %eax, %esi                                    #16.3
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm0 xmm1
..B15.8:                        # Preds ..B15.8 ..B15.7
                                # Execution count [1.85e+00]
        movups    %xmm1, (%rdi,%rcx,4)                          #17.4
        movups    %xmm1, 16(%rdi,%rcx,4)                        #17.4
        movups    %xmm1, 32(%rdi,%rcx,4)                        #17.4
        movups    %xmm1, 48(%rdi,%rcx,4)                        #17.4
        addq      $16, %rcx                                     #16.3
        cmpq      %rsi, %rcx                                    #16.3
        jb        ..B15.8       # Prob 82%                      #16.3
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm0 xmm1
..B15.9:                        # Preds ..B15.8
                                # Execution count [3.00e-01]
        addl      $32001, %edx                                  #16.3
        cmpl      $32000, %edx                                  #16.3
        ja        ..B15.18      # Prob 50%                      #16.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0 xmm1
..B15.10:                       # Preds ..B15.9
                                # Execution count [3.17e-01]
        movl      %eax, %r8d                                    #16.3
        negl      %r8d                                          #16.3
        addl      $32000, %r8d                                  #16.3
        cmpl      $4, %r8d                                      #16.3
        jb        ..B15.20      # Prob 10%                      #16.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax r8d xmm0 xmm1
..B15.11:                       # Preds ..B15.10
                                # Execution count [3.33e-01]
        movl      %r8d, %ecx                                    #16.3
        xorl      %edx, %edx                                    #16.3
        andl      $-4, %ecx                                     #16.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d xmm0 xmm1
..B15.12:                       # Preds ..B15.12 ..B15.11
                                # Execution count [1.85e+00]
        addl      $4, %edx                                      #16.3
        movups    %xmm1, (%rdi,%rsi,4)                          #17.4
        addq      $4, %rsi                                      #16.3
        cmpl      %ecx, %edx                                    #16.3
        jb        ..B15.12      # Prob 82%                      #16.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d xmm0 xmm1
..B15.14:                       # Preds ..B15.12 ..B15.20 ..B15.19
                                # Execution count [3.33e-01]
        addl      %ecx, %eax                                    #16.3
        movslq    %eax, %rax                                    #16.3
        cmpl      %r8d, %ecx                                    #16.3
        jae       ..B15.18      # Prob 0%                       #16.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 ecx r8d xmm0
..B15.16:                       # Preds ..B15.14 ..B15.16
                                # Execution count [1.85e+00]
        incl      %ecx                                          #16.3
        movss     %xmm0, (%rdi,%rax,4)                          #17.4
        incq      %rax                                          #16.3
        cmpl      %r8d, %ecx                                    #16.3
        jb        ..B15.16      # Prob 82%                      #16.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 ecx r8d xmm0
..B15.18:                       # Preds ..B15.16 ..B15.14 ..B15.9
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #20.9
        ret                                                     #20.9
                                # LOE
..B15.19:                       # Preds ..B15.2
                                # Execution count [3.33e-02]: Infreq
        xorl      %eax, %eax                                    #16.3
        movl      $32000, %r8d                                  #16.3
        xorl      %ecx, %ecx                                    #16.3
        jmp       ..B15.14      # Prob 100%                     #16.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d xmm0
..B15.20:                       # Preds ..B15.10
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #16.3
        jmp       ..B15.14      # Prob 100%                     #16.3
        .align    16,0x90
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d xmm0
	.cfi_endproc
# mark_end;
	.type	set1d..0,@function
	.size	set1d..0,.-set1d..0
	.data
# -- End  set1d..0
	.text
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(char *)
init:
# parameter 1: %rdi
..B16.1:                        # Preds ..B16.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.289:
..L290:
                                                        #102.1
        pushq     %rsi                                          #102.1
	.cfi_def_cfa_offset 16
        movl      $.L_2__STRING.3, %esi                         #113.7
        movq      %rdi, %rcx                                    #102.1
..L292:                                                         #113.7
        movb      (%rdi), %dl                                   #113.7
        cmpb      (%rsi), %dl                                   #113.7
        jne       ..L294        # Prob 50%                      #113.7
        testb     %dl, %dl                                      #113.7
        je        ..L293        # Prob 50%                      #113.7
        movb      1(%rdi), %dl                                  #113.7
        cmpb      1(%rsi), %dl                                  #113.7
        jne       ..L294        # Prob 50%                      #113.7
        addq      $2, %rdi                                      #113.7
        addq      $2, %rsi                                      #113.7
        testb     %dl, %dl                                      #113.7
        jne       ..L292        # Prob 50%                      #113.7
..L293:                                                         #
        xorl      %eax, %eax                                    #113.7
        jmp       ..L295        # Prob 100%                     #113.7
..L294:                                                         #
        sbbl      %eax, %eax                                    #113.7
        orl       $1, %eax                                      #113.7
..L295:                                                         #
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B16.14:                       # Preds ..B16.1
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #113.7
        je        ..B16.7       # Prob 22%                      #113.7
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B16.2:                        # Preds ..B16.14
                                # Execution count [7.80e-01]
        movq      %rcx, %rdi                                    #118.14
        movl      $.L_2__STRING.2, %esi                         #118.14
..L296:                                                         #118.14
        movb      (%rdi), %dl                                   #118.14
        cmpb      (%rsi), %dl                                   #118.14
        jne       ..L298        # Prob 50%                      #118.14
        testb     %dl, %dl                                      #118.14
        je        ..L297        # Prob 50%                      #118.14
        movb      1(%rdi), %dl                                  #118.14
        cmpb      1(%rsi), %dl                                  #118.14
        jne       ..L298        # Prob 50%                      #118.14
        addq      $2, %rdi                                      #118.14
        addq      $2, %rsi                                      #118.14
        testb     %dl, %dl                                      #118.14
        jne       ..L296        # Prob 50%                      #118.14
..L297:                                                         #
        xorl      %eax, %eax                                    #118.14
        jmp       ..L299        # Prob 100%                     #118.14
..L298:                                                         #
        sbbl      %eax, %eax                                    #118.14
        orl       $1, %eax                                      #118.14
..L299:                                                         #
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B16.15:                       # Preds ..B16.2
                                # Execution count [7.80e-01]
        testl     %eax, %eax                                    #118.14
        je        ..B16.5       # Prob 22%                      #118.14
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B16.3:                        # Preds ..B16.15
                                # Execution count [6.08e-01]
        movq      %rcx, %rdi                                    #121.14
        movl      $.L_2__STRING.1, %esi                         #121.14
..L300:                                                         #121.14
        movb      (%rdi), %dl                                   #121.14
        cmpb      (%rsi), %dl                                   #121.14
        jne       ..L302        # Prob 50%                      #121.14
        testb     %dl, %dl                                      #121.14
        je        ..L301        # Prob 50%                      #121.14
        movb      1(%rdi), %dl                                  #121.14
        cmpb      1(%rsi), %dl                                  #121.14
        jne       ..L302        # Prob 50%                      #121.14
        addq      $2, %rdi                                      #121.14
        addq      $2, %rsi                                      #121.14
        testb     %dl, %dl                                      #121.14
        jne       ..L300        # Prob 50%                      #121.14
..L301:                                                         #
        xorl      %eax, %eax                                    #121.14
        jmp       ..L303        # Prob 100%                     #121.14
..L302:                                                         #
        sbbl      %eax, %eax                                    #121.14
        orl       $1, %eax                                      #121.14
..L303:                                                         #
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B16.16:                       # Preds ..B16.3
                                # Execution count [6.08e-01]
        testl     %eax, %eax                                    #121.14
        jne       ..B16.11      # Prob 78%                      #121.14
                                # LOE rbx rbp r12 r13 r14 r15
..B16.4:                        # Preds ..B16.16
                                # Execution count [1.34e-01]
        movss     .L_2il0floatpacket.7(%rip), %xmm0             #122.3
        movl      $a, %edi                                      #122.3
        movl      $1, %esi                                      #122.3
..___tag_value_init.304:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #122.3
..___tag_value_init.305:
        jmp       ..B16.11      # Prob 100%                     #122.3
                                # LOE rbx rbp r12 r13 r14 r15
..B16.5:                        # Preds ..B16.15
                                # Execution count [1.72e-01]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #119.3
        movl      $a, %edi                                      #119.3
        movl      $1, %esi                                      #119.3
..___tag_value_init.306:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #119.3
..___tag_value_init.307:
                                # LOE rbx rbp r12 r13 r14 r15
..B16.6:                        # Preds ..B16.5
                                # Execution count [1.72e-01]
        movl      $b, %edi                                      #120.3
        movl      $-2, %esi                                     #120.3
        pxor      %xmm0, %xmm0                                  #120.3
..___tag_value_init.308:
#       set1d..1(float *, float, int)
        call      set1d..1                                      #120.3
..___tag_value_init.309:
        jmp       ..B16.11      # Prob 100%                     #120.3
                                # LOE rbx rbp r12 r13 r14 r15
..B16.7:                        # Preds ..B16.14
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #114.3
        movl      $a, %edi                                      #114.3
        movl      $1, %esi                                      #114.3
..___tag_value_init.310:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #114.3
..___tag_value_init.311:
                                # LOE rbx rbp r12 r13 r14 r15
..B16.8:                        # Preds ..B16.7
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #115.3
        movl      $b, %edi                                      #115.3
        movl      $1, %esi                                      #115.3
..___tag_value_init.312:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #115.3
..___tag_value_init.313:
                                # LOE rbx rbp r12 r13 r14 r15
..B16.9:                        # Preds ..B16.8
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #116.3
        movl      $c, %edi                                      #116.3
        movl      $1, %esi                                      #116.3
..___tag_value_init.314:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #116.3
..___tag_value_init.315:
                                # LOE rbx rbp r12 r13 r14 r15
..B16.10:                       # Preds ..B16.9
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #117.3
        movl      $d, %edi                                      #117.3
        movl      $1, %esi                                      #117.3
..___tag_value_init.316:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #117.3
..___tag_value_init.317:
                                # LOE rbx rbp r12 r13 r14 r15
..B16.11:                       # Preds ..B16.10 ..B16.16 ..B16.4 ..B16.6
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #125.9
        popq      %rcx                                          #125.9
	.cfi_def_cfa_offset 8
        ret                                                     #125.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	init,@function
	.size	init,.-init
	.data
# -- End  init
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.3:
	.long	0x3f800000,0x3f800000,0x3f800000,0x3f800000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,16
	.align 16
.L_2il0floatpacket.4:
	.long	0x3f7d70a4,0x3f7d70a4,0x3f7d70a4,0x3f7d70a4
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,16
	.align 16
.L_2il0floatpacket.5:
	.long	0xffffffff,0x00000000,0xffffffff,0x00000000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,16
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 4
.L_2il0floatpacket.1:
	.long	0x40000000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,4
	.align 4
.L_2il0floatpacket.2:
	.long	0x3f800000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,4
	.align 4
.L_2il0floatpacket.6:
	.long	0x358637bd
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,4
	.align 4
.L_2il0floatpacket.7:
	.long	0x3f800008
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.15:
	.long	1635020628
	.long	1970413676
	.long	1852403310
	.long	1769218151
	.long	154821997
	.long	892216608
	.long	663654
	.type	.L_2__STRING.15,@object
	.size	.L_2__STRING.15,28
	.align 4
.L_2__STRING.3:
	.long	842281587
	.word	32
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	842281555
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.long	169895461
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,5
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	892809843
	.word	32
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	926036563
	.long	622856501
	.long	543568430
	.word	2313
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	842085235
	.word	32
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	842085203
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	925971315
	.word	32
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.10:
	.long	925971283
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	842084723
	.word	32
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,6
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
