# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "-Ofast -std=c99 -fno-inline-functions -S -o tsc_icc.s";
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
                                                          #362.11
        pushq     %rbp                                          #362.11
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #362.11
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #362.11
        pushq     %rbx                                          #362.11
        subq      $120, %rsp                                    #362.11
        xorl      %esi, %esi                                    #362.11
        movl      $3, %edi                                      #362.11
        call      __intel_new_feature_proc_init                 #362.11
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.19:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #362.11
        movl      $16, %edi                                     #366.20
        movl      $128000, %esi                                 #366.20
        orl       $32832, (%rsp)                                #362.11
        ldmxcsr   (%rsp)                                        #362.11
#       memalign(size_t, size_t)
        call      memalign                                      #366.20
                                # LOE rax r12 r13 r14 r15
..B1.2:                         # Preds ..B1.19
                                # Execution count [1.00e+00]
        movq      %rax, %rdi                                    #368.2
        lea       (%rsp), %rsi                                  #368.2
        lea       4(%rsp), %rdx                                 #368.2
..___tag_value_main.7:
#       set(int *, float *, float *)
        call      set                                           #368.2
..___tag_value_main.8:
                                # LOE r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_0, %edi               #369.2
        call      puts                                          #369.2
                                # LOE r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #371.12
                                # LOE rax r12 r13 r14 r15
..B1.20:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #371.12
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.20
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_1, %edi               #373.2
        call      puts                                          #373.2
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        movss     (%rsp), %xmm0                                 #374.2
        movss     4(%rsp), %xmm1                                #374.2
..___tag_value_main.9:
#       s242(float, float)
        call      s242                                          #374.2
..___tag_value_main.10:
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
..___tag_value_main.11:
#       s2275()
        call      s2275                                         #375.2
..___tag_value_main.12:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_2, %edi               #378.2
        call      puts                                          #378.2
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
..___tag_value_main.13:
#       s112()
        call      s112                                          #379.2
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        movl      $il0_peep_printf_format_3, %edi               #382.2
        call      puts                                          #382.2
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
..___tag_value_main.15:
#       s312()
        call      s312                                          #383.2
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
..___tag_value_main.17:
#       s317()
        call      s317                                          #384.2
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #386.10
                                # LOE rax rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #388.2
        pxor      %xmm0, %xmm0                                  #388.2
        cvtsi2sdq %rax, %xmm0                                   #388.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #388.2
        movl      $.L_2__STRING.16, %edi                        #388.2
        movl      $1, %eax                                      #388.2
..___tag_value_main.19:
#       printf(const char *__restrict__, ...)
        call      printf                                        #388.2
..___tag_value_main.20:
                                # LOE r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #390.9
        addq      $120, %rsp                                    #390.9
	.cfi_restore 3
        popq      %rbx                                          #390.9
        movq      %rbp, %rsp                                    #390.9
        popq      %rbp                                          #390.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #390.9
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
                                                         #200.40
        pushq     %r12                                          #200.40
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #200.40
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #200.40
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        movq      %rsi, %r12                                    #200.40
        movq      %rdi, %r13                                    #200.40
        movl      $16, %edi                                     #201.16
        movl      $128000, %esi                                 #201.16
        movq      %rdx, %r14                                    #200.40
#       memalign(size_t, size_t)
        call      memalign                                      #201.16
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        movl      $10, %edi                                     #202.2
        movq      %rax, xx(%rip)                                #201.2
        call      putchar                                       #202.2
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2
                                # Execution count [1.00e+00]
        xorl      %edx, %edx                                    #203.2
        xorl      %eax, %eax                                    #203.2
        .align    16,0x90
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.4:                         # Preds ..B2.4 ..B2.3
                                # Execution count [3.20e+03]
        movslq    %eax, %rax                                    #204.3
        incl      %edx                                          #203.2
        lea       4(%rax), %ecx                                 #204.14
        lea       2(%rax), %esi                                 #205.16
        lea       3(%rax), %edi                                 #207.16
        movl      %ecx, (%r13,%rax,4)                           #204.3
        lea       1(%rax), %r8d                                 #208.16
        movl      %esi, 4(%r13,%rax,4)                          #205.3
        lea       9(%rax), %r9d                                 #204.14
        movl      %eax, 8(%r13,%rax,4)                          #206.3
        lea       7(%rax), %r10d                                #205.16
        movl      %edi, 12(%r13,%rax,4)                         #207.3
        lea       5(%rax), %r11d                                #204.3
        movl      %r8d, 16(%r13,%rax,4)                         #208.3
        lea       8(%rax), %ecx                                 #207.16
        movl      %r9d, 20(%r13,%rax,4)                         #204.3
        lea       6(%rax), %esi                                 #208.16
        movl      %r10d, 24(%r13,%rax,4)                        #205.3
        movl      %r11d, 28(%r13,%rax,4)                        #206.3
        movl      %ecx, 32(%r13,%rax,4)                         #207.3
        movl      %esi, 36(%r13,%rax,4)                         #208.3
        addl      $10, %eax                                     #203.2
        cmpl      $3200, %edx                                   #203.2
        jb        ..B2.4        # Prob 99%                      #203.2
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.5:                         # Preds ..B2.4
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #212.2
        movl      $a, %edi                                      #212.2
        movl      $1, %esi                                      #212.2
..___tag_value_set.33:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #212.2
..___tag_value_set.34:
                                # LOE rbx rbp r12 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #213.2
        movl      $b, %edi                                      #213.2
        movl      $1, %esi                                      #213.2
..___tag_value_set.35:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #213.2
..___tag_value_set.36:
                                # LOE rbx rbp r12 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #214.2
        movl      $c, %edi                                      #214.2
        movl      $1, %esi                                      #214.2
..___tag_value_set.37:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #214.2
..___tag_value_set.38:
                                # LOE rbx rbp r12 r14 r15
..B2.8:                         # Preds ..B2.7
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #215.2
        movl      $d, %edi                                      #215.2
        movl      $1, %esi                                      #215.2
..___tag_value_set.39:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #215.2
..___tag_value_set.40:
                                # LOE rbx rbp r12 r14 r15
..B2.9:                         # Preds ..B2.8
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #216.2
        movl      $e, %edi                                      #216.2
        movl      $1, %esi                                      #216.2
..___tag_value_set.41:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #216.2
..___tag_value_set.42:
                                # LOE rbx rbp r12 r14 r15
..B2.10:                        # Preds ..B2.9
                                # Execution count [1.00e+00]
        movl      $aa, %edi                                     #217.2
        movl      $-1, %esi                                     #217.2
        pxor      %xmm0, %xmm0                                  #217.2
..___tag_value_set.43:
#       set2d..0(float (*)[180], float, int)
        call      set2d..0                                      #217.2
..___tag_value_set.44:
                                # LOE rbx rbp r12 r14 r15
..B2.11:                        # Preds ..B2.10
                                # Execution count [1.00e+00]
        movl      $bb, %edi                                     #218.2
        movl      $-1, %esi                                     #218.2
        pxor      %xmm0, %xmm0                                  #218.2
..___tag_value_set.45:
#       set2d..0(float (*)[180], float, int)
        call      set2d..0                                      #218.2
..___tag_value_set.46:
                                # LOE rbx rbp r12 r14 r15
..B2.12:                        # Preds ..B2.11
                                # Execution count [1.00e+00]
        movl      $cc, %edi                                     #219.2
        movl      $-1, %esi                                     #219.2
        pxor      %xmm0, %xmm0                                  #219.2
..___tag_value_set.47:
#       set2d..0(float (*)[180], float, int)
        call      set2d..0                                      #219.2
..___tag_value_set.48:
                                # LOE rbx rbp r12 r14 r15
..B2.13:                        # Preds ..B2.12
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #221.2
                                # LOE rax rbx rbp r12 r14 r15
..B2.14:                        # Preds ..B2.14 ..B2.13
                                # Execution count [3.20e+04]
        movl      %eax, %edx                                    #222.3
        incl      %edx                                          #222.16
        andl      $3, %edx                                      #222.21
        incl      %edx                                          #222.23
        movl      %edx, indx(,%rax,4)                           #222.3
        incq      %rax                                          #221.2
        cmpq      $32000, %rax                                  #221.2
        jb        ..B2.14       # Prob 99%                      #221.2
                                # LOE rax rbx rbp r12 r14 r15
..B2.15:                        # Preds ..B2.14
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #224.3
        movss     %xmm0, (%r12)                                 #224.3
        movl      $1073741824, (%r14)                           #225.3
	.cfi_restore 14
        popq      %r14                                          #227.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #227.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #227.1
	.cfi_def_cfa_offset 8
        ret                                                     #227.1
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
                                                         #96.1
        movq      %rdi, %r8                                     #96.1
        xorl      %edi, %edi                                    #101.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 edi
..B3.2:                         # Preds ..B3.19 ..B3.1
                                # Execution count [6.00e+01]
        movq      %r8, %rdx                                     #102.4
        andq      $15, %rdx                                     #102.4
        testl     %edx, %edx                                    #102.4
        je        ..B3.7        # Prob 50%                      #102.4
                                # LOE rbx rbp r8 r12 r13 r14 r15 edx edi
..B3.3:                         # Preds ..B3.2
                                # Execution count [6.00e+01]
        testb     $3, %dl                                       #102.4
        jne       ..B3.21       # Prob 10%                      #102.4
                                # LOE rbx rbp r8 r12 r13 r14 r15 edx edi
..B3.4:                         # Preds ..B3.3
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%rdi), %esi                                 #103.33
        cvtsi2ss  %esi, %xmm1                                   #103.33
        negl      %edx                                          #102.4
        xorl      %ecx, %ecx                                    #102.4
        addl      $16, %edx                                     #102.4
        shrl      $2, %edx                                      #102.4
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        movl      %edx, %eax                                    #102.4
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rax rcx rbx rbp r8 r12 r13 r14 r15 edx edi xmm0
..B3.5:                         # Preds ..B3.5 ..B3.4
                                # Execution count [1.08e+04]
        movss     %xmm0, (%r8,%rcx,4)                           #103.5
        incq      %rcx                                          #102.4
        cmpq      %rax, %rcx                                    #102.4
        jb        ..B3.5        # Prob 99%                      #102.4
        jmp       ..B3.8        # Prob 100%                     #102.4
                                # LOE rax rcx rbx rbp r8 r12 r13 r14 r15 edx edi xmm0
..B3.7:                         # Preds ..B3.2
                                # Execution count [3.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%rdi), %ecx                                 #103.33
        cvtsi2ss  %ecx, %xmm1                                   #103.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        xorl      %eax, %eax                                    #102.4
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rax rbx rbp r8 r12 r13 r14 r15 edx edi xmm0
..B3.8:                         # Preds ..B3.5 ..B3.7
                                # Execution count [6.00e+01]
        negl      %edx                                          #102.4
        lea       (%r8,%rax,4), %r9                             #102.4
        addl      $4, %edx                                      #102.4
        andl      $7, %edx                                      #102.4
        negl      %edx                                          #102.4
        shufps    $0, %xmm0, %xmm0                              #103.33
        lea       180(%rdx), %ecx                               #102.4
        movl      %ecx, %esi                                    #102.4
                                # LOE rax rbx rbp rsi r8 r9 r12 r13 r14 r15 edx ecx edi xmm0
..B3.9:                         # Preds ..B3.9 ..B3.8
                                # Execution count [1.08e+04]
        addq      $8, %rax                                      #102.4
        movups    %xmm0, (%r9)                                  #103.5
        movups    %xmm0, 16(%r9)                                #103.5
        addq      $32, %r9                                      #102.4
        cmpq      %rsi, %rax                                    #102.4
        jb        ..B3.9        # Prob 99%                      #102.4
                                # LOE rax rbx rbp rsi r8 r9 r12 r13 r14 r15 edx ecx edi xmm0
..B3.10:                        # Preds ..B3.9
                                # Execution count [6.00e+01]
        addl      $181, %edx                                    #102.4
        cmpl      $180, %edx                                    #102.4
        ja        ..B3.19       # Prob 50%                      #102.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 ecx edi xmm0
..B3.11:                        # Preds ..B3.10
                                # Execution count [6.00e+01]
        movl      %ecx, %edx                                    #102.4
        negl      %edx                                          #102.4
        addl      $180, %edx                                    #102.4
        cmpl      $4, %edx                                      #102.4
        jb        ..B3.22       # Prob 10%                      #102.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 edx ecx edi xmm0
..B3.12:                        # Preds ..B3.11
                                # Execution count [6.00e+01]
        movl      %edx, %eax                                    #102.4
        xorl      %r9d, %r9d                                    #102.4
        andl      $-4, %eax                                     #102.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 eax edx ecx edi r9d xmm0
..B3.13:                        # Preds ..B3.13 ..B3.12
                                # Execution count [1.08e+04]
        addl      $4, %r9d                                      #102.4
        movups    %xmm0, (%r8,%rsi,4)                           #103.5
        addq      $4, %rsi                                      #102.4
        cmpl      %eax, %r9d                                    #102.4
        jb        ..B3.13       # Prob 99%                      #102.4
                                # LOE rbx rbp rsi r8 r12 r13 r14 r15 eax edx ecx edi r9d xmm0
..B3.15:                        # Preds ..B3.13 ..B3.22 ..B3.21
                                # Execution count [6.00e+01]
        addl      %eax, %ecx                                    #102.4
        movslq    %ecx, %rcx                                    #102.4
        cmpl      %edx, %eax                                    #102.4
        jae       ..B3.19       # Prob 0%                       #102.4
                                # LOE rcx rbx rbp r8 r12 r13 r14 r15 eax edx edi
..B3.16:                        # Preds ..B3.15
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%rdi), %esi                                 #103.33
        cvtsi2ss  %esi, %xmm1                                   #103.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rcx rbx rbp r8 r12 r13 r14 r15 eax edx edi xmm0
..B3.17:                        # Preds ..B3.17 ..B3.16
                                # Execution count [1.08e+04]
        incl      %eax                                          #102.4
        movss     %xmm0, (%r8,%rcx,4)                           #103.5
        incq      %rcx                                          #102.4
        cmpl      %edx, %eax                                    #102.4
        jb        ..B3.17       # Prob 99%                      #102.4
                                # LOE rcx rbx rbp r8 r12 r13 r14 r15 eax edx edi xmm0
..B3.19:                        # Preds ..B3.17 ..B3.15 ..B3.10
                                # Execution count [6.00e+01]
        incl      %edi                                          #101.3
        addq      $720, %r8                                     #101.3
        cmpl      $180, %edi                                    #101.3
        jb        ..B3.2        # Prob 99%                      #101.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 edi
..B3.20:                        # Preds ..B3.19
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #119.9
        ret                                                     #119.9
                                # LOE
..B3.21:                        # Preds ..B3.3
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #102.4
        movl      $180, %edx                                    #102.4
        xorl      %eax, %eax                                    #102.4
        jmp       ..B3.15       # Prob 100%                     #102.4
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax edx ecx edi
..B3.22:                        # Preds ..B3.11
                                # Execution count [6.00e+00]: Infreq
        xorl      %eax, %eax                                    #102.4
        jmp       ..B3.15       # Prob 100%                     #102.4
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
                                                         #232.1
        subq      $344, %rsp                                    #232.1
	.cfi_def_cfa_offset 352
        movl      $.L_2__STRING.3, %edi                         #239.2
        movss     %xmm1, 64(%rsp)                               #232.1[spill]
        movss     %xmm0, 56(%rsp)                               #232.1[spill]
..___tag_value_s242.62:
#       init(char *)
        call      init                                          #239.2
..___tag_value_s242.63:
                                # LOE rbx rbp r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #240.12
                                # LOE rax rbx rbp r12 r13 r14 r15
..B4.35:                        # Preds ..B4.2
                                # Execution count [1.00e+00]
        movq      %rax, (%rsp)                                  #240.12[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B4.3:                         # Preds ..B4.35
                                # Execution count [0.00e+00]
        movss     56(%rsp), %xmm0                               #244.22[spill]
        xorl      %eax, %eax                                    #242.2
        movl      $b, %esi                                      #246.3
        movl      $c, %edx                                      #246.3
        movl      $d, %ecx                                      #246.3
        movl      $e, %r8d                                      #246.3
        movl      $aa, %r9d                                     #246.3
        movq      %r12, 8(%rsp)                                 #246.3[spill]
        movq      %r13, 16(%rsp)                                #246.3[spill]
        movq      %r14, 24(%rsp)                                #246.3[spill]
	.cfi_offset 12, -344
	.cfi_offset 13, -336
	.cfi_offset 14, -328
        movq      %rdx, %r14                                    #246.3
        movq      %r15, 32(%rsp)                                #246.3[spill]
	.cfi_offset 15, -320
        movq      %rcx, %r15                                    #246.3
        movq      %rbx, 40(%rsp)                                #246.3[spill]
	.cfi_offset 3, -312
        movl      %eax, %ebx                                    #246.3
        movq      %rbp, 48(%rsp)                                #246.3[spill]
	.cfi_offset 6, -304
        movq      %rsi, %rbp                                    #246.3
        movq      %r8, %r13                                     #246.3
        movq      %r9, %r12                                     #246.3
        addss     64(%rsp), %xmm0                               #244.22[spill]
        movss     %xmm0, 56(%rsp)                               #244.22[spill]
                                # LOE rbp r12 r13 r14 r15 ebx
..B4.4:                         # Preds ..B4.25 ..B4.3
                                # Execution count [0.00e+00]
        xorl      %r10d, %r10d                                  #243.3
        movl      $31999, %ebp                                  #243.3
        movss     56(%rsp), %xmm0                               #244.22[spill]
        movss     56(%rsp), %xmm1                               #243.3[spill]
        shufps    $0, %xmm0, %xmm0                              #244.22
        movl      %ebx, 64(%rsp)                                #243.3[spill]
        xorl      %ebx, %ebx                                    #243.3
                                # LOE r12 r13 r14 r15 ebx ebp r10d xmm0 xmm1
..B4.5:                         # Preds ..B4.23 ..B4.4
                                # Execution count [1.99e+05]
        movl      %r10d, %edi                                   #243.3
        shll      $6, %edi                                      #243.3
        movl      %edi, %eax                                    #243.3
        negl      %eax                                          #243.3
        lea       64(%rdi), %r11d                               #243.3
        cmpl      $31999, %r11d                                 #243.3
        cmova     %ebp, %r11d                                   #243.3
        lea       (%rax,%r11), %esi                             #243.3
        cmpl      $11, %esi                                     #243.3
        jb        ..B4.31       # Prob 10%                      #243.3
                                # LOE r12 r13 r14 r15 eax ebx ebp esi edi r10d r11d xmm0 xmm1
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.99e+05]
        xorl      %ecx, %ecx                                    #243.3
        lea       5(%rax,%r11), %eax                            #243.3
        movl      %r10d, %r11d                                  #244.32
        andl      $7, %eax                                      #243.3
        negl      %eax                                          #243.3
        movq      %r11, %rdx                                    #244.46
        shlq      $8, %rdx                                      #244.46
        addl      %esi, %eax                                    #243.3
                                # LOE rdx rcx r11 r12 r13 r14 r15 eax ebx ebp esi edi r10d xmm0 xmm1
..B4.7:                         # Preds ..B4.7 ..B4.6
                                # Execution count [6.35e+09]
        movss     4+b(%rdx,%rcx,4), %xmm2                       #244.32
        addss     %xmm1, %xmm2                                  #244.32
        addss     4+c(%rdx,%rcx,4), %xmm2                       #244.39
        addss     4+d(%rdx,%rcx,4), %xmm2                       #244.46
        movss     %xmm2, 80(%rsp,%rcx,4)                        #244.4
        incq      %rcx                                          #243.3
        cmpq      $3, %rcx                                      #243.3
        jb        ..B4.7        # Prob 99%                      #243.3
                                # LOE rdx rcx r11 r12 r13 r14 r15 eax ebx ebp esi edi r10d xmm0 xmm1
..B4.8:                         # Preds ..B4.7
                                # Execution count [1.99e+05]
        shlq      $6, %r11                                      #244.32
        movl      $3, %ecx                                      #243.3
        movslq    %eax, %rdx                                    #243.3
        .align    16,0x90
                                # LOE rdx rcx r11 r12 r13 r14 r15 eax ebx ebp esi edi r10d xmm0 xmm1
..B4.9:                         # Preds ..B4.9 ..B4.8
                                # Execution count [6.35e+09]
        lea       1(%rcx,%r11), %r8                             #244.32
        movups    b(,%r8,4), %xmm2                              #244.32
        lea       5(%rcx,%r11), %r9                             #244.32
        movups    b(,%r9,4), %xmm3                              #244.32
        addps     %xmm0, %xmm2                                  #244.32
        addps     %xmm0, %xmm3                                  #244.32
        addps     c(,%r8,4), %xmm2                              #244.39
        addps     c(,%r9,4), %xmm3                              #244.39
        addps     d(,%r8,4), %xmm2                              #244.46
        addps     d(,%r9,4), %xmm3                              #244.46
        movups    %xmm2, 80(%rsp,%rcx,4)                        #244.4
        movups    %xmm3, 96(%rsp,%rcx,4)                        #244.4
        addq      $8, %rcx                                      #243.3
        cmpq      %rdx, %rcx                                    #243.3
        jb        ..B4.9        # Prob 99%                      #243.3
                                # LOE rdx rcx r11 r12 r13 r14 r15 eax ebx ebp esi edi r10d xmm0 xmm1
..B4.10:                        # Preds ..B4.9
                                # Execution count [1.79e+05]
        lea       1(%rax), %r11d                                #243.3
        cmpl      %esi, %r11d                                   #243.3
        ja        ..B4.20       # Prob 50%                      #243.3
                                # LOE r12 r13 r14 r15 eax ebx ebp esi edi r10d xmm0 xmm1
..B4.11:                        # Preds ..B4.10
                                # Execution count [1.89e+05]
        movl      %esi, %edx                                    #243.3
        subl      %eax, %edx                                    #243.3
        cmpl      $4, %edx                                      #243.3
        jb        ..B4.30       # Prob 10%                      #243.3
                                # LOE r12 r13 r14 r15 eax edx ebx ebp esi edi r10d xmm0 xmm1
..B4.12:                        # Preds ..B4.11
                                # Execution count [1.99e+05]
        movl      %edx, %r8d                                    #243.3
        lea       (%rax,%rdi), %r11d                            #244.32
        andl      $-4, %r8d                                     #243.3
        xorl      %ecx, %ecx                                    #243.3
        movslq    %r11d, %r11                                   #244.32
        movslq    %r8d, %r8                                     #243.3
                                # LOE rcx r8 r11 r12 r13 r14 r15 eax edx ebx ebp esi edi r10d xmm0 xmm1
..B4.13:                        # Preds ..B4.13 ..B4.12
                                # Execution count [6.35e+09]
        lea       1(%rcx,%r11), %r9                             #244.32
        movups    b(,%r9,4), %xmm2                              #244.32
        addps     %xmm0, %xmm2                                  #244.32
        addps     c(,%r9,4), %xmm2                              #244.39
        addps     d(,%r9,4), %xmm2                              #244.46
        movl      %ecx, %r9d                                    #244.4
        addl      %eax, %r9d                                    #244.4
        addq      $4, %rcx                                      #243.3
        movslq    %r9d, %r9                                     #244.4
        movups    %xmm2, 80(%rsp,%r9,4)                         #244.4
        cmpq      %r8, %rcx                                     #243.3
        jb        ..B4.13       # Prob 99%                      #243.3
                                # LOE rcx r8 r11 r12 r13 r14 r15 eax edx ebx ebp esi edi r10d xmm0 xmm1
..B4.15:                        # Preds ..B4.13 ..B4.30 ..B4.32
                                # Execution count [1.99e+05]
        movslq    %edx, %rdx                                    #243.3
        cmpq      %rdx, %r8                                     #243.3
        jae       ..B4.19       # Prob 0%                       #243.3
                                # LOE rdx r8 r12 r13 r14 r15 eax ebx ebp esi edi r10d xmm0 xmm1
..B4.16:                        # Preds ..B4.15
                                # Execution count [1.99e+05]
        addl      %eax, %edi                                    #244.46
        movslq    %edi, %rdi                                    #244.32
        .align    16,0x90
                                # LOE rdx rdi r8 r12 r13 r14 r15 eax ebx ebp esi r10d xmm0 xmm1
..B4.17:                        # Preds ..B4.17 ..B4.16
                                # Execution count [6.35e+09]
        lea       (,%r8,4), %r11                                #244.32
        movss     4+b(%r11,%rdi,4), %xmm2                       #244.32
        addss     %xmm1, %xmm2                                  #244.32
        addss     4+c(%r11,%rdi,4), %xmm2                       #244.39
        addss     4+d(%r11,%rdi,4), %xmm2                       #244.46
        movl      %r8d, %r11d                                   #244.4
        addl      %eax, %r11d                                   #244.4
        incq      %r8                                           #243.3
        movslq    %r11d, %r11                                   #244.4
        movss     %xmm2, 80(%rsp,%r11,4)                        #244.4
        cmpq      %rdx, %r8                                     #243.3
        jb        ..B4.17       # Prob 99%                      #243.3
                                # LOE rdx rdi r8 r12 r13 r14 r15 eax ebx ebp esi r10d xmm0 xmm1
..B4.19:                        # Preds ..B4.17 ..B4.15 ..B4.31
                                # Execution count [1.09e+05]
        testl     %esi, %esi                                    #243.3
        je        ..B4.23       # Prob 0%                       #243.3
                                # LOE r12 r13 r14 r15 ebx ebp esi r10d xmm0 xmm1
..B4.20:                        # Preds ..B4.19 ..B4.10
                                # Execution count [1.99e+05]
        movl      %r10d, %eax                                   #244.4
        xorl      %edi, %edi                                    #243.3
        shlq      $8, %rax                                      #244.4
        movslq    %esi, %rsi                                    #243.3
        movss     a(%rax), %xmm2                                #244.4
                                # LOE rax rsi rdi r12 r13 r14 r15 ebx ebp r10d xmm0 xmm1 xmm2
..B4.21:                        # Preds ..B4.21 ..B4.20
                                # Execution count [6.35e+09]
        addss     80(%rsp,%rdi,4), %xmm2                        #243.3
        movss     %xmm2, 4+a(%rax,%rdi,4)                       #244.4
        incq      %rdi                                          #243.3
        cmpq      %rsi, %rdi                                    #243.3
        jb        ..B4.21       # Prob 99%                      #243.3
                                # LOE rax rsi rdi r12 r13 r14 r15 ebx ebp r10d xmm0 xmm1 xmm2
..B4.23:                        # Preds ..B4.21 ..B4.19
                                # Execution count [6.35e+09]
        incl      %r10d                                         #243.3
        cmpl      $500, %r10d                                   #243.3
        jb        ..B4.5        # Prob 99%                      #243.3
                                # LOE r12 r13 r14 r15 ebx ebp r10d xmm0 xmm1
..B4.24:                        # Preds ..B4.23
                                # Execution count [1.99e+05]
        movl      $b, %ebp                                      #
        movl      $a, %edi                                      #246.3
        movl      64(%rsp), %ebx                                #[spill]
        movq      %rbp, %rsi                                    #246.3
        pushq     $cc                                           #246.3
	.cfi_def_cfa_offset 360
        movq      %r14, %rdx                                    #246.3
        movq      %r15, %rcx                                    #246.3
        movq      %r13, %r8                                     #246.3
        movq      %r12, %r9                                     #246.3
        pxor      %xmm0, %xmm0                                  #246.3
        pushq     $bb                                           #246.3
	.cfi_def_cfa_offset 368
..___tag_value_s242.72:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #246.3
..___tag_value_s242.73:
                                # LOE rbp r12 r13 r14 r15 ebx
..B4.36:                        # Preds ..B4.24
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #246.3
	.cfi_def_cfa_offset 352
                                # LOE rbp r12 r13 r14 r15 ebx
..B4.25:                        # Preds ..B4.36
                                # Execution count [1.99e+05]
        incl      %ebx                                          #242.2
        cmpl      $200000, %ebx                                 #242.2
        jb        ..B4.4        # Prob 99%                      #242.2
                                # LOE rbp r12 r13 r14 r15 ebx
..B4.26:                        # Preds ..B4.25
                                # Execution count [1.00e+00]
        movq      8(%rsp), %r12                                 #[spill]
	.cfi_restore 12
        movq      16(%rsp), %r13                                #[spill]
	.cfi_restore 13
        movq      24(%rsp), %r14                                #[spill]
	.cfi_restore 14
        movq      32(%rsp), %r15                                #[spill]
	.cfi_restore 15
        movq      40(%rsp), %rbx                                #[spill]
	.cfi_restore 3
        movq      48(%rsp), %rbp                                #[spill]
	.cfi_restore 6
#       clock(void)
        call      clock                                         #248.10
	.cfi_offset 3, -312
	.cfi_offset 6, -304
	.cfi_offset 12, -344
	.cfi_offset 13, -336
	.cfi_offset 14, -328
	.cfi_offset 15, -320
                                # LOE rax rbx rbp r12 r13 r14 r15
..B4.27:                        # Preds ..B4.26
                                # Execution count [1.00e+00]
        subq      (%rsp), %rax                                  #250.2[spill]
        pxor      %xmm0, %xmm0                                  #250.2
        cvtsi2sdq %rax, %xmm0                                   #250.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #250.2
        movl      $.L_2__STRING.5, %edi                         #250.2
        movl      $1, %eax                                      #250.2
..___tag_value_s242.87:
#       printf(const char *__restrict__, ...)
        call      printf                                        #250.2
..___tag_value_s242.88:
                                # LOE rbx rbp r12 r13 r14 r15
..B4.28:                        # Preds ..B4.27
                                # Execution count [1.00e+00]
        movl      $1, %edi                                      #251.2
..___tag_value_s242.89:
#       check..0(int)
        call      check..0                                      #251.2
..___tag_value_s242.90:
                                # LOE rbx rbp r12 r13 r14 r15
..B4.29:                        # Preds ..B4.28
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #252.9
        addq      $344, %rsp                                    #252.9
	.cfi_def_cfa_offset 8
        ret                                                     #252.9
	.cfi_def_cfa_offset 352
                                # LOE
..B4.30:                        # Preds ..B4.11
                                # Execution count [1.99e+04]: Infreq
        xorl      %r8d, %r8d                                    #243.3
        jmp       ..B4.15       # Prob 100%                     #243.3
                                # LOE r8 r12 r13 r14 r15 eax edx ebx ebp esi edi r10d xmm0 xmm1
..B4.31:                        # Preds ..B4.5
                                # Execution count [1.99e+04]: Infreq
        movl      %ebx, %eax                                    #243.3
        cmpl      $1, %esi                                      #243.3
        jb        ..B4.19       # Prob 50%                      #243.3
                                # LOE r12 r13 r14 r15 eax ebx ebp esi edi r10d xmm0 xmm1
..B4.32:                        # Preds ..B4.31
                                # Execution count [9.93e+03]: Infreq
        movl      %esi, %edx                                    #243.3
        xorl      %r8d, %r8d                                    #243.3
        jmp       ..B4.15       # Prob 100%                     #243.3
        .align    16,0x90
                                # LOE r8 r12 r13 r14 r15 eax edx ebx ebp esi edi r10d xmm0 xmm1
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
..___tag_value_check..0.94:
..L95:
                                                         #122.21
        pushq     %rsi                                          #122.21
	.cfi_def_cfa_offset 16
        xorl      %eax, %eax                                    #129.2
        pxor      %xmm7, %xmm7                                  #124.13
        movaps    %xmm7, %xmm6                                  #124.13
        movaps    %xmm7, %xmm5                                  #124.13
        movaps    %xmm7, %xmm4                                  #124.13
        movaps    %xmm7, %xmm3                                  #124.13
        movaps    %xmm7, %xmm2                                  #124.13
        movaps    %xmm7, %xmm1                                  #124.13
        movaps    %xmm7, %xmm0                                  #124.13
        .align    16,0x90
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.2:                         # Preds ..B5.2 ..B5.1
                                # Execution count [3.20e+04]
        addps     a(,%rax,4), %xmm7                             #130.3
        addps     16+a(,%rax,4), %xmm6                          #130.3
        addps     32+a(,%rax,4), %xmm5                          #130.3
        addps     48+a(,%rax,4), %xmm4                          #130.3
        addps     64+a(,%rax,4), %xmm3                          #130.3
        addps     80+a(,%rax,4), %xmm2                          #130.3
        addps     96+a(,%rax,4), %xmm1                          #130.3
        addps     112+a(,%rax,4), %xmm0                         #130.3
        addq      $32, %rax                                     #129.2
        cmpq      $32000, %rax                                  #129.2
        jb        ..B5.2        # Prob 99%                      #129.2
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.3:                         # Preds ..B5.2
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %edi                         #152.17
        movl      $1, %eax                                      #152.17
        addps     %xmm6, %xmm7                                  #124.13
        addps     %xmm4, %xmm5                                  #124.13
        addps     %xmm2, %xmm3                                  #124.13
        addps     %xmm0, %xmm1                                  #124.13
        addps     %xmm5, %xmm7                                  #124.13
        addps     %xmm1, %xmm3                                  #124.13
        addps     %xmm3, %xmm7                                  #124.13
        movaps    %xmm7, %xmm0                                  #124.13
        movhlps   %xmm7, %xmm0                                  #124.13
        addps     %xmm0, %xmm7                                  #124.13
        movaps    %xmm7, %xmm1                                  #124.13
        shufps    $245, %xmm7, %xmm1                            #124.13
        addss     %xmm1, %xmm7                                  #124.13
        cvtss2sd  %xmm7, %xmm7                                  #152.17
        movaps    %xmm7, %xmm0                                  #152.17
..___tag_value_check..0.97:
#       printf(const char *__restrict__, ...)
        call      printf                                        #152.17
..___tag_value_check..0.98:
                                # LOE rbx rbp r12 r13 r14 r15
..B5.4:                         # Preds ..B5.3
                                # Execution count [1.00e+00]
        popq      %rcx                                          #171.1
	.cfi_def_cfa_offset 8
        ret                                                     #171.1
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
..___tag_value_s2275.101:
..L102:
                                                        #255.1
        pushq     %rbx                                          #255.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #255.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #255.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.6, %edi                         #262.2
..___tag_value_s2275.108:
#       init(char *)
        call      init                                          #262.2
..___tag_value_s2275.109:
                                # LOE rbp r12 r13 r14 r15
..B6.2:                         # Preds ..B6.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #263.12
                                # LOE rax rbp r12 r13 r14 r15
..B6.16:                        # Preds ..B6.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #263.12
                                # LOE rbx rbp r12 r13 r14 r15
..B6.3:                         # Preds ..B6.16
                                # Execution count [1.22e+03]
        xorl      %eax, %eax                                    #265.2
        movl      %eax, %ebp                                    #265.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.4:                         # Preds ..B6.9 ..B6.3
                                # Execution count [1.99e+05]
        xorl      %edx, %edx                                    #267.4
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.5:                         # Preds ..B6.5 ..B6.4
                                # Execution count [6.43e+09]
        movups    bb(,%rdx,4), %xmm0                            #268.27
        movups    16+bb(,%rdx,4), %xmm1                         #268.27
        movups    32+bb(,%rdx,4), %xmm2                         #268.27
        movups    48+bb(,%rdx,4), %xmm3                         #268.27
        mulps     cc(,%rdx,4), %xmm0                            #268.38
        mulps     16+cc(,%rdx,4), %xmm1                         #268.38
        mulps     32+cc(,%rdx,4), %xmm2                         #268.38
        addps     aa(,%rdx,4), %xmm0                            #268.38
        mulps     48+cc(,%rdx,4), %xmm3                         #268.38
        addps     16+aa(,%rdx,4), %xmm1                         #268.38
        addps     32+aa(,%rdx,4), %xmm2                         #268.38
        addps     48+aa(,%rdx,4), %xmm3                         #268.38
        movups    %xmm0, aa(,%rdx,4)                            #268.5
        movups    %xmm1, 16+aa(,%rdx,4)                         #268.5
        movups    %xmm2, 32+aa(,%rdx,4)                         #268.5
        movups    %xmm3, 48+aa(,%rdx,4)                         #268.5
        addq      $16, %rdx                                     #267.4
        cmpq      $32400, %rdx                                  #267.4
        jb        ..B6.5        # Prob 99%                      #267.4
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.99e+05]
        xorl      %edx, %edx                                    #266.3
        .align    16,0x90
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.7:                         # Preds ..B6.7 ..B6.6
                                # Execution count [3.57e+07]
        movups    c(,%rdx,4), %xmm0                             #270.18
        movups    16+c(,%rdx,4), %xmm1                          #270.18
        mulps     d(,%rdx,4), %xmm0                             #270.25
        mulps     16+d(,%rdx,4), %xmm1                          #270.25
        addps     b(,%rdx,4), %xmm0                             #270.25
        addps     16+b(,%rdx,4), %xmm1                          #270.25
        movups    %xmm0, a(,%rdx,4)                             #270.4
        movups    %xmm1, 16+a(,%rdx,4)                          #270.4
        addq      $8, %rdx                                      #266.3
        cmpq      $176, %rdx                                    #266.3
        jb        ..B6.7        # Prob 99%                      #266.3
                                # LOE rdx rbx r12 r13 r14 r15 ebp
..B6.8:                         # Preds ..B6.7
                                # Execution count [1.99e+05]
        movups    704+c(%rip), %xmm0                            #270.18
        movl      $a, %edi                                      #272.3
        mulps     704+d(%rip), %xmm0                            #270.25
        movl      $b, %esi                                      #272.3
        pushq     $cc                                           #272.3
	.cfi_def_cfa_offset 40
        movl      $c, %edx                                      #272.3
        movl      $d, %ecx                                      #272.3
        movl      $e, %r8d                                      #272.3
        movl      $aa, %r9d                                     #272.3
        pushq     $bb                                           #272.3
	.cfi_def_cfa_offset 48
        addps     704+b(%rip), %xmm0                            #270.25
        movups    %xmm0, 704+a(%rip)                            #270.4
        pxor      %xmm0, %xmm0                                  #272.3
..___tag_value_s2275.112:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #272.3
..___tag_value_s2275.113:
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.17:                        # Preds ..B6.8
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #272.3
	.cfi_def_cfa_offset 32
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.9:                         # Preds ..B6.17
                                # Execution count [1.99e+05]
        incl      %ebp                                          #265.2
        cmpl      $200000, %ebp                                 #265.2
        jb        ..B6.4        # Prob 99%                      #265.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.10:                        # Preds ..B6.9
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #274.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.11:                        # Preds ..B6.10
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #276.2
        pxor      %xmm0, %xmm0                                  #276.2
        cvtsi2sdq %rax, %xmm0                                   #276.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #276.2
        movl      $.L_2__STRING.7, %edi                         #276.2
        movl      $1, %eax                                      #276.2
..___tag_value_s2275.115:
#       printf(const char *__restrict__, ...)
        call      printf                                        #276.2
..___tag_value_s2275.116:
                                # LOE rbp r12 r13 r14 r15
..B6.12:                        # Preds ..B6.11
                                # Execution count [1.00e+00]
        movl      $11, %edi                                     #277.2
..___tag_value_s2275.117:
#       check..1(int)
        call      check..1                                      #277.2
..___tag_value_s2275.118:
                                # LOE rbp r12 r13 r14 r15
..B6.13:                        # Preds ..B6.12
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #278.9
        popq      %rcx                                          #278.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #278.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #278.9
	.cfi_def_cfa_offset 8
        ret                                                     #278.9
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
..___tag_value_check..1.125:
..L126:
                                                        #122.21
        pushq     %rsi                                          #122.21
	.cfi_def_cfa_offset 16
        xorl      %eax, %eax                                    #139.2
        pxor      %xmm0, %xmm0                                  #136.14
        xorl      %edx, %edx                                    #139.2
        movaps    %xmm0, %xmm7                                  #136.14
        movaps    %xmm0, %xmm6                                  #136.14
        movaps    %xmm0, %xmm5                                  #136.14
        movaps    %xmm0, %xmm4                                  #136.14
        movaps    %xmm0, %xmm3                                  #136.14
        movaps    %xmm0, %xmm2                                  #136.14
        movaps    %xmm0, %xmm1                                  #136.14
        .align    16,0x90
                                # LOE rax rdx rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B7.2:                         # Preds ..B7.2 ..B7.1
                                # Execution count [3.24e+04]
        addps     aa(,%rax,4), %xmm0                            #141.4
        addps     16+aa(,%rax,4), %xmm7                         #141.4
        addps     32+aa(,%rax,4), %xmm6                         #141.4
        addps     48+aa(,%rax,4), %xmm5                         #141.4
        addps     64+aa(,%rax,4), %xmm4                         #141.4
        addps     80+aa(,%rax,4), %xmm3                         #141.4
        addps     96+aa(,%rax,4), %xmm2                         #141.4
        addps     112+aa(,%rax,4), %xmm1                        #141.4
        addq      $32, %rax                                     #139.2
        cmpq      $32384, %rax                                  #139.2
        jb        ..B7.2        # Prob 99%                      #139.2
                                # LOE rax rdx rbx rbp r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B7.3:                         # Preds ..B7.2
                                # Execution count [1.00e+00]
        addps     %xmm7, %xmm0                                  #136.14
        addps     %xmm5, %xmm6                                  #136.14
        addps     %xmm3, %xmm4                                  #136.14
        addps     %xmm1, %xmm2                                  #136.14
        addps     %xmm6, %xmm0                                  #136.14
        addps     %xmm2, %xmm4                                  #136.14
        addps     %xmm4, %xmm0                                  #136.14
                                # LOE rdx rbx rbp r12 r13 r14 r15 xmm0
..B7.4:                         # Preds ..B7.4 ..B7.3
                                # Execution count [3.24e+04]
        addps     129536+aa(,%rdx,4), %xmm0                     #141.4
        addq      $4, %rdx                                      #139.2
        cmpq      $16, %rdx                                     #139.2
        jb        ..B7.4        # Prob 99%                      #139.2
                                # LOE rdx rbx rbp r12 r13 r14 r15 xmm0
..B7.5:                         # Preds ..B7.4
                                # Execution count [1.00e+00]
        movaps    %xmm0, %xmm1                                  #136.14
        movl      $.L_2__STRING.0, %edi                         #157.18
        movhlps   %xmm0, %xmm1                                  #136.14
        movl      $1, %eax                                      #157.18
        addps     %xmm1, %xmm0                                  #136.14
        movaps    %xmm0, %xmm2                                  #136.14
        shufps    $245, %xmm0, %xmm2                            #136.14
        addss     %xmm2, %xmm0                                  #136.14
        cvtss2sd  %xmm0, %xmm0                                  #157.18
..___tag_value_check..1.128:
#       printf(const char *__restrict__, ...)
        call      printf                                        #157.18
..___tag_value_check..1.129:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.6:                         # Preds ..B7.5
                                # Execution count [1.00e+00]
        popq      %rcx                                          #171.1
	.cfi_def_cfa_offset 8
        ret                                                     #171.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	check..1,@function
	.size	check..1,.-check..1
	.data
# -- End  check..1
	.text
# -- Begin  s112
	.text
# mark_begin;
       .align    16,0x90
	.globl s112
# --- s112()
s112:
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s112.132:
..L133:
                                                        #337.1
        pushq     %r12                                          #337.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #337.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rbx                                          #337.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.2, %edi                         #345.2
        mov $200000, %ebp
        mov $a-16, %ebx
..___tag_value_s112.139:
#       init(char *)
        call      init                                          #345.2
..___tag_value_s112.140:
                                # LOE rbp r12 r13 r14 r15
..B8.2:                         # Preds ..B8.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #346.12
                                # LOE rax rbp r12 r13 r14 r15
..B8.14:                        # Preds ..B8.2
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #346.12
                                # LOE rbx rbp r12 r13 r14 r15
..B8.3:                         # Preds ..B8.14
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #348.2
        movl      %eax, %ebp                                    #348.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B8.4:                         # Preds ..B8.7 ..B8.3
                                # Execution count [1.99e+05]
        xorl      %ecx, %ecx                                    #350.3
        xorl      %edx, %edx                                    #350.3
        movss     127992+a(%rip),%xmm0
        mov     a+127968,%eax
        mov     b+127968,%edx
        addss     127992+b(%rip),%xmm0
        movss     %xmm0, 127996+a(%rip)
        movss     127988+b(%rip),%xmm0
        addss     127988+a(%rip),%xmm0
        movss     %xmm0, 127992+a(%rip)
        movss     127984+b(%rip),%xmm0
        addss     127984+a(%rip),%xmm0
        movss     %xmm0, 127988+a(%rip)
                                # LOE rdx rbx r12 r13 r14 r15 ecx ebp
..B8.5:                         # Preds ..B8.5 ..B8.4
                                # Execution count [3.17e+09]
        movaps    0(%rax), %xmm0
        sub       $16, %rax
        sub       $16, %rdx
        movaps    16(%rdx), %xmm1
        shufps    $27, %xmm0, %xmm0 
        shufps    $27, %xmm1, %xmm1
        addps     %xmm1, %xmm0
        shufps    $27, %xmm0, %xmm0
        movups    %xmm0, 20(%rax)
        cmp       %rax, %rbx
        jne       ..B8.5        # Prob 99%                      #350.3
                                # LOE rdx rbx r12 r13 r14 r15 ecx ebp
..B8.6:                         # Preds ..B8.5
                                # Execution count [1.99e+05]
        pxor      %xmm0, %xmm0
        push      cc
    .cfi_def_cfa_offset 40
        push      bb
    .cfi_def_cfa_offset 48
        mov       c, %edx
        mov       aa, %r9d
        mov       e, %r8d
        mov       d, %ecx
        mov       b, %esi
        mov       a, %edi
	.cfi_def_cfa_offset 48
..___tag_value_s112.143:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #353.3
..___tag_value_s112.144:
                                # LOE rbx r12 r13 r14 r15 ebp
..B8.15:                        # Preds ..B8.6
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #353.3
	.cfi_def_cfa_offset 32
                                # LOE rbx r12 r13 r14 r15 ebp
..B8.7:                         # Preds ..B8.15
                                # Execution count [1.99e+05]
        incl      %ebp                                          #348.2
        cmpl      $200000, %ebp                                 #348.2
        jb        ..B8.4        # Prob 99%                      #348.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B8.8:                         # Preds ..B8.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #355.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.9:                         # Preds ..B8.8
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #357.2
        pxor      %xmm0, %xmm0                                  #357.2
        cvtsi2sdq %rax, %xmm0                                   #357.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #357.2
        movl      $.L_2__STRING.11, %edi                        #357.2
        movl      $1, %eax                                      #357.2
..___tag_value_s112.146:
#       printf(const char *__restrict__, ...)
        call      printf                                        #357.2
..___tag_value_s112.147:
                                # LOE rbp r12 r13 r14 r15
..B8.10:                        # Preds ..B8.9
                                # Execution count [1.00e+00]
        movl      $1, %edi                                      #358.2
..___tag_value_s112.148:
#       check..0(int)
        call      check..0                                      #358.2
..___tag_value_s112.149:
                                # LOE rbp r12 r13 r14 r15
..B8.11:                        # Preds ..B8.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #359.9
        popq      %rcx                                          #359.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #359.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #359.9
	.cfi_def_cfa_offset 8
        ret                                                     #359.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	s112,@function
	.size	s112,.-s112
	.data
# -- End  s112
	.text
# -- Begin  s312
	.text
# mark_begin;
       .align    16,0x90
	.globl s312
# --- s312()
s312:
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s312.156:
..L157:
                                                        #281.1
        pushq     %rbx                                          #281.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #281.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #281.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.1, %edi                         #289.2
..___tag_value_s312.163:
#       init(char *)
        call      init                                          #289.2
..___tag_value_s312.164:
                                # LOE rbp r12 r13 r14 r15
..B9.2:                         # Preds ..B9.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #290.12
                                # LOE rax rbp r12 r13 r14 r15
..B9.14:                        # Preds ..B9.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #290.12
                                # LOE rbx rbp r12 r13 r14 r15
..B9.3:                         # Preds ..B9.14
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #293.2
        movl      %eax, %ebp                                    #292.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B9.4:                         # Preds ..B9.7 ..B9.3
                                # Execution count [1.99e+05]
        movups    .L_2il0floatpacket.3(%rip), %xmm0             #292.2
        xorl      %edx, %edx                                    #295.3
                                # LOE rdx rbx r12 r13 r14 r15 ebp xmm0
..B9.5:                         # Preds ..B9.5 ..B9.4
                                # Execution count [6.35e+09]
        mulps     a(,%rdx,4), %xmm0                             #296.4
        mulps     16+a(,%rdx,4), %xmm0                          #296.4
        mulps     32+a(,%rdx,4), %xmm0                          #296.4
        mulps     48+a(,%rdx,4), %xmm0                          #296.4
        addq      $16, %rdx                                     #295.3
        cmpq      $32000, %rdx                                  #295.3
        jb        ..B9.5        # Prob 99%                      #295.3
                                # LOE rdx rbx r12 r13 r14 r15 ebp xmm0
..B9.6:                         # Preds ..B9.5
                                # Execution count [1.99e+05]
        movaps    %xmm0, %xmm1                                  #292.2
        movl      $a, %edi                                      #298.3
        movhlps   %xmm0, %xmm1                                  #292.2
        movl      $b, %esi                                      #298.3
        mulps     %xmm1, %xmm0                                  #292.2
        movl      $c, %edx                                      #298.3
        movaps    %xmm0, %xmm2                                  #292.2
        movl      $d, %ecx                                      #298.3
        shufps    $245, %xmm0, %xmm2                            #292.2
        movl      $e, %r8d                                      #298.3
        mulss     %xmm2, %xmm0                                  #292.2
        movl      $aa, %r9d                                     #298.3
        pushq     $cc                                           #298.3
	.cfi_def_cfa_offset 40
        pushq     $bb                                           #298.3
	.cfi_def_cfa_offset 48
        movss     %xmm0, 16(%rsp)                               #292.2[spill]
..___tag_value_s312.167:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #298.3
..___tag_value_s312.168:
                                # LOE rbx r12 r13 r14 r15 ebp
..B9.15:                        # Preds ..B9.6
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #298.3
	.cfi_def_cfa_offset 32
                                # LOE rbx r12 r13 r14 r15 ebp
..B9.7:                         # Preds ..B9.15
                                # Execution count [1.99e+05]
        incl      %ebp                                          #293.2
        cmpl      $200000, %ebp                                 #293.2
        jb        ..B9.4        # Prob 99%                      #293.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B9.8:                         # Preds ..B9.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #300.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.9:                         # Preds ..B9.8
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #302.2
        pxor      %xmm0, %xmm0                                  #302.2
        cvtsi2sdq %rax, %xmm0                                   #302.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #302.2
        movl      $.L_2__STRING.8, %edi                         #302.2
        movl      $1, %eax                                      #302.2
..___tag_value_s312.170:
#       printf(const char *__restrict__, ...)
        call      printf                                        #302.2
..___tag_value_s312.171:
                                # LOE rbp r12 r13 r14 r15
..B9.10:                        # Preds ..B9.9
                                # Execution count [1.00e+00]
        movss     (%rsp), %xmm0                                 #303.2[spill]
        movl      $-1, %edi                                     #304.2
        movss     %xmm0, temp(%rip)                             #303.2
..___tag_value_s312.172:
#       check..2(int)
        call      check..2                                      #304.2
..___tag_value_s312.173:
                                # LOE rbp r12 r13 r14 r15
..B9.11:                        # Preds ..B9.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #305.9
        popq      %rcx                                          #305.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #305.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #305.9
	.cfi_def_cfa_offset 8
        ret                                                     #305.9
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
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check..2.180:
..L181:
                                                        #122.21
        pxor      %xmm0, %xmm0                                  #168.18
        cvtss2sd  temp(%rip), %xmm0                             #168.18
        movl      $.L_2__STRING.0, %edi                         #168.18
        movl      $1, %eax                                      #168.18
#       printf(const char *__restrict__, ...)
        jmp       printf                                        #168.18
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
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s317.183:
..L184:
                                                        #308.1
        pushq     %rbx                                          #308.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #308.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #308.1
	.cfi_def_cfa_offset 32
        movl      $.L_2__STRING.9, %edi                         #318.2
..___tag_value_s317.190:
#       init(char *)
        call      init                                          #318.2
..___tag_value_s317.191:
                                # LOE rbp r12 r13 r14 r15
..B11.2:                        # Preds ..B11.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #319.12
                                # LOE rax rbp r12 r13 r14 r15
..B11.14:                       # Preds ..B11.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #319.12
                                # LOE rbx rbp r12 r13 r14 r15
..B11.3:                        # Preds ..B11.14
                                # Execution count [4.86e+02]
        xorl      %eax, %eax                                    #322.2
        movl      %eax, %ebp                                    #325.9
                                # LOE rbx r12 r13 r14 r15 ebp
..B11.4:                        # Preds ..B11.7 ..B11.3
                                # Execution count [3.97e+05]
        movups    .L_2il0floatpacket.3(%rip), %xmm0             #321.2
        xorl      %edx, %edx                                    #324.3
        movups    .L_2il0floatpacket.4(%rip), %xmm1             #324.3
                                # LOE rbx r12 r13 r14 r15 edx ebp xmm0 xmm1
..B11.5:                        # Preds ..B11.5 ..B11.4
                                # Execution count [6.36e+09]
        mulps     %xmm1, %xmm0                                  #325.4
        addl      $16, %edx                                     #324.3
        mulps     %xmm1, %xmm0                                  #325.4
        mulps     %xmm1, %xmm0                                  #325.4
        mulps     %xmm1, %xmm0                                  #325.4
        cmpl      $16000, %edx                                  #324.3
        jb        ..B11.5       # Prob 99%                      #324.3
                                # LOE rbx r12 r13 r14 r15 edx ebp xmm0 xmm1
..B11.6:                        # Preds ..B11.5
                                # Execution count [3.97e+05]
        movaps    %xmm0, %xmm1                                  #321.2
        movl      $a, %edi                                      #327.3
        movhlps   %xmm0, %xmm1                                  #321.2
        movl      $b, %esi                                      #327.3
        mulps     %xmm1, %xmm0                                  #321.2
        movl      $c, %edx                                      #327.3
        movaps    %xmm0, %xmm2                                  #321.2
        movl      $d, %ecx                                      #327.3
        shufps    $245, %xmm0, %xmm2                            #321.2
        movl      $e, %r8d                                      #327.3
        mulss     %xmm2, %xmm0                                  #321.2
        movl      $aa, %r9d                                     #327.3
        pushq     $cc                                           #327.3
	.cfi_def_cfa_offset 40
        pushq     $bb                                           #327.3
	.cfi_def_cfa_offset 48
        movss     %xmm0, 16(%rsp)                               #321.2[spill]
..___tag_value_s317.194:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy                                         #327.3
..___tag_value_s317.195:
                                # LOE rbx r12 r13 r14 r15 ebp
..B11.15:                       # Preds ..B11.6
                                # Execution count [3.97e+05]
        addq      $16, %rsp                                     #327.3
	.cfi_def_cfa_offset 32
                                # LOE rbx r12 r13 r14 r15 ebp
..B11.7:                        # Preds ..B11.15
                                # Execution count [3.97e+05]
        incl      %ebp                                          #322.2
        cmpl      $400000, %ebp                                 #322.2
        jb        ..B11.4       # Prob 99%                      #322.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B11.8:                        # Preds ..B11.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock                                         #329.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B11.9:                        # Preds ..B11.8
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #331.2
        pxor      %xmm0, %xmm0                                  #331.2
        cvtsi2sdq %rax, %xmm0                                   #331.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #331.2
        movl      $.L_2__STRING.10, %edi                        #331.2
        movl      $1, %eax                                      #331.2
..___tag_value_s317.197:
#       printf(const char *__restrict__, ...)
        call      printf                                        #331.2
..___tag_value_s317.198:
                                # LOE rbp r12 r13 r14 r15
..B11.10:                       # Preds ..B11.9
                                # Execution count [1.00e+00]
        movss     (%rsp), %xmm0                                 #332.2[spill]
        movl      $-1, %edi                                     #333.2
        movss     %xmm0, temp(%rip)                             #332.2
..___tag_value_s317.199:
#       check..2(int)
        call      check..2                                      #333.2
..___tag_value_s317.200:
                                # LOE rbp r12 r13 r14 r15
..B11.11:                       # Preds ..B11.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #334.9
        popq      %rcx                                          #334.9
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #334.9
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #334.9
	.cfi_def_cfa_offset 8
        ret                                                     #334.9
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
..B12.1:                        # Preds ..B12.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set1d.207:
..L208:
                                                        #78.1
        movslq    %esi, %rcx                                    #78.1
        cmpl      $-1, %esi                                     #79.6
        jne       ..B12.18      # Prob 66%                      #79.6
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B12.2:                        # Preds ..B12.1
                                # Execution count [3.33e-01]
        movq      %rdi, %rdx                                    #80.3
        andq      $15, %rdx                                     #80.3
        testl     %edx, %edx                                    #80.3
        je        ..B12.7       # Prob 50%                      #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B12.3:                        # Preds ..B12.2
                                # Execution count [3.33e-01]
        testb     $3, %dl                                       #80.3
        jne       ..B12.41      # Prob 10%                      #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B12.4:                        # Preds ..B12.3
                                # Execution count [3.32e-01]
        negl      %edx                                          #80.3
        xorl      %ecx, %ecx                                    #80.3
        addl      $16, %edx                                     #80.3
        xorl      %eax, %eax                                    #80.3
        shrl      $2, %edx                                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B12.5:                        # Preds ..B12.5 ..B12.4
                                # Execution count [1.07e+04]
        incl      %ecx                                          #81.29
        pxor      %xmm0, %xmm0                                  #81.29
        cvtsi2ss  %ecx, %xmm0                                   #81.29
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #81.29
        divss     %xmm0, %xmm1                                  #81.29
        movss     %xmm1, (%rdi,%rax,4)                          #81.4
        incq      %rax                                          #81.29
        cmpl      %edx, %ecx                                    #80.3
        jb        ..B12.5       # Prob 99%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B12.7:                        # Preds ..B12.5 ..B12.2
                                # Execution count [3.32e-01]
        movl      %edx, %esi                                    #80.3
        lea       1(%rdx), %ecx                                 #81.29
        negl      %esi                                          #80.3
        lea       2(%rdx), %r9d                                 #81.29
        andl      $15, %esi                                     #80.3
        lea       3(%rdx), %r10d                                #81.29
        negl      %esi                                          #80.3
        lea       4(%rdx), %r11d                                #81.29
        movl      $4, %eax                                      #81.29
        movd      %ecx, %xmm1                                   #81.29
        movd      %r9d, %xmm2                                   #81.29
        movd      %r10d, %xmm4                                  #81.29
        movd      %r11d, %xmm3                                  #81.29
        lea       32000(%rsi), %r8d                             #80.3
        punpcklqdq %xmm2, %xmm1                                 #81.29
        movd      %eax, %xmm0                                   #81.29
        punpcklqdq %xmm3, %xmm4                                 #81.29
        movl      %r8d, %eax                                    #80.3
        pshufd    $0, %xmm0, %xmm0                              #81.29
        shufps    $136, %xmm4, %xmm1                            #81.29
        movl      %edx, %edx                                    #80.3
        .align    16,0x90
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B12.8:                        # Preds ..B12.8 ..B12.7
                                # Execution count [1.07e+04]
        cvtdq2ps  %xmm1, %xmm2                                  #81.29
        paddd     %xmm0, %xmm1                                  #81.29
        cvtdq2ps  %xmm1, %xmm4                                  #81.29
        rcpps     %xmm2, %xmm3                                  #81.29
        rcpps     %xmm4, %xmm5                                  #81.29
        mulps     %xmm3, %xmm2                                  #81.29
        mulps     %xmm5, %xmm4                                  #81.29
        mulps     %xmm3, %xmm2                                  #81.29
        addps     %xmm3, %xmm3                                  #81.29
        mulps     %xmm5, %xmm4                                  #81.29
        addps     %xmm5, %xmm5                                  #81.29
        subps     %xmm2, %xmm3                                  #81.29
        subps     %xmm4, %xmm5                                  #81.29
        paddd     %xmm0, %xmm1                                  #81.29
        cvtdq2ps  %xmm1, %xmm6                                  #81.29
        paddd     %xmm0, %xmm1                                  #81.29
        cvtdq2ps  %xmm1, %xmm8                                  #81.29
        rcpps     %xmm6, %xmm7                                  #81.29
        rcpps     %xmm8, %xmm9                                  #81.29
        mulps     %xmm7, %xmm6                                  #81.29
        mulps     %xmm9, %xmm8                                  #81.29
        mulps     %xmm7, %xmm6                                  #81.29
        addps     %xmm7, %xmm7                                  #81.29
        mulps     %xmm9, %xmm8                                  #81.29
        addps     %xmm9, %xmm9                                  #81.29
        subps     %xmm6, %xmm7                                  #81.29
        subps     %xmm8, %xmm9                                  #81.29
        movups    %xmm3, (%rdi,%rdx,4)                          #81.4
        paddd     %xmm0, %xmm1                                  #81.29
        movups    %xmm5, 16(%rdi,%rdx,4)                        #81.4
        movups    %xmm7, 32(%rdi,%rdx,4)                        #81.4
        movups    %xmm9, 48(%rdi,%rdx,4)                        #81.4
        addq      $16, %rdx                                     #80.3
        cmpq      %rax, %rdx                                    #80.3
        jb        ..B12.8       # Prob 99%                      #80.3
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B12.9:                        # Preds ..B12.8
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #80.3
        cmpl      $32000, %r9d                                  #80.3
        ja        ..B12.40      # Prob 50%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm0
..B12.10:                       # Preds ..B12.9
                                # Execution count [3.16e-01]
        movl      %r8d, %edx                                    #80.3
        negl      %edx                                          #80.3
        addl      $32000, %edx                                  #80.3
        cmpl      $4, %edx                                      #80.3
        jb        ..B12.42      # Prob 10%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx esi r8d r9d xmm0
..B12.11:                       # Preds ..B12.10
                                # Execution count [3.32e-01]
        movd      %r9d, %xmm1                                   #81.29
        lea       32002(%rsi), %r10d                            #81.29
        movl      %edx, %ecx                                    #80.3
        lea       32003(%rsi), %r11d                            #81.29
        addl      $32004, %esi                                  #81.29
        andl      $-4, %ecx                                     #80.3
        movd      %r10d, %xmm2                                  #81.29
        movd      %r11d, %xmm4                                  #81.29
        movd      %esi, %xmm3                                   #81.29
        xorl      %esi, %esi                                    #80.3
        punpcklqdq %xmm2, %xmm1                                 #81.29
        punpcklqdq %xmm3, %xmm4                                 #81.29
        shufps    $136, %xmm4, %xmm1                            #81.29
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B12.12:                       # Preds ..B12.12 ..B12.11
                                # Execution count [1.07e+04]
        cvtdq2ps  %xmm1, %xmm2                                  #81.29
        rcpps     %xmm2, %xmm3                                  #81.29
        mulps     %xmm3, %xmm2                                  #81.29
        addl      $4, %esi                                      #80.3
        mulps     %xmm3, %xmm2                                  #81.29
        addps     %xmm3, %xmm3                                  #81.29
        paddd     %xmm0, %xmm1                                  #81.29
        subps     %xmm2, %xmm3                                  #81.29
        movups    %xmm3, (%rdi,%rax,4)                          #81.4
        addq      $4, %rax                                      #80.3
        cmpl      %ecx, %esi                                    #80.3
        jb        ..B12.12      # Prob 99%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B12.14:                       # Preds ..B12.12 ..B12.42 ..B12.41
                                # Execution count [3.33e-01]
        addl      %ecx, %r8d                                    #80.3
        movslq    %r8d, %rax                                    #80.3
        cmpl      %edx, %ecx                                    #80.3
        jae       ..B12.40      # Prob 0%                       #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B12.16:                       # Preds ..B12.14 ..B12.16
                                # Execution count [1.07e+04]
        incl      %r8d                                          #81.29
        pxor      %xmm0, %xmm0                                  #81.29
        cvtsi2ss  %r8d, %xmm0                                   #81.29
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #81.29
        incl      %ecx                                          #80.3
        divss     %xmm0, %xmm1                                  #81.29
        movss     %xmm1, (%rdi,%rax,4)                          #81.4
        incq      %rax                                          #80.3
        cmpl      %edx, %ecx                                    #80.3
        jb        ..B12.16      # Prob 99%                      #80.3
        jmp       ..B12.40      # Prob 100%                     #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B12.18:                       # Preds ..B12.1
                                # Execution count [6.67e-01]
        cmpl      $-2, %esi                                     #79.6
        jne       ..B12.35      # Prob 50%                      #79.6
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B12.19:                       # Preds ..B12.18
                                # Execution count [3.33e-01]
        movq      %rdi, %rax                                    #84.3
        andq      $15, %rax                                     #84.3
        testl     %eax, %eax                                    #84.3
        je        ..B12.24      # Prob 50%                      #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B12.20:                       # Preds ..B12.19
                                # Execution count [3.33e-01]
        testb     $3, %al                                       #84.3
        jne       ..B12.43      # Prob 10%                      #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B12.21:                       # Preds ..B12.20
                                # Execution count [3.33e-01]
        negl      %eax                                          #84.3
        xorl      %ecx, %ecx                                    #84.3
        addl      $16, %eax                                     #84.3
        xorl      %edx, %edx                                    #84.3
        shrl      $2, %eax                                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B12.22:                       # Preds ..B12.22 ..B12.21
                                # Execution count [1.07e+04]
        incl      %ecx                                          #85.30
        pxor      %xmm0, %xmm0                                  #85.38
        movl      %ecx, %esi                                    #85.38
        imull     %ecx, %esi                                    #85.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #85.38
        cvtsi2ss  %esi, %xmm0                                   #85.38
        divss     %xmm0, %xmm1                                  #85.38
        movss     %xmm1, (%rdi,%rdx,4)                          #85.4
        incq      %rdx                                          #85.30
        cmpl      %eax, %ecx                                    #84.3
        jb        ..B12.22      # Prob 99%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B12.24:                       # Preds ..B12.22 ..B12.19
                                # Execution count [3.33e-01]
        movl      %eax, %esi                                    #84.3
        movl      $4, %edx                                      #85.30
        negl      %esi                                          #84.3
        lea       1(%rax), %ecx                                 #85.30
        andl      $15, %esi                                     #84.3
        lea       2(%rax), %r9d                                 #85.30
        negl      %esi                                          #84.3
        lea       3(%rax), %r10d                                #85.30
        movd      %edx, %xmm0                                   #85.30
        lea       4(%rax), %r11d                                #85.30
        pshufd    $0, %xmm0, %xmm2                              #85.30
        movd      %ecx, %xmm0                                   #85.30
        movd      %r9d, %xmm1                                   #85.30
        movd      %r10d, %xmm4                                  #85.30
        lea       32000(%rsi), %r8d                             #84.3
        movd      %r11d, %xmm3                                  #85.30
        movl      %r8d, %edx                                    #84.3
        punpcklqdq %xmm1, %xmm0                                 #85.30
        punpcklqdq %xmm3, %xmm4                                 #85.30
        shufps    $136, %xmm4, %xmm0                            #85.30
        movl      %eax, %eax                                    #84.3
        movdqu    .L_2il0floatpacket.5(%rip), %xmm1             #85.38
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B12.25:                       # Preds ..B12.25 ..B12.24
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #85.38
        movaps    %xmm0, %xmm4                                  #85.38
        psrlq     $32, %xmm3                                    #85.38
        pmuludq   %xmm0, %xmm4                                  #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        pmuludq   %xmm3, %xmm3                                  #85.38
        pand      %xmm1, %xmm4                                  #85.38
        psllq     $32, %xmm3                                    #85.38
        por       %xmm3, %xmm4                                  #85.38
        movaps    %xmm0, %xmm8                                  #85.38
        cvtdq2ps  %xmm4, %xmm5                                  #85.38
        pmuludq   %xmm0, %xmm8                                  #85.38
        rcpps     %xmm5, %xmm6                                  #85.38
        movaps    %xmm0, %xmm7                                  #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        movaps    %xmm0, %xmm12                                 #85.38
        movaps    %xmm0, %xmm11                                 #85.38
        pmuludq   %xmm0, %xmm12                                 #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        mulps     %xmm6, %xmm5                                  #85.38
        movaps    %xmm0, %xmm15                                 #85.38
        psrlq     $32, %xmm7                                    #85.38
        psrlq     $32, %xmm11                                   #85.38
        psrlq     $32, %xmm15                                   #85.38
        movaps    %xmm0, %xmm3                                  #85.38
        pand      %xmm1, %xmm8                                  #85.38
        pmuludq   %xmm7, %xmm7                                  #85.38
        pand      %xmm1, %xmm12                                 #85.38
        mulps     %xmm6, %xmm5                                  #85.38
        addps     %xmm6, %xmm6                                  #85.38
        pmuludq   %xmm11, %xmm11                                #85.38
        pmuludq   %xmm0, %xmm3                                  #85.38
        pmuludq   %xmm15, %xmm15                                #85.38
        subps     %xmm5, %xmm6                                  #85.38
        psllq     $32, %xmm7                                    #85.38
        psllq     $32, %xmm11                                   #85.38
        pand      %xmm1, %xmm3                                  #85.38
        psllq     $32, %xmm15                                   #85.38
        por       %xmm7, %xmm8                                  #85.38
        por       %xmm11, %xmm12                                #85.38
        por       %xmm15, %xmm3                                 #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        cvtdq2ps  %xmm8, %xmm9                                  #85.38
        cvtdq2ps  %xmm12, %xmm13                                #85.38
        cvtdq2ps  %xmm3, %xmm4                                  #85.38
        rcpps     %xmm9, %xmm10                                 #85.38
        rcpps     %xmm13, %xmm14                                #85.38
        rcpps     %xmm4, %xmm5                                  #85.38
        mulps     %xmm10, %xmm9                                 #85.38
        mulps     %xmm14, %xmm13                                #85.38
        mulps     %xmm5, %xmm4                                  #85.38
        mulps     %xmm10, %xmm9                                 #85.38
        addps     %xmm10, %xmm10                                #85.38
        mulps     %xmm14, %xmm13                                #85.38
        addps     %xmm14, %xmm14                                #85.38
        mulps     %xmm5, %xmm4                                  #85.38
        addps     %xmm5, %xmm5                                  #85.38
        subps     %xmm9, %xmm10                                 #85.38
        subps     %xmm13, %xmm14                                #85.38
        subps     %xmm4, %xmm5                                  #85.38
        movups    %xmm6, (%rdi,%rax,4)                          #85.4
        movups    %xmm10, 16(%rdi,%rax,4)                       #85.4
        movups    %xmm14, 32(%rdi,%rax,4)                       #85.4
        movups    %xmm5, 48(%rdi,%rax,4)                        #85.4
        addq      $16, %rax                                     #84.3
        cmpq      %rdx, %rax                                    #84.3
        jb        ..B12.25      # Prob 99%                      #84.3
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B12.26:                       # Preds ..B12.25
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #84.3
        cmpl      $32000, %r9d                                  #84.3
        ja        ..B12.40      # Prob 50%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm1 xmm2
..B12.27:                       # Preds ..B12.26
                                # Execution count [3.16e-01]
        movl      %r8d, %eax                                    #84.3
        negl      %eax                                          #84.3
        addl      $32000, %eax                                  #84.3
        cmpl      $4, %eax                                      #84.3
        jb        ..B12.44      # Prob 10%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax esi r8d r9d xmm1 xmm2
..B12.28:                       # Preds ..B12.27
                                # Execution count [3.33e-01]
        movd      %r9d, %xmm0                                   #85.30
        lea       32002(%rsi), %r10d                            #85.30
        movl      %eax, %ecx                                    #84.3
        lea       32003(%rsi), %r11d                            #85.30
        addl      $32004, %esi                                  #85.30
        andl      $-4, %ecx                                     #84.3
        movd      %r10d, %xmm3                                  #85.30
        movd      %r11d, %xmm5                                  #85.30
        movd      %esi, %xmm4                                   #85.30
        xorl      %esi, %esi                                    #84.3
        punpcklqdq %xmm3, %xmm0                                 #85.30
        punpcklqdq %xmm4, %xmm5                                 #85.30
        shufps    $136, %xmm5, %xmm0                            #85.30
        .align    16,0x90
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B12.29:                       # Preds ..B12.29 ..B12.28
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #85.38
        movaps    %xmm0, %xmm4                                  #85.38
        psrlq     $32, %xmm3                                    #85.38
        addl      $4, %esi                                      #84.3
        pmuludq   %xmm0, %xmm4                                  #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        pmuludq   %xmm3, %xmm3                                  #85.38
        pand      %xmm1, %xmm4                                  #85.38
        psllq     $32, %xmm3                                    #85.38
        por       %xmm3, %xmm4                                  #85.38
        cvtdq2ps  %xmm4, %xmm5                                  #85.38
        rcpps     %xmm5, %xmm6                                  #85.38
        mulps     %xmm6, %xmm5                                  #85.38
        mulps     %xmm6, %xmm5                                  #85.38
        addps     %xmm6, %xmm6                                  #85.38
        subps     %xmm5, %xmm6                                  #85.38
        movups    %xmm6, (%rdi,%rdx,4)                          #85.4
        addq      $4, %rdx                                      #84.3
        cmpl      %ecx, %esi                                    #84.3
        jb        ..B12.29      # Prob 99%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B12.31:                       # Preds ..B12.29 ..B12.44 ..B12.43
                                # Execution count [3.33e-01]
        addl      %ecx, %r8d                                    #84.3
        movslq    %r8d, %rdx                                    #84.3
        cmpl      %eax, %ecx                                    #84.3
        jae       ..B12.40      # Prob 0%                       #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B12.33:                       # Preds ..B12.31 ..B12.33
                                # Execution count [1.07e+04]
        incl      %r8d                                          #85.38
        pxor      %xmm0, %xmm0                                  #85.38
        movl      %r8d, %esi                                    #85.38
        incl      %ecx                                          #84.3
        imull     %r8d, %esi                                    #85.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #85.38
        cvtsi2ss  %esi, %xmm0                                   #85.38
        divss     %xmm0, %xmm1                                  #85.38
        movss     %xmm1, (%rdi,%rdx,4)                          #85.4
        incq      %rdx                                          #84.3
        cmpl      %eax, %ecx                                    #84.3
        jb        ..B12.33      # Prob 99%                      #84.3
        jmp       ..B12.40      # Prob 100%                     #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B12.35:                       # Preds ..B12.18
                                # Execution count [0.00e+00]
        testl     %esi, %esi                                    #88.3
        jne       ..B12.37      # Prob 50%                      #88.3
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B12.36:                       # Preds ..B12.35
                                # Execution count [3.33e-01]
        movss     %xmm0, (%rdi)                                 #89.4
        jmp       ..B12.40      # Prob 100%                     #89.4
                                # LOE rbx rbp r12 r13 r14 r15
..B12.37:                       # Preds ..B12.35
                                # Execution count [3.33e-01]
        xorl      %r8d, %r8d                                    #88.3
        lea       31999(%rcx), %rax                             #88.23
        cmpq      $-1, %rcx                                     #88.23
        je        ..B12.49      # Prob 2%                       #88.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B12.50:                       # Preds ..B12.37
                                # Execution count [3.33e-01]
        movslq    %eax, %rdx                                    #88.23
        cmpq      %rax, %rdx                                    #88.23
        jne       ..B12.49      # Prob 2%                       #88.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B12.48:                       # Preds ..B12.50
                                # Execution count [3.33e-01]
        cltd                                                    #88.23
        idivl     %esi                                          #88.23
        movslq    %eax, %rax                                    #88.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
..B12.47:                       # Preds ..B12.49 ..B12.48
                                # Execution count [3.33e-01]
        movl      %eax, %edx                                    #88.23
        xorl      %eax, %eax                                    #89.4
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B12.38:                       # Preds ..B12.38 ..B12.47
                                # Execution count [1.85e+00]
        incl      %r8d                                          #88.3
        movss     %xmm0, (%rdi,%rax,4)                          #89.4
        addq      %rcx, %rax                                    #88.3
        cmpl      %edx, %r8d                                    #88.3
        jl        ..B12.38      # Prob 82%                      #88.3
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B12.40:                       # Preds ..B12.38 ..B12.33 ..B12.16 ..B12.31 ..B12.9
                                #       ..B12.14 ..B12.26 ..B12.36
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #92.9
        ret                                                     #92.9
                                # LOE
..B12.41:                       # Preds ..B12.3
                                # Execution count [3.33e-02]: Infreq
        xorl      %r8d, %r8d                                    #80.3
        movl      $32000, %edx                                  #80.3
        xorl      %ecx, %ecx                                    #80.3
        jmp       ..B12.14      # Prob 100%                     #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B12.42:                       # Preds ..B12.10
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #80.3
        jmp       ..B12.14      # Prob 100%                     #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B12.43:                       # Preds ..B12.20
                                # Execution count [3.33e-02]: Infreq
        xorl      %r8d, %r8d                                    #84.3
        movl      $32000, %eax                                  #84.3
        xorl      %ecx, %ecx                                    #84.3
        jmp       ..B12.31      # Prob 100%                     #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B12.44:                       # Preds ..B12.27
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #84.3
        jmp       ..B12.31      # Prob 100%                     #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B12.49:                       # Preds ..B12.37 ..B12.50
                                # Execution count [3.33e-01]: Infreq
        cqto                                                    #88.23
        idivq     %rcx                                          #88.23
        jmp       ..B12.47      # Prob 100%                     #88.23
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
..B13.1:                        # Preds ..B13.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set2d.210:
..L211:
                                                        #96.1
        movslq    %esi, %rsi                                    #96.1
        cmpq      $-1, %rsi                                     #100.6
        je        ..B13.28      # Prob 33%                      #100.6
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B13.2:                        # Preds ..B13.1
                                # Execution count [6.67e-01]
        cmpq      $-2, %rsi                                     #100.6
        je        ..B13.8       # Prob 50%                      #100.6
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B13.3:                        # Preds ..B13.2
                                # Execution count [3.33e-01]
        xorl      %eax, %eax                                    #113.14
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B13.4:                        # Preds ..B13.6 ..B13.3
                                # Execution count [6.00e+01]
        xorl      %edx, %edx                                    #114.15
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B13.5:                        # Preds ..B13.5 ..B13.4
                                # Execution count [3.33e+02]
        movss     %xmm0, (%rdi,%rdx,4)                          #115.5
        addq      %rsi, %rdx                                    #114.30
        cmpq      $180, %rdx                                    #114.24
        jl        ..B13.5       # Prob 82%                      #114.24
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B13.6:                        # Preds ..B13.5
                                # Execution count [6.00e+01]
        incl      %eax                                          #113.29
        addq      $720, %rdi                                    #113.29
        cmpl      $180, %eax                                    #113.23
        jl        ..B13.4       # Prob 99%                      #113.23
        jmp       ..B13.48      # Prob 100%                     #113.23
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B13.8:                        # Preds ..B13.2
                                # Execution count [3.34e-01]
        xorl      %r9d, %r9d                                    #107.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B13.9:                        # Preds ..B13.26 ..B13.8
                                # Execution count [6.00e+01]
        movslq    %r9d, %r9                                     #109.5
        imulq     $720, %r9, %r8                                #109.5
        addq      %rdi, %r8                                     #109.5
        movq      %r8, %rax                                     #108.4
        andq      $15, %rax                                     #108.4
        testl     %eax, %eax                                    #108.4
        je        ..B13.14      # Prob 50%                      #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B13.10:                       # Preds ..B13.9
                                # Execution count [6.00e+01]
        incl      %r9d                                          #109.34
        testb     $3, %al                                       #108.4
        jne       ..B13.49      # Prob 10%                      #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B13.11:                       # Preds ..B13.10
                                # Execution count [6.00e+01]
        movl      %r9d, %esi                                    #109.42
        pxor      %xmm1, %xmm1                                  #109.42
        imull     %r9d, %esi                                    #109.42
        negl      %eax                                          #108.4
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #109.42
        cvtsi2ss  %esi, %xmm1                                   #109.42
        addl      $16, %eax                                     #108.4
        xorl      %ecx, %ecx                                    #108.4
        shrl      $2, %eax                                      #108.4
        movl      %eax, %edx                                    #108.4
        divss     %xmm1, %xmm0                                  #109.42
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B13.12:                       # Preds ..B13.12 ..B13.11
                                # Execution count [1.08e+04]
        movss     %xmm0, (%r8,%rcx,4)                           #109.5
        incq      %rcx                                          #108.4
        cmpq      %rdx, %rcx                                    #108.4
        jb        ..B13.12      # Prob 99%                      #108.4
        jmp       ..B13.15      # Prob 100%                     #108.4
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B13.14:                       # Preds ..B13.9
                                # Execution count [3.00e+01]
        incl      %r9d                                          #109.34
        pxor      %xmm1, %xmm1                                  #109.42
        movl      %r9d, %ecx                                    #109.42
        xorl      %edx, %edx                                    #108.4
        imull     %r9d, %ecx                                    #109.42
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #109.42
        cvtsi2ss  %ecx, %xmm1                                   #109.42
        divss     %xmm1, %xmm0                                  #109.42
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B13.15:                       # Preds ..B13.12 ..B13.14
                                # Execution count [6.00e+01]
        negl      %eax                                          #108.4
        addl      $4, %eax                                      #108.4
        andl      $7, %eax                                      #108.4
        negl      %eax                                          #108.4
        shufps    $0, %xmm0, %xmm0                              #109.42
        lea       180(%rax), %ecx                               #108.4
        movl      %ecx, %esi                                    #108.4
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B13.16:                       # Preds ..B13.16 ..B13.15
                                # Execution count [1.08e+04]
        movups    %xmm0, (%r8,%rdx,4)                           #109.5
        movups    %xmm0, 16(%r8,%rdx,4)                         #109.5
        addq      $8, %rdx                                      #108.4
        cmpq      %rsi, %rdx                                    #108.4
        jb        ..B13.16      # Prob 99%                      #108.4
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B13.17:                       # Preds ..B13.16
                                # Execution count [6.00e+01]
        addl      $181, %eax                                    #108.4
        cmpl      $180, %eax                                    #108.4
        ja        ..B13.26      # Prob 50%                      #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 ecx r9d xmm0
..B13.18:                       # Preds ..B13.17
                                # Execution count [6.00e+01]
        movl      %ecx, %eax                                    #108.4
        negl      %eax                                          #108.4
        addl      $180, %eax                                    #108.4
        cmpl      $4, %eax                                      #108.4
        jb        ..B13.50      # Prob 10%                      #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B13.19:                       # Preds ..B13.18
                                # Execution count [6.00e+01]
        movl      %eax, %edx                                    #108.4
        xorl      %r10d, %r10d                                  #108.4
        andl      $-4, %edx                                     #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B13.20:                       # Preds ..B13.20 ..B13.19
                                # Execution count [1.08e+04]
        addl      $4, %r10d                                     #108.4
        movups    %xmm0, (%r8,%rsi,4)                           #109.5
        addq      $4, %rsi                                      #108.4
        cmpl      %edx, %r10d                                   #108.4
        jb        ..B13.20      # Prob 99%                      #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B13.22:                       # Preds ..B13.20 ..B13.50 ..B13.49
                                # Execution count [6.00e+01]
        addl      %edx, %ecx                                    #108.4
        movslq    %ecx, %rcx                                    #108.4
        cmpl      %eax, %edx                                    #108.4
        jae       ..B13.26      # Prob 0%                       #108.4
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d
..B13.23:                       # Preds ..B13.22
                                # Execution count [6.00e+01]
        movl      %r9d, %esi                                    #109.42
        pxor      %xmm1, %xmm1                                  #109.42
        imull     %r9d, %esi                                    #109.42
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #109.42
        cvtsi2ss  %esi, %xmm1                                   #109.42
        divss     %xmm1, %xmm0                                  #109.42
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B13.24:                       # Preds ..B13.24 ..B13.23
                                # Execution count [1.08e+04]
        incl      %edx                                          #108.4
        movss     %xmm0, (%r8,%rcx,4)                           #109.5
        incq      %rcx                                          #108.4
        cmpl      %eax, %edx                                    #108.4
        jb        ..B13.24      # Prob 99%                      #108.4
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B13.26:                       # Preds ..B13.24 ..B13.17 ..B13.22
                                # Execution count [6.00e+01]
        cmpl      $180, %r9d                                    #107.3
        jb        ..B13.9       # Prob 99%                      #107.3
        jmp       ..B13.48      # Prob 100%                     #107.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B13.28:                       # Preds ..B13.1
                                # Execution count [3.34e-01]
        xorl      %r8d, %r8d                                    #101.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B13.29:                       # Preds ..B13.46 ..B13.28
                                # Execution count [6.00e+01]
        movq      %rdi, %rdx                                    #102.4
        andq      $15, %rdx                                     #102.4
        testl     %edx, %edx                                    #102.4
        je        ..B13.34      # Prob 50%                      #102.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B13.30:                       # Preds ..B13.29
                                # Execution count [6.00e+01]
        testb     $3, %dl                                       #102.4
        jne       ..B13.51      # Prob 10%                      #102.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B13.31:                       # Preds ..B13.30
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%r8), %esi                                  #103.33
        cvtsi2ss  %esi, %xmm1                                   #103.33
        negl      %edx                                          #102.4
        xorl      %ecx, %ecx                                    #102.4
        addl      $16, %edx                                     #102.4
        shrl      $2, %edx                                      #102.4
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        movl      %edx, %eax                                    #102.4
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B13.32:                       # Preds ..B13.32 ..B13.31
                                # Execution count [1.08e+04]
        movss     %xmm0, (%rdi,%rcx,4)                          #103.5
        incq      %rcx                                          #102.4
        cmpq      %rax, %rcx                                    #102.4
        jb        ..B13.32      # Prob 99%                      #102.4
        jmp       ..B13.35      # Prob 100%                     #102.4
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B13.34:                       # Preds ..B13.29
                                # Execution count [3.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%r8), %ecx                                  #103.33
        cvtsi2ss  %ecx, %xmm1                                   #103.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        xorl      %eax, %eax                                    #102.4
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B13.35:                       # Preds ..B13.32 ..B13.34
                                # Execution count [6.00e+01]
        negl      %edx                                          #102.4
        lea       (%rdi,%rax,4), %r9                            #102.4
        addl      $4, %edx                                      #102.4
        andl      $7, %edx                                      #102.4
        negl      %edx                                          #102.4
        shufps    $0, %xmm0, %xmm0                              #103.33
        lea       180(%rdx), %ecx                               #102.4
        movl      %ecx, %esi                                    #102.4
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B13.36:                       # Preds ..B13.36 ..B13.35
                                # Execution count [1.08e+04]
        addq      $8, %rax                                      #102.4
        movups    %xmm0, (%r9)                                  #103.5
        movups    %xmm0, 16(%r9)                                #103.5
        addq      $32, %r9                                      #102.4
        cmpq      %rsi, %rax                                    #102.4
        jb        ..B13.36      # Prob 99%                      #102.4
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B13.37:                       # Preds ..B13.36
                                # Execution count [6.00e+01]
        addl      $181, %edx                                    #102.4
        cmpl      $180, %edx                                    #102.4
        ja        ..B13.46      # Prob 50%                      #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d xmm0
..B13.38:                       # Preds ..B13.37
                                # Execution count [6.00e+01]
        movl      %ecx, %edx                                    #102.4
        negl      %edx                                          #102.4
        addl      $180, %edx                                    #102.4
        cmpl      $4, %edx                                      #102.4
        jb        ..B13.52      # Prob 10%                      #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx r8d xmm0
..B13.39:                       # Preds ..B13.38
                                # Execution count [6.00e+01]
        movl      %edx, %eax                                    #102.4
        xorl      %r9d, %r9d                                    #102.4
        andl      $-4, %eax                                     #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B13.40:                       # Preds ..B13.40 ..B13.39
                                # Execution count [1.08e+04]
        addl      $4, %r9d                                      #102.4
        movups    %xmm0, (%rdi,%rsi,4)                          #103.5
        addq      $4, %rsi                                      #102.4
        cmpl      %eax, %r9d                                    #102.4
        jb        ..B13.40      # Prob 99%                      #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B13.42:                       # Preds ..B13.40 ..B13.52 ..B13.51
                                # Execution count [6.00e+01]
        addl      %eax, %ecx                                    #102.4
        movslq    %ecx, %rcx                                    #102.4
        cmpl      %edx, %eax                                    #102.4
        jae       ..B13.46      # Prob 0%                       #102.4
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d
..B13.43:                       # Preds ..B13.42
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%r8), %esi                                  #103.33
        cvtsi2ss  %esi, %xmm1                                   #103.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B13.44:                       # Preds ..B13.44 ..B13.43
                                # Execution count [1.08e+04]
        incl      %eax                                          #102.4
        movss     %xmm0, (%rdi,%rcx,4)                          #103.5
        incq      %rcx                                          #102.4
        cmpl      %edx, %eax                                    #102.4
        jb        ..B13.44      # Prob 99%                      #102.4
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B13.46:                       # Preds ..B13.44 ..B13.42 ..B13.37
                                # Execution count [6.00e+01]
        incl      %r8d                                          #101.3
        addq      $720, %rdi                                    #101.3
        cmpl      $180, %r8d                                    #101.3
        jb        ..B13.29      # Prob 99%                      #101.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B13.48:                       # Preds ..B13.46 ..B13.26 ..B13.6
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #119.9
        ret                                                     #119.9
                                # LOE
..B13.49:                       # Preds ..B13.10
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #108.4
        movl      $180, %eax                                    #108.4
        xorl      %edx, %edx                                    #108.4
        jmp       ..B13.22      # Prob 100%                     #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B13.50:                       # Preds ..B13.18
                                # Execution count [6.00e+00]: Infreq
        xorl      %edx, %edx                                    #108.4
        jmp       ..B13.22      # Prob 100%                     #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B13.51:                       # Preds ..B13.30
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #102.4
        movl      $180, %edx                                    #102.4
        xorl      %eax, %eax                                    #102.4
        jmp       ..B13.42      # Prob 100%                     #102.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
..B13.52:                       # Preds ..B13.38
                                # Execution count [6.00e+00]: Infreq
        xorl      %eax, %eax                                    #102.4
        jmp       ..B13.42      # Prob 100%                     #102.4
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
..B14.1:                        # Preds ..B14.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check.213:
..L214:
                                                        #122.21
        pushq     %r14                                          #122.21
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
        subq      $48, %rsp                                     #122.21
	.cfi_def_cfa_offset 64
        xorl      %eax, %eax                                    #129.2
        pxor      %xmm6, %xmm6                                  #124.13
        movl      %edi, %r14d                                   #122.21
        movaps    %xmm6, %xmm2                                  #124.13
        movaps    %xmm6, %xmm3                                  #125.13
        movaps    %xmm6, %xmm4                                  #126.13
        movaps    %xmm6, %xmm7                                  #127.13
        movaps    %xmm6, %xmm5                                  #128.13
        xorl      %edx, %edx                                    #129.2
                                # LOE rax rdx rbx rbp r12 r13 r15 r14d xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B14.2:                        # Preds ..B14.2 ..B14.1
                                # Execution count [3.20e+04]
        addps     a(,%rax,4), %xmm2                             #130.3
        addps     b(,%rax,4), %xmm3                             #131.3
        addps     c(,%rax,4), %xmm4                             #132.3
        addps     d(,%rax,4), %xmm7                             #133.3
        addps     e(,%rax,4), %xmm5                             #134.3
        addq      $4, %rax                                      #129.2
        cmpq      $32000, %rax                                  #129.2
        jb        ..B14.2       # Prob 99%                      #129.2
                                # LOE rax rdx rbx rbp r12 r13 r15 r14d xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B14.3:                        # Preds ..B14.2
                                # Execution count [1.00e+00]
        movaps    %xmm5, %xmm0                                  #128.13
        movaps    %xmm4, %xmm8                                  #126.13
        movaps    %xmm3, %xmm10                                 #125.13
        movaps    %xmm2, %xmm12                                 #124.13
        movhlps   %xmm5, %xmm0                                  #128.13
        movl      $4, %eax                                      #139.2
        movhlps   %xmm4, %xmm8                                  #126.13
        addps     %xmm0, %xmm5                                  #128.13
        addps     %xmm8, %xmm4                                  #126.13
        movhlps   %xmm3, %xmm10                                 #125.13
        movaps    %xmm5, %xmm1                                  #128.13
        movhlps   %xmm2, %xmm12                                 #124.13
        movaps    %xmm4, %xmm9                                  #126.13
        shufps    $245, %xmm5, %xmm1                            #128.13
        pxor      %xmm8, %xmm8                                  #137.14
        shufps    $245, %xmm4, %xmm9                            #126.13
        movaps    %xmm6, %xmm0                                  #147.17
        addps     %xmm10, %xmm3                                 #125.13
        addps     %xmm12, %xmm2                                 #124.13
        addss     %xmm1, %xmm5                                  #128.13
        addss     %xmm9, %xmm4                                  #126.13
        movaps    %xmm3, %xmm11                                 #125.13
        movaps    %xmm2, %xmm13                                 #124.13
        shufps    $245, %xmm3, %xmm11                           #125.13
        movaps    %xmm6, %xmm1                                  #138.14
        shufps    $245, %xmm2, %xmm13                           #124.13
        addss     %xmm11, %xmm3                                 #125.13
        addss     %xmm13, %xmm2                                 #124.13
        .align    16,0x90
                                # LOE rax rdx rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B14.4:                        # Preds ..B14.4 ..B14.3
                                # Execution count [3.24e+04]
        addps     aa(,%rdx,4), %xmm6                            #141.4
        addps     bb(,%rdx,4), %xmm8                            #142.4
        addps     cc(,%rdx,4), %xmm1                            #143.4
        addps     array(,%rdx,4), %xmm0                         #149.3
        addps     16+aa(,%rdx,4), %xmm6                         #141.4
        addps     16+bb(,%rdx,4), %xmm8                         #142.4
        addps     16+cc(,%rdx,4), %xmm1                         #143.4
        addps     array(,%rax,4), %xmm0                         #149.3
        addq      $8, %rdx                                      #139.2
        addq      $8, %rax                                      #139.2
        cmpq      $32400, %rdx                                  #139.2
        jb        ..B14.4       # Prob 99%                      #139.2
                                # LOE rax rdx rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B14.5:                        # Preds ..B14.4
                                # Execution count [1.00e+00]
        movaps    %xmm1, %xmm9                                  #138.14
        movaps    %xmm8, %xmm11                                 #137.14
        movaps    %xmm6, %xmm13                                 #136.14
        movhlps   %xmm1, %xmm9                                  #138.14
        movhlps   %xmm8, %xmm11                                 #137.14
        addps     %xmm9, %xmm1                                  #138.14
        addps     %xmm11, %xmm8                                 #137.14
        movhlps   %xmm6, %xmm13                                 #136.14
        movaps    %xmm1, %xmm10                                 #138.14
        movaps    %xmm8, %xmm12                                 #137.14
        addps     %xmm13, %xmm6                                 #136.14
        movaps    %xmm6, %xmm14                                 #136.14
        shufps    $245, %xmm1, %xmm10                           #138.14
        shufps    $245, %xmm8, %xmm12                           #137.14
        addss     %xmm10, %xmm1                                 #138.14
        addss     %xmm12, %xmm8                                 #137.14
        shufps    $245, %xmm6, %xmm14                           #136.14
        addss     %xmm14, %xmm6                                 #136.14
        cmpl      $1, %r14d                                     #152.14
        je        ..B14.41      # Prob 5%                       #152.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B14.6:                        # Preds ..B14.5
                                # Execution count [9.49e-01]
        cmpl      $2, %r14d                                     #153.14
        je        ..B14.40      # Prob 5%                       #153.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B14.7:                        # Preds ..B14.6
                                # Execution count [8.98e-01]
        cmpl      $3, %r14d                                     #154.14
        je        ..B14.39      # Prob 5%                       #154.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B14.8:                        # Preds ..B14.7
                                # Execution count [8.47e-01]
        cmpl      $4, %r14d                                     #155.14
        je        ..B14.38      # Prob 5%                       #155.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B14.9:                        # Preds ..B14.8
                                # Execution count [7.96e-01]
        cmpl      $5, %r14d                                     #156.14
        je        ..B14.37      # Prob 5%                       #156.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B14.10:                       # Preds ..B14.9
                                # Execution count [7.45e-01]
        cmpl      $11, %r14d                                    #157.14
        je        ..B14.36      # Prob 5%                       #157.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B14.11:                       # Preds ..B14.10
                                # Execution count [6.94e-01]
        cmpl      $22, %r14d                                    #158.14
        je        ..B14.35      # Prob 5%                       #158.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B14.12:                       # Preds ..B14.11
                                # Execution count [6.43e-01]
        cmpl      $33, %r14d                                    #159.14
        je        ..B14.34      # Prob 5%                       #159.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B14.13:                       # Preds ..B14.12
                                # Execution count [5.92e-01]
        testl     %r14d, %r14d                                  #160.14
        je        ..B14.23      # Prob 22%                      #160.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B14.14:                       # Preds ..B14.13
                                # Execution count [3.72e-01]
        cmpl      $12, %r14d                                    #161.14
        je        ..B14.33      # Prob 5%                       #161.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B14.15:                       # Preds ..B14.14
                                # Execution count [3.21e-01]
        cmpl      $25, %r14d                                    #162.14
        je        ..B14.32      # Prob 5%                       #162.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B14.16:                       # Preds ..B14.15
                                # Execution count [2.70e-01]
        cmpl      $13, %r14d                                    #163.14
        je        ..B14.31      # Prob 5%                       #163.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B14.17:                       # Preds ..B14.16
                                # Execution count [2.19e-01]
        cmpl      $123, %r14d                                   #164.14
        je        ..B14.30      # Prob 5%                       #164.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B14.18:                       # Preds ..B14.44 ..B14.17
                                # Execution count [2.19e-01]
        cmpl      $1122, %r14d                                  #165.14
        je        ..B14.29      # Prob 5%                       #165.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm6 xmm8
..B14.19:                       # Preds ..B14.45 ..B14.18
                                # Execution count [2.19e-01]
        cmpl      $112233, %r14d                                #166.14
        je        ..B14.28      # Prob 5%                       #166.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm6 xmm8
..B14.20:                       # Preds ..B14.46 ..B14.19
                                # Execution count [2.19e-01]
        cmpl      $111, %r14d                                   #167.14
        je        ..B14.27      # Prob 5%                       #167.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm2 xmm3 xmm6
..B14.21:                       # Preds ..B14.47 ..B14.20
                                # Execution count [2.19e-01]
        cmpl      $-1, %r14d                                    #168.14
        je        ..B14.26      # Prob 5%                       #168.14
                                # LOE rbx rbp r12 r13 r15 r14d xmm3
..B14.22:                       # Preds ..B14.48 ..B14.21
                                # Execution count [2.19e-01]
        cmpl      $-12, %r14d                                   #169.14
        je        ..B14.25      # Prob 5%                       #169.14
        jmp       ..B14.24      # Prob 100%                     #169.14
                                # LOE rbx rbp r12 r13 r15 xmm3
..B14.23:                       # Preds ..B14.13
                                # Execution count [2.20e-01]
        movaps    %xmm0, %xmm1                                  #147.17
        movl      $.L_2__STRING.0, %edi                         #160.17
        movhlps   %xmm0, %xmm1                                  #147.17
        movl      $1, %eax                                      #160.17
        addps     %xmm1, %xmm0                                  #147.17
        movaps    %xmm0, %xmm2                                  #147.17
        shufps    $245, %xmm0, %xmm2                            #147.17
        addss     %xmm2, %xmm0                                  #147.17
        cvtss2sd  %xmm0, %xmm0                                  #160.17
..___tag_value_check.218:
#       printf(const char *__restrict__, ...)
        call      printf                                        #160.17
..___tag_value_check.219:
                                # LOE rbx rbp r12 r13 r15
..B14.24:                       # Preds ..B14.23 ..B14.22
                                # Execution count [1.00e+00]
        addq      $48, %rsp                                     #171.1
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #171.1
	.cfi_def_cfa_offset 8
        ret                                                     #171.1
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE
..B14.25:                       # Preds ..B14.22
                                # Execution count [5.10e-02]: Infreq
        movss     temp(%rip), %xmm0                             #169.19
        movl      $.L_2__STRING.0, %edi                         #169.19
        movl      $1, %eax                                      #169.19
        addss     %xmm3, %xmm0                                  #169.19
        cvtss2sd  %xmm0, %xmm0                                  #169.19
..___tag_value_check.225:
#       printf(const char *__restrict__, ...)
        call      printf                                        #169.19
..___tag_value_check.226:
        addq      $48, %rsp                                     #169.19
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #169.19
	.cfi_def_cfa_offset 8
        ret                                                     #169.19
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.26:                       # Preds ..B14.21
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #168.18
        movl      $.L_2__STRING.0, %edi                         #168.18
        cvtss2sd  temp(%rip), %xmm0                             #168.18
        movl      $1, %eax                                      #168.18
        addq      $48, %rsp                                     #168.18
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #168.18
	.cfi_def_cfa_offset 8
#       printf(const char *__restrict__, ...)
        jmp       printf                                        #168.18
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE
..B14.27:                       # Preds ..B14.20
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #167.19
        movl      $1, %eax                                      #167.19
        addss     %xmm6, %xmm2                                  #167.19
        cvtss2sd  %xmm2, %xmm2                                  #167.19
        movaps    %xmm2, %xmm0                                  #167.19
..___tag_value_check.237:
#       printf(const char *__restrict__, ...)
        call      printf                                        #167.19
..___tag_value_check.238:
        addq      $48, %rsp                                     #167.19
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #167.19
	.cfi_def_cfa_offset 8
        ret                                                     #167.19
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.28:                       # Preds ..B14.19
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #166.22
        movl      $.L_2__STRING.0, %edi                         #166.22
        movl      $1, %eax                                      #166.22
        addss     %xmm8, %xmm6                                  #166.22
        addss     %xmm1, %xmm6                                  #166.22
        cvtss2sd  %xmm6, %xmm0                                  #166.22
..___tag_value_check.244:
#       printf(const char *__restrict__, ...)
        call      printf                                        #166.22
..___tag_value_check.245:
        addq      $48, %rsp                                     #166.22
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #166.22
	.cfi_def_cfa_offset 8
        ret                                                     #166.22
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.29:                       # Preds ..B14.18
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #165.20
        movl      $.L_2__STRING.0, %edi                         #165.20
        movl      $1, %eax                                      #165.20
        addss     %xmm8, %xmm6                                  #165.20
        cvtss2sd  %xmm6, %xmm0                                  #165.20
..___tag_value_check.251:
#       printf(const char *__restrict__, ...)
        call      printf                                        #165.20
..___tag_value_check.252:
        addq      $48, %rsp                                     #165.20
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #165.20
	.cfi_def_cfa_offset 8
        ret                                                     #165.20
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.30:                       # Preds ..B14.17
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #164.19
        movl      $1, %eax                                      #164.19
        addss     %xmm3, %xmm2                                  #164.19
        addss     %xmm4, %xmm2                                  #164.19
        cvtss2sd  %xmm2, %xmm2                                  #164.19
        movaps    %xmm2, %xmm0                                  #164.19
..___tag_value_check.258:
#       printf(const char *__restrict__, ...)
        call      printf                                        #164.19
..___tag_value_check.259:
        addq      $48, %rsp                                     #164.19
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #164.19
	.cfi_def_cfa_offset 8
        ret                                                     #164.19
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.31:                       # Preds ..B14.16
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #163.18
        movl      $1, %eax                                      #163.18
        addss     %xmm4, %xmm2                                  #163.18
        cvtss2sd  %xmm2, %xmm2                                  #163.18
        movaps    %xmm2, %xmm0                                  #163.18
..___tag_value_check.265:
#       printf(const char *__restrict__, ...)
        call      printf                                        #163.18
..___tag_value_check.266:
        addq      $48, %rsp                                     #163.18
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #163.18
	.cfi_def_cfa_offset 8
        ret                                                     #163.18
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.32:                       # Preds ..B14.15
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #162.18
        movl      $1, %eax                                      #162.18
        addss     %xmm5, %xmm3                                  #162.18
        cvtss2sd  %xmm3, %xmm3                                  #162.18
        movaps    %xmm3, %xmm0                                  #162.18
..___tag_value_check.272:
#       printf(const char *__restrict__, ...)
        call      printf                                        #162.18
..___tag_value_check.273:
        addq      $48, %rsp                                     #162.18
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #162.18
	.cfi_def_cfa_offset 8
        ret                                                     #162.18
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.33:                       # Preds ..B14.14
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #161.18
        movl      $1, %eax                                      #161.18
        addss     %xmm3, %xmm2                                  #161.18
        cvtss2sd  %xmm2, %xmm2                                  #161.18
        movaps    %xmm2, %xmm0                                  #161.18
..___tag_value_check.279:
#       printf(const char *__restrict__, ...)
        call      printf                                        #161.18
..___tag_value_check.280:
        addq      $48, %rsp                                     #161.18
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #161.18
	.cfi_def_cfa_offset 8
        ret                                                     #161.18
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.34:                       # Preds ..B14.12
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm1, %xmm1                                  #159.18
        movl      $.L_2__STRING.0, %edi                         #159.18
        movl      $1, %eax                                      #159.18
        movaps    %xmm1, %xmm0                                  #159.18
..___tag_value_check.286:
#       printf(const char *__restrict__, ...)
        call      printf                                        #159.18
..___tag_value_check.287:
        addq      $48, %rsp                                     #159.18
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #159.18
	.cfi_def_cfa_offset 8
        ret                                                     #159.18
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.35:                       # Preds ..B14.11
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #158.18
        movl      $.L_2__STRING.0, %edi                         #158.18
        cvtss2sd  %xmm8, %xmm0                                  #158.18
        movl      $1, %eax                                      #158.18
..___tag_value_check.293:
#       printf(const char *__restrict__, ...)
        call      printf                                        #158.18
..___tag_value_check.294:
        addq      $48, %rsp                                     #158.18
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #158.18
	.cfi_def_cfa_offset 8
        ret                                                     #158.18
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.36:                       # Preds ..B14.10
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #157.18
        movl      $.L_2__STRING.0, %edi                         #157.18
        cvtss2sd  %xmm6, %xmm0                                  #157.18
        movl      $1, %eax                                      #157.18
..___tag_value_check.300:
#       printf(const char *__restrict__, ...)
        call      printf                                        #157.18
..___tag_value_check.301:
        addq      $48, %rsp                                     #157.18
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        popq      %r14                                          #157.18
	.cfi_def_cfa_offset 8
        ret                                                     #157.18
	.cfi_def_cfa_offset 64
	.cfi_offset 14, -16
                                # LOE rbx rbp r12 r13 r15
..B14.37:                       # Preds ..B14.9
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm5, %xmm5                                  #156.17
        movl      $.L_2__STRING.0, %edi                         #156.17
        movl      $1, %eax                                      #156.17
        movaps    %xmm5, %xmm0                                  #156.17
        movss     %xmm3, (%rsp)                                 #156.17[spill]
..___tag_value_check.307:
#       printf(const char *__restrict__, ...)
        call      printf                                        #156.17
..___tag_value_check.308:
                                # LOE rbx rbp r12 r13 r15 r14d
..B14.48:                       # Preds ..B14.37
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        jmp       ..B14.22      # Prob 100%                     #
                                # LOE rbx rbp r12 r13 r15 r14d xmm3
..B14.38:                       # Preds ..B14.8
                                # Execution count [5.10e-02]: Infreq
        movaps    %xmm7, %xmm1                                  #127.13
        movl      $.L_2__STRING.0, %edi                         #155.17
        movhlps   %xmm7, %xmm1                                  #127.13
        movl      $1, %eax                                      #155.17
        movss     %xmm3, (%rsp)                                 #155.17[spill]
        addps     %xmm1, %xmm7                                  #127.13
        movaps    %xmm7, %xmm2                                  #127.13
        shufps    $245, %xmm7, %xmm2                            #127.13
        addss     %xmm2, %xmm7                                  #127.13
        cvtss2sd  %xmm7, %xmm7                                  #155.17
        movaps    %xmm7, %xmm0                                  #155.17
..___tag_value_check.309:
#       printf(const char *__restrict__, ...)
        call      printf                                        #155.17
..___tag_value_check.310:
                                # LOE rbx rbp r12 r13 r15 r14d
..B14.47:                       # Preds ..B14.38
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        jmp       ..B14.21      # Prob 100%                     #
                                # LOE rbx rbp r12 r13 r15 r14d xmm3
..B14.39:                       # Preds ..B14.7
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm4, %xmm4                                  #154.17
        movl      $.L_2__STRING.0, %edi                         #154.17
        movl      $1, %eax                                      #154.17
        movaps    %xmm4, %xmm0                                  #154.17
        movss     %xmm6, 8(%rsp)                                #154.17[spill]
        movss     %xmm2, 16(%rsp)                               #154.17[spill]
        movss     %xmm3, (%rsp)                                 #154.17[spill]
..___tag_value_check.311:
#       printf(const char *__restrict__, ...)
        call      printf                                        #154.17
..___tag_value_check.312:
                                # LOE rbx rbp r12 r13 r15 r14d
..B14.46:                       # Preds ..B14.39
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        movss     16(%rsp), %xmm2                               #[spill]
        movss     8(%rsp), %xmm6                                #[spill]
        jmp       ..B14.20      # Prob 100%                     #
                                # LOE rbx rbp r12 r13 r15 r14d xmm2 xmm3 xmm6
..B14.40:                       # Preds ..B14.6
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #153.17
        movl      $.L_2__STRING.0, %edi                         #153.17
        cvtss2sd  %xmm3, %xmm0                                  #153.17
        movl      $1, %eax                                      #153.17
        movss     %xmm6, 8(%rsp)                                #153.17[spill]
        movss     %xmm8, 24(%rsp)                               #153.17[spill]
        movss     %xmm1, 32(%rsp)                               #153.17[spill]
        movss     %xmm2, 16(%rsp)                               #153.17[spill]
        movss     %xmm3, (%rsp)                                 #153.17[spill]
..___tag_value_check.313:
#       printf(const char *__restrict__, ...)
        call      printf                                        #153.17
..___tag_value_check.314:
                                # LOE rbx rbp r12 r13 r15 r14d
..B14.45:                       # Preds ..B14.40
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        movss     16(%rsp), %xmm2                               #[spill]
        movss     32(%rsp), %xmm1                               #[spill]
        movss     24(%rsp), %xmm8                               #[spill]
        movss     8(%rsp), %xmm6                                #[spill]
        jmp       ..B14.19      # Prob 100%                     #
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm6 xmm8
..B14.41:                       # Preds ..B14.5
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #152.17
        movl      $.L_2__STRING.0, %edi                         #152.17
        cvtss2sd  %xmm2, %xmm0                                  #152.17
        movl      $1, %eax                                      #152.17
        movss     %xmm6, 8(%rsp)                                #152.17[spill]
        movss     %xmm8, 24(%rsp)                               #152.17[spill]
        movss     %xmm1, 32(%rsp)                               #152.17[spill]
        movss     %xmm2, 16(%rsp)                               #152.17[spill]
        movss     %xmm3, (%rsp)                                 #152.17[spill]
..___tag_value_check.315:
#       printf(const char *__restrict__, ...)
        call      printf                                        #152.17
..___tag_value_check.316:
                                # LOE rbx rbp r12 r13 r15 r14d
..B14.44:                       # Preds ..B14.41
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        movss     16(%rsp), %xmm2                               #[spill]
        movss     32(%rsp), %xmm1                               #[spill]
        movss     24(%rsp), %xmm8                               #[spill]
        movss     8(%rsp), %xmm6                                #[spill]
        jmp       ..B14.18      # Prob 100%                     #
        .align    16,0x90
                                # LOE rbx rbp r12 r13 r15 r14d xmm1 xmm2 xmm3 xmm6 xmm8
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
..B15.1:                        # Preds ..B15.0
                                # Execution count [3.33e-01]
	.cfi_startproc
..___tag_value_set1d..1.318:
..L319:
                                                        #78.1
        movq      %rdi, %r8                                     #78.1
        movq      %r8, %rax                                     #84.3
        andq      $15, %rax                                     #84.3
        testl     %eax, %eax                                    #84.3
        je        ..B15.6       # Prob 50%                      #84.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax
..B15.2:                        # Preds ..B15.1
                                # Execution count [3.33e-01]
        testb     $3, %al                                       #84.3
        jne       ..B15.18      # Prob 10%                      #84.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax
..B15.3:                        # Preds ..B15.2
                                # Execution count [3.33e-01]
        negl      %eax                                          #84.3
        xorl      %ecx, %ecx                                    #84.3
        addl      $16, %eax                                     #84.3
        xorl      %edx, %edx                                    #84.3
        shrl      $2, %eax                                      #84.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx
..B15.4:                        # Preds ..B15.4 ..B15.3
                                # Execution count [1.07e+04]
        incl      %ecx                                          #85.30
        pxor      %xmm0, %xmm0                                  #85.38
        movl      %ecx, %esi                                    #85.38
        imull     %ecx, %esi                                    #85.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #85.38
        cvtsi2ss  %esi, %xmm0                                   #85.38
        divss     %xmm0, %xmm1                                  #85.38
        movss     %xmm1, (%r8,%rdx,4)                           #85.4
        incq      %rdx                                          #85.30
        cmpl      %eax, %ecx                                    #84.3
        jb        ..B15.4       # Prob 99%                      #84.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx
..B15.6:                        # Preds ..B15.4 ..B15.1
                                # Execution count [3.33e-01]
        movl      %eax, %esi                                    #84.3
        movl      $4, %edx                                      #85.30
        negl      %esi                                          #84.3
        lea       1(%rax), %ecx                                 #85.30
        andl      $15, %esi                                     #84.3
        lea       2(%rax), %r9d                                 #85.30
        negl      %esi                                          #84.3
        lea       3(%rax), %r10d                                #85.30
        movd      %edx, %xmm0                                   #85.30
        lea       4(%rax), %r11d                                #85.30
        pshufd    $0, %xmm0, %xmm2                              #85.30
        movd      %ecx, %xmm0                                   #85.30
        movd      %r9d, %xmm1                                   #85.30
        movd      %r10d, %xmm4                                  #85.30
        lea       32000(%rsi), %edi                             #84.3
        movd      %r11d, %xmm3                                  #85.30
        movl      %edi, %edx                                    #84.3
        punpcklqdq %xmm1, %xmm0                                 #85.30
        punpcklqdq %xmm3, %xmm4                                 #85.30
        shufps    $136, %xmm4, %xmm0                            #85.30
        movl      %eax, %eax                                    #84.3
        movdqu    .L_2il0floatpacket.5(%rip), %xmm1             #85.38
                                # LOE rax rdx rbx rbp r8 r12 r13 r14 r15 esi edi xmm0 xmm1 xmm2
..B15.7:                        # Preds ..B15.7 ..B15.6
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #85.38
        movaps    %xmm0, %xmm4                                  #85.38
        psrlq     $32, %xmm3                                    #85.38
        pmuludq   %xmm0, %xmm4                                  #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        pmuludq   %xmm3, %xmm3                                  #85.38
        pand      %xmm1, %xmm4                                  #85.38
        psllq     $32, %xmm3                                    #85.38
        por       %xmm3, %xmm4                                  #85.38
        movaps    %xmm0, %xmm8                                  #85.38
        cvtdq2ps  %xmm4, %xmm5                                  #85.38
        pmuludq   %xmm0, %xmm8                                  #85.38
        rcpps     %xmm5, %xmm6                                  #85.38
        movaps    %xmm0, %xmm7                                  #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        movaps    %xmm0, %xmm12                                 #85.38
        movaps    %xmm0, %xmm11                                 #85.38
        pmuludq   %xmm0, %xmm12                                 #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        mulps     %xmm6, %xmm5                                  #85.38
        movaps    %xmm0, %xmm15                                 #85.38
        psrlq     $32, %xmm7                                    #85.38
        psrlq     $32, %xmm11                                   #85.38
        psrlq     $32, %xmm15                                   #85.38
        movaps    %xmm0, %xmm3                                  #85.38
        pand      %xmm1, %xmm8                                  #85.38
        pmuludq   %xmm7, %xmm7                                  #85.38
        pand      %xmm1, %xmm12                                 #85.38
        mulps     %xmm6, %xmm5                                  #85.38
        addps     %xmm6, %xmm6                                  #85.38
        pmuludq   %xmm11, %xmm11                                #85.38
        pmuludq   %xmm0, %xmm3                                  #85.38
        pmuludq   %xmm15, %xmm15                                #85.38
        subps     %xmm5, %xmm6                                  #85.38
        psllq     $32, %xmm7                                    #85.38
        psllq     $32, %xmm11                                   #85.38
        pand      %xmm1, %xmm3                                  #85.38
        psllq     $32, %xmm15                                   #85.38
        por       %xmm7, %xmm8                                  #85.38
        por       %xmm11, %xmm12                                #85.38
        por       %xmm15, %xmm3                                 #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        cvtdq2ps  %xmm8, %xmm9                                  #85.38
        cvtdq2ps  %xmm12, %xmm13                                #85.38
        cvtdq2ps  %xmm3, %xmm4                                  #85.38
        rcpps     %xmm9, %xmm10                                 #85.38
        rcpps     %xmm13, %xmm14                                #85.38
        rcpps     %xmm4, %xmm5                                  #85.38
        mulps     %xmm10, %xmm9                                 #85.38
        mulps     %xmm14, %xmm13                                #85.38
        mulps     %xmm5, %xmm4                                  #85.38
        mulps     %xmm10, %xmm9                                 #85.38
        addps     %xmm10, %xmm10                                #85.38
        mulps     %xmm14, %xmm13                                #85.38
        addps     %xmm14, %xmm14                                #85.38
        mulps     %xmm5, %xmm4                                  #85.38
        addps     %xmm5, %xmm5                                  #85.38
        subps     %xmm9, %xmm10                                 #85.38
        subps     %xmm13, %xmm14                                #85.38
        subps     %xmm4, %xmm5                                  #85.38
        movups    %xmm6, (%r8,%rax,4)                           #85.4
        movups    %xmm10, 16(%r8,%rax,4)                        #85.4
        movups    %xmm14, 32(%r8,%rax,4)                        #85.4
        movups    %xmm5, 48(%r8,%rax,4)                         #85.4
        addq      $16, %rax                                     #84.3
        cmpq      %rdx, %rax                                    #84.3
        jb        ..B15.7       # Prob 99%                      #84.3
                                # LOE rax rdx rbx rbp r8 r12 r13 r14 r15 esi edi xmm0 xmm1 xmm2
..B15.8:                        # Preds ..B15.7
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #84.3
        cmpl      $32000, %r9d                                  #84.3
        ja        ..B15.17      # Prob 50%                      #84.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 esi edi r9d xmm1 xmm2
..B15.9:                        # Preds ..B15.8
                                # Execution count [3.16e-01]
        movl      %edi, %eax                                    #84.3
        negl      %eax                                          #84.3
        addl      $32000, %eax                                  #84.3
        cmpl      $4, %eax                                      #84.3
        jb        ..B15.19      # Prob 10%                      #84.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax esi edi r9d xmm1 xmm2
..B15.10:                       # Preds ..B15.9
                                # Execution count [3.33e-01]
        movd      %r9d, %xmm0                                   #85.30
        lea       32002(%rsi), %r10d                            #85.30
        movl      %eax, %ecx                                    #84.3
        lea       32003(%rsi), %r11d                            #85.30
        addl      $32004, %esi                                  #85.30
        andl      $-4, %ecx                                     #84.3
        movd      %r10d, %xmm3                                  #85.30
        movd      %r11d, %xmm5                                  #85.30
        movd      %esi, %xmm4                                   #85.30
        xorl      %esi, %esi                                    #84.3
        punpcklqdq %xmm3, %xmm0                                 #85.30
        punpcklqdq %xmm4, %xmm5                                 #85.30
        shufps    $136, %xmm5, %xmm0                            #85.30
        .align    16,0x90
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx esi edi xmm0 xmm1 xmm2
..B15.11:                       # Preds ..B15.11 ..B15.10
                                # Execution count [1.07e+04]
        movaps    %xmm0, %xmm3                                  #85.38
        movaps    %xmm0, %xmm4                                  #85.38
        psrlq     $32, %xmm3                                    #85.38
        addl      $4, %esi                                      #84.3
        pmuludq   %xmm0, %xmm4                                  #85.38
        paddd     %xmm2, %xmm0                                  #85.30
        pmuludq   %xmm3, %xmm3                                  #85.38
        pand      %xmm1, %xmm4                                  #85.38
        psllq     $32, %xmm3                                    #85.38
        por       %xmm3, %xmm4                                  #85.38
        cvtdq2ps  %xmm4, %xmm5                                  #85.38
        rcpps     %xmm5, %xmm6                                  #85.38
        mulps     %xmm6, %xmm5                                  #85.38
        mulps     %xmm6, %xmm5                                  #85.38
        addps     %xmm6, %xmm6                                  #85.38
        subps     %xmm5, %xmm6                                  #85.38
        movups    %xmm6, (%r8,%rdx,4)                           #85.4
        addq      $4, %rdx                                      #84.3
        cmpl      %ecx, %esi                                    #84.3
        jb        ..B15.11      # Prob 99%                      #84.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx esi edi xmm0 xmm1 xmm2
..B15.13:                       # Preds ..B15.11 ..B15.19 ..B15.18
                                # Execution count [3.33e-01]
        addl      %ecx, %edi                                    #84.3
        movslq    %edi, %rdx                                    #84.3
        cmpl      %eax, %ecx                                    #84.3
        jae       ..B15.17      # Prob 0%                       #84.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx edi
..B15.15:                       # Preds ..B15.13 ..B15.15
                                # Execution count [1.07e+04]
        incl      %edi                                          #85.38
        pxor      %xmm0, %xmm0                                  #85.38
        movl      %edi, %esi                                    #85.38
        incl      %ecx                                          #84.3
        imull     %edi, %esi                                    #85.38
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #85.38
        cvtsi2ss  %esi, %xmm0                                   #85.38
        divss     %xmm0, %xmm1                                  #85.38
        movss     %xmm1, (%r8,%rdx,4)                           #85.4
        incq      %rdx                                          #84.3
        cmpl      %eax, %ecx                                    #84.3
        jb        ..B15.15      # Prob 99%                      #84.3
                                # LOE rdx rbx rbp r8 r12 r13 r14 r15 eax ecx edi
..B15.17:                       # Preds ..B15.15 ..B15.13 ..B15.8
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #92.9
        ret                                                     #92.9
                                # LOE
..B15.18:                       # Preds ..B15.2
                                # Execution count [3.33e-02]: Infreq
        xorl      %edi, %edi                                    #84.3
        movl      $32000, %eax                                  #84.3
        xorl      %ecx, %ecx                                    #84.3
        jmp       ..B15.13      # Prob 100%                     #84.3
                                # LOE rbx rbp r8 r12 r13 r14 r15 eax ecx edi
..B15.19:                       # Preds ..B15.9
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #84.3
        jmp       ..B15.13      # Prob 100%                     #84.3
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
..B16.1:                        # Preds ..B16.0
                                # Execution count [3.33e-01]
	.cfi_startproc
..___tag_value_set1d..0.321:
..L322:
                                                        #78.1
        movq      %rdi, %rdx                                    #88.3
        andq      $15, %rdx                                     #88.3
        testl     %edx, %edx                                    #88.3
        je        ..B16.6       # Prob 50%                      #88.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B16.2:                        # Preds ..B16.1
                                # Execution count [3.33e-01]
        testb     $3, %dl                                       #88.3
        jne       ..B16.19      # Prob 10%                      #88.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B16.3:                        # Preds ..B16.2
                                # Execution count [3.33e-01]
        negl      %edx                                          #88.3
        xorl      %eax, %eax                                    #88.3
        addl      $16, %edx                                     #88.3
        shrl      $2, %edx                                      #88.3
        movl      %edx, %ecx                                    #88.3
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B16.4:                        # Preds ..B16.4 ..B16.3
                                # Execution count [1.85e+00]
        movss     %xmm0, (%rdi,%rax,4)                          #89.4
        incq      %rax                                          #88.3
        cmpq      %rcx, %rax                                    #88.3
        jb        ..B16.4       # Prob 82%                      #88.3
        jmp       ..B16.7       # Prob 100%                     #88.3
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B16.6:                        # Preds ..B16.1
                                # Execution count [1.67e-01]
        xorl      %ecx, %ecx                                    #88.3
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 edx xmm0
..B16.7:                        # Preds ..B16.4 ..B16.6
                                # Execution count [3.33e-01]
        negl      %edx                                          #88.3
        movaps    %xmm0, %xmm1                                  #77.5
        andl      $15, %edx                                     #88.3
        negl      %edx                                          #88.3
        shufps    $0, %xmm1, %xmm1                              #77.5
        lea       32000(%rdx), %eax                             #88.3
        movl      %eax, %esi                                    #88.3
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm0 xmm1
..B16.8:                        # Preds ..B16.8 ..B16.7
                                # Execution count [1.85e+00]
        movups    %xmm1, (%rdi,%rcx,4)                          #89.4
        movups    %xmm1, 16(%rdi,%rcx,4)                        #89.4
        movups    %xmm1, 32(%rdi,%rcx,4)                        #89.4
        movups    %xmm1, 48(%rdi,%rcx,4)                        #89.4
        addq      $16, %rcx                                     #88.3
        cmpq      %rsi, %rcx                                    #88.3
        jb        ..B16.8       # Prob 82%                      #88.3
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm0 xmm1
..B16.9:                        # Preds ..B16.8
                                # Execution count [3.00e-01]
        addl      $32001, %edx                                  #88.3
        cmpl      $32000, %edx                                  #88.3
        ja        ..B16.18      # Prob 50%                      #88.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0 xmm1
..B16.10:                       # Preds ..B16.9
                                # Execution count [3.17e-01]
        movl      %eax, %r8d                                    #88.3
        negl      %r8d                                          #88.3
        addl      $32000, %r8d                                  #88.3
        cmpl      $4, %r8d                                      #88.3
        jb        ..B16.20      # Prob 10%                      #88.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax r8d xmm0 xmm1
..B16.11:                       # Preds ..B16.10
                                # Execution count [3.33e-01]
        movl      %r8d, %ecx                                    #88.3
        xorl      %edx, %edx                                    #88.3
        andl      $-4, %ecx                                     #88.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d xmm0 xmm1
..B16.12:                       # Preds ..B16.12 ..B16.11
                                # Execution count [1.85e+00]
        addl      $4, %edx                                      #88.3
        movups    %xmm1, (%rdi,%rsi,4)                          #89.4
        addq      $4, %rsi                                      #88.3
        cmpl      %ecx, %edx                                    #88.3
        jb        ..B16.12      # Prob 82%                      #88.3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d xmm0 xmm1
..B16.14:                       # Preds ..B16.12 ..B16.20 ..B16.19
                                # Execution count [3.33e-01]
        addl      %ecx, %eax                                    #88.3
        movslq    %eax, %rax                                    #88.3
        cmpl      %r8d, %ecx                                    #88.3
        jae       ..B16.18      # Prob 0%                       #88.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 ecx r8d xmm0
..B16.16:                       # Preds ..B16.14 ..B16.16
                                # Execution count [1.85e+00]
        incl      %ecx                                          #88.3
        movss     %xmm0, (%rdi,%rax,4)                          #89.4
        incq      %rax                                          #88.3
        cmpl      %r8d, %ecx                                    #88.3
        jb        ..B16.16      # Prob 82%                      #88.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 ecx r8d xmm0
..B16.18:                       # Preds ..B16.16 ..B16.14 ..B16.9
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #92.9
        ret                                                     #92.9
                                # LOE
..B16.19:                       # Preds ..B16.2
                                # Execution count [3.33e-02]: Infreq
        xorl      %eax, %eax                                    #88.3
        movl      $32000, %r8d                                  #88.3
        xorl      %ecx, %ecx                                    #88.3
        jmp       ..B16.14      # Prob 100%                     #88.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d xmm0
..B16.20:                       # Preds ..B16.10
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #88.3
        jmp       ..B16.14      # Prob 100%                     #88.3
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
..B17.1:                        # Preds ..B17.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.324:
..L325:
                                                        #174.1
        pushq     %rsi                                          #174.1
	.cfi_def_cfa_offset 16
        movl      $.L_2__STRING.3, %esi                         #185.7
        movq      %rdi, %rcx                                    #174.1
..L327:                                                         #185.7
        movb      (%rdi), %dl                                   #185.7
        cmpb      (%rsi), %dl                                   #185.7
        jne       ..L329        # Prob 50%                      #185.7
        testb     %dl, %dl                                      #185.7
        je        ..L328        # Prob 50%                      #185.7
        movb      1(%rdi), %dl                                  #185.7
        cmpb      1(%rsi), %dl                                  #185.7
        jne       ..L329        # Prob 50%                      #185.7
        addq      $2, %rdi                                      #185.7
        addq      $2, %rsi                                      #185.7
        testb     %dl, %dl                                      #185.7
        jne       ..L327        # Prob 50%                      #185.7
..L328:                                                         #
        xorl      %eax, %eax                                    #185.7
        jmp       ..L330        # Prob 100%                     #185.7
..L329:                                                         #
        sbbl      %eax, %eax                                    #185.7
        orl       $1, %eax                                      #185.7
..L330:                                                         #
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B17.14:                       # Preds ..B17.1
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #185.7
        je        ..B17.7       # Prob 22%                      #185.7
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B17.2:                        # Preds ..B17.14
                                # Execution count [7.80e-01]
        movq      %rcx, %rdi                                    #190.14
        movl      $.L_2__STRING.2, %esi                         #190.14
..L331:                                                         #190.14
        movb      (%rdi), %dl                                   #190.14
        cmpb      (%rsi), %dl                                   #190.14
        jne       ..L333        # Prob 50%                      #190.14
        testb     %dl, %dl                                      #190.14
        je        ..L332        # Prob 50%                      #190.14
        movb      1(%rdi), %dl                                  #190.14
        cmpb      1(%rsi), %dl                                  #190.14
        jne       ..L333        # Prob 50%                      #190.14
        addq      $2, %rdi                                      #190.14
        addq      $2, %rsi                                      #190.14
        testb     %dl, %dl                                      #190.14
        jne       ..L331        # Prob 50%                      #190.14
..L332:                                                         #
        xorl      %eax, %eax                                    #190.14
        jmp       ..L334        # Prob 100%                     #190.14
..L333:                                                         #
        sbbl      %eax, %eax                                    #190.14
        orl       $1, %eax                                      #190.14
..L334:                                                         #
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B17.15:                       # Preds ..B17.2
                                # Execution count [7.80e-01]
        testl     %eax, %eax                                    #190.14
        je        ..B17.5       # Prob 22%                      #190.14
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B17.3:                        # Preds ..B17.15
                                # Execution count [6.08e-01]
        movq      %rcx, %rdi                                    #193.14
        movl      $.L_2__STRING.1, %esi                         #193.14
..L335:                                                         #193.14
        movb      (%rdi), %dl                                   #193.14
        cmpb      (%rsi), %dl                                   #193.14
        jne       ..L337        # Prob 50%                      #193.14
        testb     %dl, %dl                                      #193.14
        je        ..L336        # Prob 50%                      #193.14
        movb      1(%rdi), %dl                                  #193.14
        cmpb      1(%rsi), %dl                                  #193.14
        jne       ..L337        # Prob 50%                      #193.14
        addq      $2, %rdi                                      #193.14
        addq      $2, %rsi                                      #193.14
        testb     %dl, %dl                                      #193.14
        jne       ..L335        # Prob 50%                      #193.14
..L336:                                                         #
        xorl      %eax, %eax                                    #193.14
        jmp       ..L338        # Prob 100%                     #193.14
..L337:                                                         #
        sbbl      %eax, %eax                                    #193.14
        orl       $1, %eax                                      #193.14
..L338:                                                         #
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B17.16:                       # Preds ..B17.3
                                # Execution count [6.08e-01]
        testl     %eax, %eax                                    #193.14
        jne       ..B17.11      # Prob 78%                      #193.14
                                # LOE rbx rbp r12 r13 r14 r15
..B17.4:                        # Preds ..B17.16
                                # Execution count [1.34e-01]
        movss     .L_2il0floatpacket.7(%rip), %xmm0             #194.3
        movl      $a, %edi                                      #194.3
        movl      $1, %esi                                      #194.3
..___tag_value_init.339:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #194.3
..___tag_value_init.340:
        jmp       ..B17.11      # Prob 100%                     #194.3
                                # LOE rbx rbp r12 r13 r14 r15
..B17.5:                        # Preds ..B17.15
                                # Execution count [1.72e-01]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #191.3
        movl      $a, %edi                                      #191.3
        movl      $1, %esi                                      #191.3
..___tag_value_init.341:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #191.3
..___tag_value_init.342:
                                # LOE rbx rbp r12 r13 r14 r15
..B17.6:                        # Preds ..B17.5
                                # Execution count [1.72e-01]
        movl      $b, %edi                                      #192.3
        movl      $-2, %esi                                     #192.3
        pxor      %xmm0, %xmm0                                  #192.3
..___tag_value_init.343:
#       set1d..1(float *, float, int)
        call      set1d..1                                      #192.3
..___tag_value_init.344:
        jmp       ..B17.11      # Prob 100%                     #192.3
                                # LOE rbx rbp r12 r13 r14 r15
..B17.7:                        # Preds ..B17.14
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #186.3
        movl      $a, %edi                                      #186.3
        movl      $1, %esi                                      #186.3
..___tag_value_init.345:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #186.3
..___tag_value_init.346:
                                # LOE rbx rbp r12 r13 r14 r15
..B17.8:                        # Preds ..B17.7
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #187.3
        movl      $b, %edi                                      #187.3
        movl      $1, %esi                                      #187.3
..___tag_value_init.347:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #187.3
..___tag_value_init.348:
                                # LOE rbx rbp r12 r13 r14 r15
..B17.9:                        # Preds ..B17.8
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #188.3
        movl      $c, %edi                                      #188.3
        movl      $1, %esi                                      #188.3
..___tag_value_init.349:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #188.3
..___tag_value_init.350:
                                # LOE rbx rbp r12 r13 r14 r15
..B17.10:                       # Preds ..B17.9
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #189.3
        movl      $d, %edi                                      #189.3
        movl      $1, %esi                                      #189.3
..___tag_value_init.351:
#       set1d..0(float *, float, int)
        call      set1d..0                                      #189.3
..___tag_value_init.352:
                                # LOE rbx rbp r12 r13 r14 r15
..B17.11:                       # Preds ..B17.10 ..B17.16 ..B17.4 ..B17.6
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #197.9
        popq      %rcx                                          #197.9
	.cfi_def_cfa_offset 8
        ret                                                     #197.9
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
	.long	0xa0b5ed8d,0x3eb0c6f7
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
.L_2__STRING.16:
	.long	1635020628
	.long	1970413676
	.long	1852403310
	.long	1769218151
	.long	154821997
	.long	892216608
	.long	663654
	.type	.L_2__STRING.16,@object
	.size	.L_2__STRING.16,28
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
.L_2__STRING.2:
	.long	842084723
	.word	32
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.11:
	.long	842084691
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.11,@object
	.size	.L_2__STRING.11,14
	.space 2, 0x00 	# pad
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
