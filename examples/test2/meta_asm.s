# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "-Ofast -std=c99 -fno-inline-functions -fpic -S -o meta_asm.s";
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
        call      __intel_new_feature_proc_init@PLT             #362.11
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
        call      memalign@PLT                                  #366.20
                                # LOE rax r12 r13 r14 r15
..B1.2:                         # Preds ..B1.19
                                # Execution count [1.00e+00]
        movq      %rax, %rdi                                    #368.2
        lea       (%rsp), %rsi                                  #368.2
        lea       4(%rsp), %rdx                                 #368.2
..___tag_value_main.7:
#       set(int *, float *, float *)
        call      set@PLT                                       #368.2
..___tag_value_main.8:
                                # LOE r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        lea       il0_peep_printf_format_0(%rip), %rdi          #369.2
        call      puts@PLT                                      #369.2
                                # LOE r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #371.12
                                # LOE rax r12 r13 r14 r15
..B1.20:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #371.12
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.20
                                # Execution count [1.00e+00]
        lea       il0_peep_printf_format_1(%rip), %rdi          #373.2
        call      puts@PLT                                      #373.2
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        movss     (%rsp), %xmm0                                 #374.2
        movss     4(%rsp), %xmm1                                #374.2
..___tag_value_main.9:
#       s242(float, float)
        call      s242@PLT                                      #374.2
..___tag_value_main.10:
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
..___tag_value_main.11:
#       s2275()
        call      s2275@PLT                                     #375.2
..___tag_value_main.12:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        lea       il0_peep_printf_format_2(%rip), %rdi          #378.2
        call      puts@PLT                                      #378.2
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
..___tag_value_main.13:
#       s112()
        call      s112@PLT                                      #379.2
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        lea       il0_peep_printf_format_3(%rip), %rdi          #382.2
        call      puts@PLT                                      #382.2
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
..___tag_value_main.15:
#       s312()
        call      s312@PLT                                      #383.2
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
..___tag_value_main.17:
#       s317()
        call      s317@PLT                                      #384.2
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #386.10
                                # LOE rax rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        subq      %rbx, %rax                                    #388.2
        pxor      %xmm0, %xmm0                                  #388.2
        cvtsi2sdq %rax, %xmm0                                   #388.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #388.2
        lea       .L_2__STRING.16(%rip), %rdi                   #388.2
        movl      $1, %eax                                      #388.2
..___tag_value_main.19:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #388.2
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
        pushq     %r15                                          #200.40
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
        pushq     %rbx                                          #200.40
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
        pushq     %rbp                                          #200.40
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
        movq      %rsi, %rbx                                    #200.40
        movq      %rdi, %rbp                                    #200.40
        movl      $16, %edi                                     #201.16
        movl      $128000, %esi                                 #201.16
        movq      %rdx, %r15                                    #200.40
#       memalign(size_t, size_t)
        call      memalign@PLT                                  #201.16
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        movq      xx@GOTPCREL(%rip), %rdx                       #201.2
        movl      $10, %edi                                     #202.2
        movq      %rax, (%rdx)                                  #201.2
        call      putchar@PLT                                   #202.2
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
        movl      %ecx, (%rbp,%rax,4)                           #204.3
        lea       1(%rax), %r8d                                 #208.16
        movl      %esi, 4(%rbp,%rax,4)                          #205.3
        lea       9(%rax), %r9d                                 #204.14
        movl      %eax, 8(%rbp,%rax,4)                          #206.3
        lea       7(%rax), %r10d                                #205.16
        movl      %edi, 12(%rbp,%rax,4)                         #207.3
        lea       5(%rax), %r11d                                #204.3
        movl      %r8d, 16(%rbp,%rax,4)                         #208.3
        lea       8(%rax), %ecx                                 #207.16
        movl      %r9d, 20(%rbp,%rax,4)                         #204.3
        lea       6(%rax), %esi                                 #208.16
        movl      %r10d, 24(%rbp,%rax,4)                        #205.3
        movl      %r11d, 28(%rbp,%rax,4)                        #206.3
        movl      %ecx, 32(%rbp,%rax,4)                         #207.3
        movl      %esi, 36(%rbp,%rax,4)                         #208.3
        addl      $10, %eax                                     #203.2
        cmpl      $3200, %edx                                   #203.2
        jb        ..B2.4        # Prob 99%                      #203.2
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.5:                         # Preds ..B2.4
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #212.2
        movl      $1, %esi                                      #212.2
        movq      a@GOTPCREL(%rip), %rdi                        #212.2
..___tag_value_set.33:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #212.2
..___tag_value_set.34:
                                # LOE rbx r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #213.2
        movl      $1, %esi                                      #213.2
        movq      b@GOTPCREL(%rip), %rdi                        #213.2
..___tag_value_set.35:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #213.2
..___tag_value_set.36:
                                # LOE rbx r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #214.2
        movl      $1, %esi                                      #214.2
        movq      c@GOTPCREL(%rip), %rdi                        #214.2
..___tag_value_set.37:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #214.2
..___tag_value_set.38:
                                # LOE rbx r12 r13 r14 r15
..B2.8:                         # Preds ..B2.7
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #215.2
        movl      $1, %esi                                      #215.2
        movq      d@GOTPCREL(%rip), %rdi                        #215.2
..___tag_value_set.39:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #215.2
..___tag_value_set.40:
                                # LOE rbx r12 r13 r14 r15
..B2.9:                         # Preds ..B2.8
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #216.2
        movl      $1, %esi                                      #216.2
        movq      e@GOTPCREL(%rip), %rdi                        #216.2
..___tag_value_set.41:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #216.2
..___tag_value_set.42:
                                # LOE rbx r12 r13 r14 r15
..B2.10:                        # Preds ..B2.9
                                # Execution count [1.00e+00]
        movl      $-1, %esi                                     #217.2
        pxor      %xmm0, %xmm0                                  #217.2
        movq      aa@GOTPCREL(%rip), %rdi                       #217.2
..___tag_value_set.43:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #217.2
..___tag_value_set.44:
                                # LOE rbx r12 r13 r14 r15
..B2.11:                        # Preds ..B2.10
                                # Execution count [1.00e+00]
        movl      $-1, %esi                                     #218.2
        pxor      %xmm0, %xmm0                                  #218.2
        movq      bb@GOTPCREL(%rip), %rdi                       #218.2
..___tag_value_set.45:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #218.2
..___tag_value_set.46:
                                # LOE rbx r12 r13 r14 r15
..B2.12:                        # Preds ..B2.11
                                # Execution count [1.00e+00]
        movl      $-1, %esi                                     #219.2
        pxor      %xmm0, %xmm0                                  #219.2
        movq      cc@GOTPCREL(%rip), %rdi                       #219.2
..___tag_value_set.47:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #219.2
..___tag_value_set.48:
                                # LOE rbx r12 r13 r14 r15
..B2.13:                        # Preds ..B2.12
                                # Execution count [1.00e+00]
        movq      indx@GOTPCREL(%rip), %rax                     #222.3
        xorl      %edx, %edx                                    #221.2
                                # LOE rax rdx rbx r12 r13 r14 r15
..B2.14:                        # Preds ..B2.14 ..B2.13
                                # Execution count [3.20e+04]
        movl      %edx, %ecx                                    #222.3
        incl      %ecx                                          #222.16
        andl      $3, %ecx                                      #222.21
        incl      %ecx                                          #222.23
        movl      %ecx, (%rax,%rdx,4)                           #222.3
        incq      %rdx                                          #221.2
        cmpq      $32000, %rdx                                  #221.2
        jb        ..B2.14       # Prob 99%                      #221.2
                                # LOE rax rdx rbx r12 r13 r14 r15
..B2.15:                        # Preds ..B2.14
                                # Execution count [1.00e+00]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #224.3
        movss     %xmm0, (%rbx)                                 #224.3
        movl      $1073741824, (%r15)                           #225.3
	.cfi_restore 6
        popq      %rbp                                          #227.1
	.cfi_def_cfa_offset 24
	.cfi_restore 3
        popq      %rbx                                          #227.1
	.cfi_def_cfa_offset 16
	.cfi_restore 15
        popq      %r15                                          #227.1
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
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set2d.56:
..L57:
                                                         #96.1
        movslq    %esi, %rsi                                    #96.1
        cmpq      $-1, %rsi                                     #100.6
        je        ..B3.28       # Prob 33%                      #100.6
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.2:                         # Preds ..B3.1
                                # Execution count [6.67e-01]
        cmpq      $-2, %rsi                                     #100.6
        je        ..B3.8        # Prob 50%                      #100.6
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.3:                         # Preds ..B3.2
                                # Execution count [3.33e-01]
        xorl      %eax, %eax                                    #113.14
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.4:                         # Preds ..B3.6 ..B3.3
                                # Execution count [6.00e+01]
        xorl      %edx, %edx                                    #114.15
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.5:                         # Preds ..B3.5 ..B3.4
                                # Execution count [3.33e+02]
        movss     %xmm0, (%rdi,%rdx,4)                          #115.5
        addq      %rsi, %rdx                                    #114.30
        cmpq      $180, %rdx                                    #114.24
        jl        ..B3.5        # Prob 82%                      #114.24
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.6:                         # Preds ..B3.5
                                # Execution count [6.00e+01]
        incl      %eax                                          #113.29
        addq      $720, %rdi                                    #113.29
        cmpl      $180, %eax                                    #113.23
        jl        ..B3.4        # Prob 99%                      #113.23
        jmp       ..B3.48       # Prob 100%                     #113.23
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.8:                         # Preds ..B3.2
                                # Execution count [3.34e-01]
        xorl      %r9d, %r9d                                    #107.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B3.9:                         # Preds ..B3.26 ..B3.8
                                # Execution count [6.00e+01]
        movslq    %r9d, %r9                                     #109.5
        imulq     $720, %r9, %r8                                #109.5
        addq      %rdi, %r8                                     #109.5
        movq      %r8, %rax                                     #108.4
        andq      $15, %rax                                     #108.4
        testl     %eax, %eax                                    #108.4
        je        ..B3.14       # Prob 50%                      #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B3.10:                        # Preds ..B3.9
                                # Execution count [6.00e+01]
        incl      %r9d                                          #109.34
        testb     $3, %al                                       #108.4
        jne       ..B3.49       # Prob 10%                      #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B3.11:                        # Preds ..B3.10
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
..B3.12:                        # Preds ..B3.12 ..B3.11
                                # Execution count [1.08e+04]
        movss     %xmm0, (%r8,%rcx,4)                           #109.5
        incq      %rcx                                          #108.4
        cmpq      %rdx, %rcx                                    #108.4
        jb        ..B3.12       # Prob 99%                      #108.4
        jmp       ..B3.15       # Prob 100%                     #108.4
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B3.14:                        # Preds ..B3.9
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
..B3.15:                        # Preds ..B3.12 ..B3.14
                                # Execution count [6.00e+01]
        negl      %eax                                          #108.4
        addl      $4, %eax                                      #108.4
        andl      $7, %eax                                      #108.4
        negl      %eax                                          #108.4
        shufps    $0, %xmm0, %xmm0                              #109.42
        lea       180(%rax), %ecx                               #108.4
        movl      %ecx, %esi                                    #108.4
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.16:                        # Preds ..B3.16 ..B3.15
                                # Execution count [1.08e+04]
        movups    %xmm0, (%r8,%rdx,4)                           #109.5
        movups    %xmm0, 16(%r8,%rdx,4)                         #109.5
        addq      $8, %rdx                                      #108.4
        cmpq      %rsi, %rdx                                    #108.4
        jb        ..B3.16       # Prob 99%                      #108.4
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.17:                        # Preds ..B3.16
                                # Execution count [6.00e+01]
        addl      $181, %eax                                    #108.4
        cmpl      $180, %eax                                    #108.4
        ja        ..B3.26       # Prob 50%                      #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 ecx r9d xmm0
..B3.18:                        # Preds ..B3.17
                                # Execution count [6.00e+01]
        movl      %ecx, %eax                                    #108.4
        negl      %eax                                          #108.4
        addl      $180, %eax                                    #108.4
        cmpl      $4, %eax                                      #108.4
        jb        ..B3.50       # Prob 10%                      #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.19:                        # Preds ..B3.18
                                # Execution count [6.00e+01]
        movl      %eax, %edx                                    #108.4
        xorl      %r10d, %r10d                                  #108.4
        andl      $-4, %edx                                     #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B3.20:                        # Preds ..B3.20 ..B3.19
                                # Execution count [1.08e+04]
        addl      $4, %r10d                                     #108.4
        movups    %xmm0, (%r8,%rsi,4)                           #109.5
        addq      $4, %rsi                                      #108.4
        cmpl      %edx, %r10d                                   #108.4
        jb        ..B3.20       # Prob 99%                      #108.4
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B3.22:                        # Preds ..B3.20 ..B3.50 ..B3.49
                                # Execution count [6.00e+01]
        addl      %edx, %ecx                                    #108.4
        movslq    %ecx, %rcx                                    #108.4
        cmpl      %eax, %edx                                    #108.4
        jae       ..B3.26       # Prob 0%                       #108.4
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d
..B3.23:                        # Preds ..B3.22
                                # Execution count [6.00e+01]
        movl      %r9d, %esi                                    #109.42
        pxor      %xmm1, %xmm1                                  #109.42
        imull     %r9d, %esi                                    #109.42
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #109.42
        cvtsi2ss  %esi, %xmm1                                   #109.42
        divss     %xmm1, %xmm0                                  #109.42
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B3.24:                        # Preds ..B3.24 ..B3.23
                                # Execution count [1.08e+04]
        incl      %edx                                          #108.4
        movss     %xmm0, (%r8,%rcx,4)                           #109.5
        incq      %rcx                                          #108.4
        cmpl      %eax, %edx                                    #108.4
        jb        ..B3.24       # Prob 99%                      #108.4
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B3.26:                        # Preds ..B3.24 ..B3.17 ..B3.22
                                # Execution count [6.00e+01]
        cmpl      $180, %r9d                                    #107.3
        jb        ..B3.9        # Prob 99%                      #107.3
        jmp       ..B3.48       # Prob 100%                     #107.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B3.28:                        # Preds ..B3.1
                                # Execution count [3.34e-01]
        xorl      %r8d, %r8d                                    #101.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B3.29:                        # Preds ..B3.46 ..B3.28
                                # Execution count [6.00e+01]
        movq      %rdi, %rdx                                    #102.4
        andq      $15, %rdx                                     #102.4
        testl     %edx, %edx                                    #102.4
        je        ..B3.34       # Prob 50%                      #102.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B3.30:                        # Preds ..B3.29
                                # Execution count [6.00e+01]
        testb     $3, %dl                                       #102.4
        jne       ..B3.51       # Prob 10%                      #102.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B3.31:                        # Preds ..B3.30
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
..B3.32:                        # Preds ..B3.32 ..B3.31
                                # Execution count [1.08e+04]
        movss     %xmm0, (%rdi,%rcx,4)                          #103.5
        incq      %rcx                                          #102.4
        cmpq      %rax, %rcx                                    #102.4
        jb        ..B3.32       # Prob 99%                      #102.4
        jmp       ..B3.35       # Prob 100%                     #102.4
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.34:                        # Preds ..B3.29
                                # Execution count [3.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%r8), %ecx                                  #103.33
        cvtsi2ss  %ecx, %xmm1                                   #103.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        xorl      %eax, %eax                                    #102.4
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.35:                        # Preds ..B3.32 ..B3.34
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
..B3.36:                        # Preds ..B3.36 ..B3.35
                                # Execution count [1.08e+04]
        addq      $8, %rax                                      #102.4
        movups    %xmm0, (%r9)                                  #103.5
        movups    %xmm0, 16(%r9)                                #103.5
        addq      $32, %r9                                      #102.4
        cmpq      %rsi, %rax                                    #102.4
        jb        ..B3.36       # Prob 99%                      #102.4
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B3.37:                        # Preds ..B3.36
                                # Execution count [6.00e+01]
        addl      $181, %edx                                    #102.4
        cmpl      $180, %edx                                    #102.4
        ja        ..B3.46       # Prob 50%                      #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d xmm0
..B3.38:                        # Preds ..B3.37
                                # Execution count [6.00e+01]
        movl      %ecx, %edx                                    #102.4
        negl      %edx                                          #102.4
        addl      $180, %edx                                    #102.4
        cmpl      $4, %edx                                      #102.4
        jb        ..B3.52       # Prob 10%                      #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx r8d xmm0
..B3.39:                        # Preds ..B3.38
                                # Execution count [6.00e+01]
        movl      %edx, %eax                                    #102.4
        xorl      %r9d, %r9d                                    #102.4
        andl      $-4, %eax                                     #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B3.40:                        # Preds ..B3.40 ..B3.39
                                # Execution count [1.08e+04]
        addl      $4, %r9d                                      #102.4
        movups    %xmm0, (%rdi,%rsi,4)                          #103.5
        addq      $4, %rsi                                      #102.4
        cmpl      %eax, %r9d                                    #102.4
        jb        ..B3.40       # Prob 99%                      #102.4
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B3.42:                        # Preds ..B3.40 ..B3.52 ..B3.51
                                # Execution count [6.00e+01]
        addl      %eax, %ecx                                    #102.4
        movslq    %ecx, %rcx                                    #102.4
        cmpl      %edx, %eax                                    #102.4
        jae       ..B3.46       # Prob 0%                       #102.4
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d
..B3.43:                        # Preds ..B3.42
                                # Execution count [6.00e+01]
        pxor      %xmm1, %xmm1                                  #103.33
        lea       1(%r8), %esi                                  #103.33
        cvtsi2ss  %esi, %xmm1                                   #103.33
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
        divss     %xmm1, %xmm0                                  #103.33
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B3.44:                        # Preds ..B3.44 ..B3.43
                                # Execution count [1.08e+04]
        incl      %eax                                          #102.4
        movss     %xmm0, (%rdi,%rcx,4)                          #103.5
        incq      %rcx                                          #102.4
        cmpl      %edx, %eax                                    #102.4
        jb        ..B3.44       # Prob 99%                      #102.4
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B3.46:                        # Preds ..B3.44 ..B3.42 ..B3.37
                                # Execution count [6.00e+01]
        incl      %r8d                                          #101.3
        addq      $720, %rdi                                    #101.3
        cmpl      $180, %r8d                                    #101.3
        jb        ..B3.29       # Prob 99%                      #101.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B3.48:                        # Preds ..B3.46 ..B3.26 ..B3.6
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #119.9
        ret                                                     #119.9
                                # LOE
..B3.49:                        # Preds ..B3.10
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #108.4
        movl      $180, %eax                                    #108.4
        xorl      %edx, %edx                                    #108.4
        jmp       ..B3.22       # Prob 100%                     #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B3.50:                        # Preds ..B3.18
                                # Execution count [6.00e+00]: Infreq
        xorl      %edx, %edx                                    #108.4
        jmp       ..B3.22       # Prob 100%                     #108.4
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B3.51:                        # Preds ..B3.30
                                # Execution count [6.00e+00]: Infreq
        xorl      %ecx, %ecx                                    #102.4
        movl      $180, %edx                                    #102.4
        xorl      %eax, %eax                                    #102.4
        jmp       ..B3.42       # Prob 100%                     #102.4
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
..B3.52:                        # Preds ..B3.38
                                # Execution count [6.00e+00]: Infreq
        xorl      %eax, %eax                                    #102.4
        jmp       ..B3.42       # Prob 100%                     #102.4
        .align    16,0x90
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
	.cfi_endproc
# mark_end;
	.type	set2d,@function
	.size	set2d,.-set2d
	.data
# -- End  set2d
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
        pushq     %r13                                          #232.1
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        pushq     %rbx                                          #232.1
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
        subq      $360, %rsp                                    #232.1
	.cfi_def_cfa_offset 384
        lea       .L_2__STRING.3(%rip), %rdi                    #239.2
        movss     %xmm1, 48(%rsp)                               #232.1[spill]
        movss     %xmm0, 40(%rsp)                               #232.1[spill]
..___tag_value_s242.66:
#       init(char *)
        call      init@PLT                                      #239.2
..___tag_value_s242.67:
                                # LOE rbp r12 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #240.12
                                # LOE rax rbp r12 r14 r15
..B4.35:                        # Preds ..B4.2
                                # Execution count [1.00e+00]
        movq      %rax, (%rsp)                                  #240.12[spill]
                                # LOE rbp r12 r14 r15
..B4.3:                         # Preds ..B4.35
                                # Execution count [0.00e+00]
        movss     40(%rsp), %xmm0                               #244.22[spill]
        xorl      %eax, %eax                                    #242.2
        movq      e@GOTPCREL(%rip), %r10                        #246.3
        movq      aa@GOTPCREL(%rip), %r9                        #246.3
        movq      cc@GOTPCREL(%rip), %r8                        #246.3
        movq      b@GOTPCREL(%rip), %rsi                        #243.3
        movq      c@GOTPCREL(%rip), %rdx                        #243.3
        movq      d@GOTPCREL(%rip), %rcx                        #243.3
        movq      a@GOTPCREL(%rip), %r13                        #243.3
        movq      bb@GOTPCREL(%rip), %rbx                       #246.3
        movq      %r8, 72(%rsp)                                 #246.3[spill]
        movq      %r9, 64(%rsp)                                 #246.3[spill]
        movq      %r10, 56(%rsp)                                #246.3[spill]
        movq      %r12, 8(%rsp)                                 #246.3[spill]
	.cfi_offset 12, -376
        movq      %rcx, %r12                                    #246.3
        movq      %r14, 16(%rsp)                                #246.3[spill]
	.cfi_offset 14, -368
        movq      %rdx, %r14                                    #246.3
        movq      %r15, 24(%rsp)                                #246.3[spill]
	.cfi_offset 15, -360
        movq      %rsi, %r15                                    #246.3
        movq      %rbp, 32(%rsp)                                #246.3[spill]
	.cfi_offset 6, -352
        movl      %eax, %ebp                                    #246.3
        addss     48(%rsp), %xmm0                               #244.22[spill]
        movss     %xmm0, 40(%rsp)                               #244.22[spill]
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.4:                         # Preds ..B4.25 ..B4.3
                                # Execution count [0.00e+00]
        xorl      %r11d, %r11d                                  #243.3
        movl      $31999, %r8d                                  #243.3
        movss     40(%rsp), %xmm0                               #244.22[spill]
        movss     40(%rsp), %xmm1                               #243.3[spill]
        shufps    $0, %xmm0, %xmm0                              #244.22
        movq      %rbx, 80(%rsp)                                #243.3[spill]
        movl      %ebp, 48(%rsp)                                #243.3[spill]
        xorl      %ebp, %ebp                                    #243.3
                                # LOE r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1
..B4.5:                         # Preds ..B4.23 ..B4.4
                                # Execution count [1.99e+05]
        movl      %r11d, %eax                                   #243.3
        shll      $6, %eax                                      #243.3
        movl      %eax, %r9d                                    #243.3
        negl      %r9d                                          #243.3
        lea       64(%rax), %r10d                               #243.3
        cmpl      $31999, %r10d                                 #243.3
        cmova     %r8d, %r10d                                   #243.3
        lea       (%r9,%r10), %ebx                              #243.3
        cmpl      $11, %ebx                                     #243.3
        jb        ..B4.31       # Prob 10%                      #243.3
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r10d r11d xmm0 xmm1
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.99e+05]
        xorl      %edi, %edi                                    #243.3
        lea       5(%r9,%r10), %r9d                             #243.3
        movl      %r11d, %r10d                                  #244.32
        andl      $7, %r9d                                      #243.3
        movq      %r10, %rdx                                    #244.46
        negl      %r9d                                          #243.3
        shlq      $8, %rdx                                      #244.46
        addl      %ebx, %r9d                                    #243.3
        lea       (%r15,%rdx), %rsi                             #244.32
        lea       (%r14,%rdx), %rcx                             #244.39
        addq      %r12, %rdx                                    #244.46
                                # LOE rdx rcx rsi rdi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.7:                         # Preds ..B4.7 ..B4.6
                                # Execution count [6.35e+09]
        movss     4(%rsi,%rdi,4), %xmm2                         #244.32
        addss     %xmm1, %xmm2                                  #244.32
        addss     4(%rcx,%rdi,4), %xmm2                         #244.39
        addss     4(%rdx,%rdi,4), %xmm2                         #244.46
        movss     %xmm2, 96(%rsp,%rdi,4)                        #244.4
        incq      %rdi                                          #243.3
        cmpq      $3, %rdi                                      #243.3
        jb        ..B4.7        # Prob 99%                      #243.3
                                # LOE rdx rcx rsi rdi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.8:                         # Preds ..B4.7
                                # Execution count [1.99e+05]
        shlq      $6, %r10                                      #244.32
        movl      $3, %ecx                                      #243.3
        movslq    %r9d, %rdx                                    #243.3
        .align    16,0x90
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.9:                         # Preds ..B4.9 ..B4.8
                                # Execution count [6.35e+09]
        lea       1(%rcx,%r10), %rsi                            #244.32
        movups    (%r15,%rsi,4), %xmm2                          #244.32
        lea       5(%rcx,%r10), %rdi                            #244.32
        movups    (%r15,%rdi,4), %xmm3                          #244.32
        addps     %xmm0, %xmm2                                  #244.32
        addps     %xmm0, %xmm3                                  #244.32
        addps     (%r14,%rsi,4), %xmm2                          #244.39
        addps     (%r14,%rdi,4), %xmm3                          #244.39
        addps     (%r12,%rsi,4), %xmm2                          #244.46
        addps     (%r12,%rdi,4), %xmm3                          #244.46
        movups    %xmm2, 96(%rsp,%rcx,4)                        #244.4
        movups    %xmm3, 112(%rsp,%rcx,4)                       #244.4
        addq      $8, %rcx                                      #243.3
        cmpq      %rdx, %rcx                                    #243.3
        jb        ..B4.9        # Prob 99%                      #243.3
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.10:                        # Preds ..B4.9
                                # Execution count [1.79e+05]
        lea       1(%r9), %r10d                                 #243.3
        cmpl      %ebx, %r10d                                   #243.3
        ja        ..B4.20       # Prob 50%                      #243.3
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.11:                        # Preds ..B4.10
                                # Execution count [1.89e+05]
        movl      %ebx, %esi                                    #243.3
        subl      %r9d, %esi                                    #243.3
        cmpl      $4, %esi                                      #243.3
        jb        ..B4.30       # Prob 10%                      #243.3
                                # LOE r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.12:                        # Preds ..B4.11
                                # Execution count [1.99e+05]
        movl      %esi, %r10d                                   #243.3
        lea       (%r9,%rax), %edx                              #244.32
        andl      $-4, %r10d                                    #243.3
        xorl      %ecx, %ecx                                    #243.3
        movslq    %edx, %rdx                                    #244.32
        movslq    %r10d, %r10                                   #243.3
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.13:                        # Preds ..B4.13 ..B4.12
                                # Execution count [6.35e+09]
        lea       1(%rcx,%rdx), %rdi                            #244.32
        movups    (%r15,%rdi,4), %xmm2                          #244.32
        addps     %xmm0, %xmm2                                  #244.32
        addps     (%r14,%rdi,4), %xmm2                          #244.39
        addps     (%r12,%rdi,4), %xmm2                          #244.46
        movl      %ecx, %edi                                    #244.4
        addl      %r9d, %edi                                    #244.4
        addq      $4, %rcx                                      #243.3
        movslq    %edi, %rdi                                    #244.4
        movups    %xmm2, 96(%rsp,%rdi,4)                        #244.4
        cmpq      %r10, %rcx                                    #243.3
        jb        ..B4.13       # Prob 99%                      #243.3
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.15:                        # Preds ..B4.13 ..B4.30 ..B4.32
                                # Execution count [1.99e+05]
        movslq    %esi, %rsi                                    #243.3
        cmpq      %rsi, %r10                                    #243.3
        jae       ..B4.19       # Prob 0%                       #243.3
                                # LOE rsi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.16:                        # Preds ..B4.15
                                # Execution count [1.99e+05]
        addl      %r9d, %eax                                    #244.46
        movslq    %eax, %rax                                    #244.32
        lea       (%r12,%rax,4), %rcx                           #244.46
        lea       (%r14,%rax,4), %rdx                           #244.39
        lea       (%r15,%rax,4), %rax                           #244.32
                                # LOE rax rdx rcx rsi r10 r12 r13 r14 r15 ebx ebp r8d r9d r11d xmm0 xmm1
..B4.17:                        # Preds ..B4.17 ..B4.16
                                # Execution count [6.35e+09]
        movss     4(%rax,%r10,4), %xmm2                         #244.32
        movl      %r10d, %edi                                   #244.4
        addl      %r9d, %edi                                    #244.4
        addss     %xmm1, %xmm2                                  #244.32
        movslq    %edi, %rdi                                    #244.4
        addss     4(%rdx,%r10,4), %xmm2                         #244.39
        addss     4(%rcx,%r10,4), %xmm2                         #244.46
        incq      %r10                                          #243.3
        movss     %xmm2, 96(%rsp,%rdi,4)                        #244.4
        cmpq      %rsi, %r10                                    #243.3
        jb        ..B4.17       # Prob 99%                      #243.3
                                # LOE rax rdx rcx rsi r10 r12 r13 r14 r15 ebx ebp r8d r9d r11d xmm0 xmm1
..B4.19:                        # Preds ..B4.17 ..B4.15 ..B4.31
                                # Execution count [1.09e+05]
        testl     %ebx, %ebx                                    #243.3
        je        ..B4.23       # Prob 0%                       #243.3
                                # LOE r12 r13 r14 r15 ebx ebp r8d r11d xmm0 xmm1
..B4.20:                        # Preds ..B4.19 ..B4.10
                                # Execution count [1.99e+05]
        movl      %r11d, %eax                                   #244.4
        xorl      %r9d, %r9d                                    #243.3
        shlq      $8, %rax                                      #244.4
        movslq    %ebx, %rbx                                    #243.3
        movss     (%r13,%rax), %xmm2                            #244.4
        addq      %r13, %rax                                    #244.4
                                # LOE rax rbx r9 r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1 xmm2
..B4.21:                        # Preds ..B4.21 ..B4.20
                                # Execution count [6.35e+09]
        addss     96(%rsp,%r9,4), %xmm2                         #243.3
        movss     %xmm2, 4(%rax,%r9,4)                          #244.4
        incq      %r9                                           #243.3
        cmpq      %rbx, %r9                                     #243.3
        jb        ..B4.21       # Prob 99%                      #243.3
                                # LOE rax rbx r9 r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1 xmm2
..B4.23:                        # Preds ..B4.21 ..B4.19
                                # Execution count [6.35e+09]
        incl      %r11d                                         #243.3
        cmpl      $500, %r11d                                   #243.3
        jb        ..B4.5        # Prob 99%                      #243.3
                                # LOE r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1
..B4.24:                        # Preds ..B4.23
                                # Execution count [1.99e+05]
        movq      80(%rsp), %rbx                                #[spill]
        movq      %r13, %rdi                                    #246.3
        movl      48(%rsp), %ebp                                #[spill]
        movq      %r15, %rsi                                    #246.3
        pushq     72(%rsp)                                      #246.3[spill]
	.cfi_def_cfa_offset 392
        pushq     %rbx                                          #246.3
	.cfi_def_cfa_offset 400
        movq      %r14, %rdx                                    #246.3
        movq      %r12, %rcx                                    #246.3
        pxor      %xmm0, %xmm0                                  #246.3
        movq      72(%rsp), %r8                                 #246.3[spill]
        movq      80(%rsp), %r9                                 #246.3[spill]
..___tag_value_s242.74:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #246.3
..___tag_value_s242.75:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.36:                        # Preds ..B4.24
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #246.3
	.cfi_def_cfa_offset 384
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.25:                        # Preds ..B4.36
                                # Execution count [1.99e+05]
        incl      %ebp                                          #242.2
        cmpl      $200000, %ebp                                 #242.2
        jb        ..B4.4        # Prob 99%                      #242.2
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.26:                        # Preds ..B4.25
                                # Execution count [1.00e+00]
        movq      8(%rsp), %r12                                 #[spill]
	.cfi_restore 12
        movq      16(%rsp), %r14                                #[spill]
	.cfi_restore 14
        movq      24(%rsp), %r15                                #[spill]
	.cfi_restore 15
        movq      32(%rsp), %rbp                                #[spill]
	.cfi_restore 6
#       clock(void)
        call      clock@PLT                                     #248.10
	.cfi_offset 6, -352
	.cfi_offset 12, -376
	.cfi_offset 14, -368
	.cfi_offset 15, -360
                                # LOE rax rbp r12 r14 r15
..B4.27:                        # Preds ..B4.26
                                # Execution count [1.00e+00]
        subq      (%rsp), %rax                                  #250.2[spill]
        pxor      %xmm0, %xmm0                                  #250.2
        cvtsi2sdq %rax, %xmm0                                   #250.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #250.2
        lea       .L_2__STRING.5(%rip), %rdi                    #250.2
        movl      $1, %eax                                      #250.2
..___tag_value_s242.85:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #250.2
..___tag_value_s242.86:
                                # LOE rbp r12 r14 r15
..B4.28:                        # Preds ..B4.27
                                # Execution count [1.00e+00]
        movl      $1, %edi                                      #251.2
..___tag_value_s242.87:
#       check(int)
        call      check@PLT                                     #251.2
..___tag_value_s242.88:
                                # LOE rbp r12 r14 r15
..B4.29:                        # Preds ..B4.28
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #252.9
        addq      $360, %rsp                                    #252.9
	.cfi_def_cfa_offset 24
	.cfi_restore 3
        popq      %rbx                                          #252.9
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        popq      %r13                                          #252.9
	.cfi_def_cfa_offset 8
        ret                                                     #252.9
	.cfi_def_cfa_offset 384
	.cfi_offset 3, -24
	.cfi_offset 13, -16
                                # LOE
..B4.30:                        # Preds ..B4.11
                                # Execution count [1.99e+04]: Infreq
        xorl      %r10d, %r10d                                  #243.3
        jmp       ..B4.15       # Prob 100%                     #243.3
                                # LOE r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.31:                        # Preds ..B4.5
                                # Execution count [1.99e+04]: Infreq
        movl      %ebp, %r9d                                    #243.3
        cmpl      $1, %ebx                                      #243.3
        jb        ..B4.19       # Prob 50%                      #243.3
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.32:                        # Preds ..B4.31
                                # Execution count [9.93e+03]: Infreq
        movl      %ebx, %esi                                    #243.3
        xorl      %r10d, %r10d                                  #243.3
        jmp       ..B4.15       # Prob 100%                     #243.3
        .align    16,0x90
                                # LOE r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
	.cfi_endproc
# mark_end;
	.type	s242,@function
	.size	s242,.-s242
	.data
# -- End  s242
	.text
# -- Begin  check
	.text
# mark_begin;
       .align    16,0x90
	.globl check
# --- check(int)
check:
# parameter 1: %edi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check.98:
..L99:
                                                         #122.21
        pushq     %rbp                                          #122.21
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
        subq      $48, %rsp                                     #122.21
	.cfi_def_cfa_offset 64
        movl      %edi, %ebp                                    #122.21
        pxor      %xmm6, %xmm6                                  #124.13
        xorl      %r8d, %r8d                                    #129.2
        movq      a@GOTPCREL(%rip), %rdi                        #130.11
        movaps    %xmm6, %xmm2                                  #124.13
        movq      b@GOTPCREL(%rip), %rsi                        #131.11
        movaps    %xmm6, %xmm3                                  #125.13
        movq      c@GOTPCREL(%rip), %rcx                        #132.11
        movaps    %xmm6, %xmm4                                  #126.13
        movq      d@GOTPCREL(%rip), %rdx                        #133.11
        movaps    %xmm6, %xmm7                                  #127.13
        movq      e@GOTPCREL(%rip), %rax                        #134.11
        movaps    %xmm6, %xmm5                                  #128.13
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.2:                         # Preds ..B5.2 ..B5.1
                                # Execution count [3.20e+04]
        addps     (%rdi,%r8,4), %xmm2                           #130.3
        addps     (%rsi,%r8,4), %xmm3                           #131.3
        addps     (%rcx,%r8,4), %xmm4                           #132.3
        addps     (%rdx,%r8,4), %xmm7                           #133.3
        addps     (%rax,%r8,4), %xmm5                           #134.3
        addq      $4, %r8                                       #129.2
        cmpq      $32000, %r8                                   #129.2
        jb        ..B5.2        # Prob 99%                      #129.2
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.3:                         # Preds ..B5.2
                                # Execution count [1.00e+00]
        movaps    %xmm5, %xmm0                                  #128.13
        movaps    %xmm4, %xmm8                                  #126.13
        movaps    %xmm3, %xmm10                                 #125.13
        movaps    %xmm2, %xmm12                                 #124.13
        movhlps   %xmm5, %xmm0                                  #128.13
        xorl      %r8d, %r8d                                    #139.2
        movhlps   %xmm4, %xmm8                                  #126.13
        movl      $4, %edi                                      #139.2
        movhlps   %xmm3, %xmm10                                 #125.13
        addps     %xmm0, %xmm5                                  #128.13
        addps     %xmm8, %xmm4                                  #126.13
        addps     %xmm10, %xmm3                                 #125.13
        movhlps   %xmm2, %xmm12                                 #124.13
        movaps    %xmm5, %xmm1                                  #128.13
        movaps    %xmm4, %xmm9                                  #126.13
        movaps    %xmm3, %xmm11                                 #125.13
        shufps    $245, %xmm5, %xmm1                            #128.13
        pxor      %xmm8, %xmm8                                  #137.14
        shufps    $245, %xmm4, %xmm9                            #126.13
        movaps    %xmm6, %xmm0                                  #147.17
        shufps    $245, %xmm3, %xmm11                           #125.13
        addps     %xmm12, %xmm2                                 #124.13
        addss     %xmm1, %xmm5                                  #128.13
        addss     %xmm9, %xmm4                                  #126.13
        addss     %xmm11, %xmm3                                 #125.13
        movaps    %xmm2, %xmm13                                 #124.13
        movaps    %xmm6, %xmm1                                  #138.14
        shufps    $245, %xmm2, %xmm13                           #124.13
        movq      aa@GOTPCREL(%rip), %rsi                       #141.13
        addss     %xmm13, %xmm2                                 #124.13
        movq      bb@GOTPCREL(%rip), %rcx                       #142.13
        movq      cc@GOTPCREL(%rip), %rdx                       #143.13
        movq      array@GOTPCREL(%rip), %rax                    #149.15
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.4:                         # Preds ..B5.4 ..B5.3
                                # Execution count [3.24e+04]
        addps     (%rsi,%r8,4), %xmm6                           #141.4
        addps     (%rcx,%r8,4), %xmm8                           #142.4
        addps     (%rdx,%r8,4), %xmm1                           #143.4
        addps     (%rax,%r8,4), %xmm0                           #149.3
        addps     16(%rsi,%r8,4), %xmm6                         #141.4
        addps     16(%rcx,%r8,4), %xmm8                         #142.4
        addps     16(%rdx,%r8,4), %xmm1                         #143.4
        addps     (%rax,%rdi,4), %xmm0                          #149.3
        addq      $8, %r8                                       #139.2
        addq      $8, %rdi                                      #139.2
        cmpq      $32400, %r8                                   #139.2
        jb        ..B5.4        # Prob 99%                      #139.2
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.5:                         # Preds ..B5.4
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
        cmpl      $1, %ebp                                      #152.14
        je        ..B5.41       # Prob 5%                       #152.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.6:                         # Preds ..B5.5
                                # Execution count [9.49e-01]
        cmpl      $2, %ebp                                      #153.14
        je        ..B5.40       # Prob 5%                       #153.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.7:                         # Preds ..B5.6
                                # Execution count [8.98e-01]
        cmpl      $3, %ebp                                      #154.14
        je        ..B5.39       # Prob 5%                       #154.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.8:                         # Preds ..B5.7
                                # Execution count [8.47e-01]
        cmpl      $4, %ebp                                      #155.14
        je        ..B5.38       # Prob 5%                       #155.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.9:                         # Preds ..B5.8
                                # Execution count [7.96e-01]
        cmpl      $5, %ebp                                      #156.14
        je        ..B5.37       # Prob 5%                       #156.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.10:                        # Preds ..B5.9
                                # Execution count [7.45e-01]
        cmpl      $11, %ebp                                     #157.14
        je        ..B5.36       # Prob 5%                       #157.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.11:                        # Preds ..B5.10
                                # Execution count [6.94e-01]
        cmpl      $22, %ebp                                     #158.14
        je        ..B5.35       # Prob 5%                       #158.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.12:                        # Preds ..B5.11
                                # Execution count [6.43e-01]
        cmpl      $33, %ebp                                     #159.14
        je        ..B5.34       # Prob 5%                       #159.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.13:                        # Preds ..B5.12
                                # Execution count [5.92e-01]
        testl     %ebp, %ebp                                    #160.14
        je        ..B5.23       # Prob 22%                      #160.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.14:                        # Preds ..B5.13
                                # Execution count [3.72e-01]
        cmpl      $12, %ebp                                     #161.14
        je        ..B5.33       # Prob 5%                       #161.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.15:                        # Preds ..B5.14
                                # Execution count [3.21e-01]
        cmpl      $25, %ebp                                     #162.14
        je        ..B5.32       # Prob 5%                       #162.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.16:                        # Preds ..B5.15
                                # Execution count [2.70e-01]
        cmpl      $13, %ebp                                     #163.14
        je        ..B5.31       # Prob 5%                       #163.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B5.17:                        # Preds ..B5.16
                                # Execution count [2.19e-01]
        cmpl      $123, %ebp                                    #164.14
        je        ..B5.30       # Prob 5%                       #164.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B5.18:                        # Preds ..B5.44 ..B5.17
                                # Execution count [2.19e-01]
        cmpl      $1122, %ebp                                   #165.14
        je        ..B5.29       # Prob 5%                       #165.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.19:                        # Preds ..B5.45 ..B5.18
                                # Execution count [2.19e-01]
        cmpl      $112233, %ebp                                 #166.14
        je        ..B5.28       # Prob 5%                       #166.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.20:                        # Preds ..B5.46 ..B5.19
                                # Execution count [2.19e-01]
        cmpl      $111, %ebp                                    #167.14
        je        ..B5.27       # Prob 5%                       #167.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm2 xmm3 xmm6
..B5.21:                        # Preds ..B5.47 ..B5.20
                                # Execution count [2.19e-01]
        cmpl      $-1, %ebp                                     #168.14
        je        ..B5.26       # Prob 5%                       #168.14
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.22:                        # Preds ..B5.48 ..B5.21
                                # Execution count [2.19e-01]
        cmpl      $-12, %ebp                                    #169.14
        je        ..B5.25       # Prob 5%                       #169.14
        jmp       ..B5.24       # Prob 100%                     #169.14
                                # LOE rbx r12 r13 r14 r15 xmm3
..B5.23:                        # Preds ..B5.13
                                # Execution count [2.20e-01]
        movaps    %xmm0, %xmm1                                  #147.17
        lea       .L_2__STRING.0(%rip), %rdi                    #160.17
        movhlps   %xmm0, %xmm1                                  #147.17
        movl      $1, %eax                                      #160.17
        addps     %xmm1, %xmm0                                  #147.17
        movaps    %xmm0, %xmm2                                  #147.17
        shufps    $245, %xmm0, %xmm2                            #147.17
        addss     %xmm2, %xmm0                                  #147.17
        cvtss2sd  %xmm0, %xmm0                                  #160.17
..___tag_value_check.103:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #160.17
..___tag_value_check.104:
                                # LOE rbx r12 r13 r14 r15
..B5.24:                        # Preds ..B5.23 ..B5.22
                                # Execution count [1.00e+00]
        addq      $48, %rsp                                     #171.1
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #171.1
	.cfi_def_cfa_offset 8
        ret                                                     #171.1
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE
..B5.25:                        # Preds ..B5.22
                                # Execution count [5.10e-02]: Infreq
        movq      temp@GOTPCREL(%rip), %rax                     #169.19
        lea       .L_2__STRING.0(%rip), %rdi                    #169.19
        movss     (%rax), %xmm0                                 #169.19
        movl      $1, %eax                                      #169.19
        addss     %xmm3, %xmm0                                  #169.19
        cvtss2sd  %xmm0, %xmm0                                  #169.19
..___tag_value_check.110:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #169.19
..___tag_value_check.111:
        addq      $48, %rsp                                     #169.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #169.19
	.cfi_def_cfa_offset 8
        ret                                                     #169.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.26:                        # Preds ..B5.21
                                # Execution count [5.10e-02]: Infreq
        movq      temp@GOTPCREL(%rip), %rax                     #168.18
        pxor      %xmm0, %xmm0                                  #168.18
        lea       .L_2__STRING.0(%rip), %rdi                    #168.18
        cvtss2sd  (%rax), %xmm0                                 #168.18
        movl      $1, %eax                                      #168.18
        addq      $48, %rsp                                     #168.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #168.18
	.cfi_def_cfa_offset 8
#       printf(const char *__restrict__, ...)
        jmp       printf@PLT                                    #168.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE
..B5.27:                        # Preds ..B5.20
                                # Execution count [5.10e-02]: Infreq
        lea       .L_2__STRING.0(%rip), %rdi                    #167.19
        movl      $1, %eax                                      #167.19
        addss     %xmm6, %xmm2                                  #167.19
        cvtss2sd  %xmm2, %xmm2                                  #167.19
        movaps    %xmm2, %xmm0                                  #167.19
..___tag_value_check.122:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #167.19
..___tag_value_check.123:
        addq      $48, %rsp                                     #167.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #167.19
	.cfi_def_cfa_offset 8
        ret                                                     #167.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.28:                        # Preds ..B5.19
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #166.22
        lea       .L_2__STRING.0(%rip), %rdi                    #166.22
        movl      $1, %eax                                      #166.22
        addss     %xmm8, %xmm6                                  #166.22
        addss     %xmm1, %xmm6                                  #166.22
        cvtss2sd  %xmm6, %xmm0                                  #166.22
..___tag_value_check.129:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #166.22
..___tag_value_check.130:
        addq      $48, %rsp                                     #166.22
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #166.22
	.cfi_def_cfa_offset 8
        ret                                                     #166.22
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.29:                        # Preds ..B5.18
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #165.20
        lea       .L_2__STRING.0(%rip), %rdi                    #165.20
        movl      $1, %eax                                      #165.20
        addss     %xmm8, %xmm6                                  #165.20
        cvtss2sd  %xmm6, %xmm0                                  #165.20
..___tag_value_check.136:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #165.20
..___tag_value_check.137:
        addq      $48, %rsp                                     #165.20
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #165.20
	.cfi_def_cfa_offset 8
        ret                                                     #165.20
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.30:                        # Preds ..B5.17
                                # Execution count [5.10e-02]: Infreq
        lea       .L_2__STRING.0(%rip), %rdi                    #164.19
        movl      $1, %eax                                      #164.19
        addss     %xmm3, %xmm2                                  #164.19
        addss     %xmm4, %xmm2                                  #164.19
        cvtss2sd  %xmm2, %xmm2                                  #164.19
        movaps    %xmm2, %xmm0                                  #164.19
..___tag_value_check.143:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #164.19
..___tag_value_check.144:
        addq      $48, %rsp                                     #164.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #164.19
	.cfi_def_cfa_offset 8
        ret                                                     #164.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.31:                        # Preds ..B5.16
                                # Execution count [5.10e-02]: Infreq
        lea       .L_2__STRING.0(%rip), %rdi                    #163.18
        movl      $1, %eax                                      #163.18
        addss     %xmm4, %xmm2                                  #163.18
        cvtss2sd  %xmm2, %xmm2                                  #163.18
        movaps    %xmm2, %xmm0                                  #163.18
..___tag_value_check.150:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #163.18
..___tag_value_check.151:
        addq      $48, %rsp                                     #163.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #163.18
	.cfi_def_cfa_offset 8
        ret                                                     #163.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.32:                        # Preds ..B5.15
                                # Execution count [5.10e-02]: Infreq
        lea       .L_2__STRING.0(%rip), %rdi                    #162.18
        movl      $1, %eax                                      #162.18
        addss     %xmm5, %xmm3                                  #162.18
        cvtss2sd  %xmm3, %xmm3                                  #162.18
        movaps    %xmm3, %xmm0                                  #162.18
..___tag_value_check.157:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #162.18
..___tag_value_check.158:
        addq      $48, %rsp                                     #162.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #162.18
	.cfi_def_cfa_offset 8
        ret                                                     #162.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.33:                        # Preds ..B5.14
                                # Execution count [5.10e-02]: Infreq
        lea       .L_2__STRING.0(%rip), %rdi                    #161.18
        movl      $1, %eax                                      #161.18
        addss     %xmm3, %xmm2                                  #161.18
        cvtss2sd  %xmm2, %xmm2                                  #161.18
        movaps    %xmm2, %xmm0                                  #161.18
..___tag_value_check.164:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #161.18
..___tag_value_check.165:
        addq      $48, %rsp                                     #161.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #161.18
	.cfi_def_cfa_offset 8
        ret                                                     #161.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.34:                        # Preds ..B5.12
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm1, %xmm1                                  #159.18
        lea       .L_2__STRING.0(%rip), %rdi                    #159.18
        movl      $1, %eax                                      #159.18
        movaps    %xmm1, %xmm0                                  #159.18
..___tag_value_check.171:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #159.18
..___tag_value_check.172:
        addq      $48, %rsp                                     #159.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #159.18
	.cfi_def_cfa_offset 8
        ret                                                     #159.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.35:                        # Preds ..B5.11
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #158.18
        lea       .L_2__STRING.0(%rip), %rdi                    #158.18
        cvtss2sd  %xmm8, %xmm0                                  #158.18
        movl      $1, %eax                                      #158.18
..___tag_value_check.178:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #158.18
..___tag_value_check.179:
        addq      $48, %rsp                                     #158.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #158.18
	.cfi_def_cfa_offset 8
        ret                                                     #158.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.36:                        # Preds ..B5.10
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #157.18
        lea       .L_2__STRING.0(%rip), %rdi                    #157.18
        cvtss2sd  %xmm6, %xmm0                                  #157.18
        movl      $1, %eax                                      #157.18
..___tag_value_check.185:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #157.18
..___tag_value_check.186:
        addq      $48, %rsp                                     #157.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
        popq      %rbp                                          #157.18
	.cfi_def_cfa_offset 8
        ret                                                     #157.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
                                # LOE rbx r12 r13 r14 r15
..B5.37:                        # Preds ..B5.9
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm5, %xmm5                                  #156.17
        lea       .L_2__STRING.0(%rip), %rdi                    #156.17
        movl      $1, %eax                                      #156.17
        movaps    %xmm5, %xmm0                                  #156.17
        movss     %xmm3, (%rsp)                                 #156.17[spill]
..___tag_value_check.192:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #156.17
..___tag_value_check.193:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.48:                        # Preds ..B5.37
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        jmp       ..B5.22       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.38:                        # Preds ..B5.8
                                # Execution count [5.10e-02]: Infreq
        movaps    %xmm7, %xmm1                                  #127.13
        lea       .L_2__STRING.0(%rip), %rdi                    #155.17
        movhlps   %xmm7, %xmm1                                  #127.13
        movl      $1, %eax                                      #155.17
        movss     %xmm3, (%rsp)                                 #155.17[spill]
        addps     %xmm1, %xmm7                                  #127.13
        movaps    %xmm7, %xmm2                                  #127.13
        shufps    $245, %xmm7, %xmm2                            #127.13
        addss     %xmm2, %xmm7                                  #127.13
        cvtss2sd  %xmm7, %xmm7                                  #155.17
        movaps    %xmm7, %xmm0                                  #155.17
..___tag_value_check.194:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #155.17
..___tag_value_check.195:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.47:                        # Preds ..B5.38
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        jmp       ..B5.21       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.39:                        # Preds ..B5.7
                                # Execution count [5.10e-02]: Infreq
        cvtss2sd  %xmm4, %xmm4                                  #154.17
        lea       .L_2__STRING.0(%rip), %rdi                    #154.17
        movl      $1, %eax                                      #154.17
        movaps    %xmm4, %xmm0                                  #154.17
        movss     %xmm6, 8(%rsp)                                #154.17[spill]
        movss     %xmm2, 16(%rsp)                               #154.17[spill]
        movss     %xmm3, (%rsp)                                 #154.17[spill]
..___tag_value_check.196:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #154.17
..___tag_value_check.197:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.46:                        # Preds ..B5.39
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        movss     16(%rsp), %xmm2                               #[spill]
        movss     8(%rsp), %xmm6                                #[spill]
        jmp       ..B5.20       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm2 xmm3 xmm6
..B5.40:                        # Preds ..B5.6
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #153.17
        lea       .L_2__STRING.0(%rip), %rdi                    #153.17
        cvtss2sd  %xmm3, %xmm0                                  #153.17
        movl      $1, %eax                                      #153.17
        movss     %xmm6, 8(%rsp)                                #153.17[spill]
        movss     %xmm8, 24(%rsp)                               #153.17[spill]
        movss     %xmm1, 32(%rsp)                               #153.17[spill]
        movss     %xmm2, 16(%rsp)                               #153.17[spill]
        movss     %xmm3, (%rsp)                                 #153.17[spill]
..___tag_value_check.198:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #153.17
..___tag_value_check.199:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.45:                        # Preds ..B5.40
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        movss     16(%rsp), %xmm2                               #[spill]
        movss     32(%rsp), %xmm1                               #[spill]
        movss     24(%rsp), %xmm8                               #[spill]
        movss     8(%rsp), %xmm6                                #[spill]
        jmp       ..B5.19       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.41:                        # Preds ..B5.5
                                # Execution count [5.10e-02]: Infreq
        pxor      %xmm0, %xmm0                                  #152.17
        lea       .L_2__STRING.0(%rip), %rdi                    #152.17
        cvtss2sd  %xmm2, %xmm0                                  #152.17
        movl      $1, %eax                                      #152.17
        movss     %xmm6, 8(%rsp)                                #152.17[spill]
        movss     %xmm8, 24(%rsp)                               #152.17[spill]
        movss     %xmm1, 32(%rsp)                               #152.17[spill]
        movss     %xmm2, 16(%rsp)                               #152.17[spill]
        movss     %xmm3, (%rsp)                                 #152.17[spill]
..___tag_value_check.200:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #152.17
..___tag_value_check.201:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.44:                        # Preds ..B5.41
                                # Execution count [5.10e-02]: Infreq
        movss     (%rsp), %xmm3                                 #[spill]
        movss     16(%rsp), %xmm2                               #[spill]
        movss     32(%rsp), %xmm1                               #[spill]
        movss     24(%rsp), %xmm8                               #[spill]
        movss     8(%rsp), %xmm6                                #[spill]
        jmp       ..B5.18       # Prob 100%                     #
        .align    16,0x90
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
	.cfi_endproc
# mark_end;
	.type	check,@function
	.size	check,.-check
	.data
# -- End  check
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
..___tag_value_s2275.203:
..L204:
                                                        #255.1
        pushq     %r12                                          #255.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #255.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #255.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #255.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #255.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #255.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $40, %rsp                                     #255.1
	.cfi_def_cfa_offset 96
        lea       .L_2__STRING.6(%rip), %rdi                    #262.2
..___tag_value_s2275.218:
#       init(char *)
        call      init@PLT                                      #262.2
..___tag_value_s2275.219:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.2:                         # Preds ..B6.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #263.12
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.16:                        # Preds ..B6.2
                                # Execution count [1.00e+00]
        movq      %rax, (%rsp)                                  #263.12[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B6.3:                         # Preds ..B6.16
                                # Execution count [1.22e+03]
        movq      b@GOTPCREL(%rip), %r11                        #272.36
        xorl      %edi, %edi                                    #265.2
        movq      a@GOTPCREL(%rip), %r10                        #272.36
        movl      %edi, %r13d                                   #272.3
        movq      e@GOTPCREL(%rip), %r8                         #272.3
        movq      aa@GOTPCREL(%rip), %r9                        #272.36
        movq      %r9, %r14                                     #272.3
        movq      bb@GOTPCREL(%rip), %rsi                       #272.36
        movq      %rsi, %r15                                    #272.3
        movq      cc@GOTPCREL(%rip), %rax                       #272.36
        movq      %rax, %rbp                                    #272.3
        movq      c@GOTPCREL(%rip), %rdx                        #272.36
        movq      %rdx, %r12                                    #272.3
        movq      d@GOTPCREL(%rip), %rcx                        #272.36
        movq      %rcx, %rbx                                    #272.3
        movq      %r8, 8(%rsp)                                  #272.3[spill]
        movq      %r10, 16(%rsp)                                #272.3[spill]
        movq      %r11, 24(%rsp)                                #272.3[spill]
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.4:                         # Preds ..B6.9 ..B6.3
                                # Execution count [1.99e+05]
        xorl      %r8d, %r8d                                    #267.4
        .align    16,0x90
                                # LOE rbx rbp r8 r12 r14 r15 r13d
..B6.5:                         # Preds ..B6.5 ..B6.4
                                # Execution count [6.43e+09]
        movups    (%r15,%r8,4), %xmm0                           #268.27
        movups    16(%r15,%r8,4), %xmm1                         #268.27
        movups    32(%r15,%r8,4), %xmm2                         #268.27
        movups    48(%r15,%r8,4), %xmm3                         #268.27
        mulps     (%rbp,%r8,4), %xmm0                           #268.38
        mulps     16(%rbp,%r8,4), %xmm1                         #268.38
        mulps     32(%rbp,%r8,4), %xmm2                         #268.38
        addps     (%r14,%r8,4), %xmm0                           #268.38
        mulps     48(%rbp,%r8,4), %xmm3                         #268.38
        addps     16(%r14,%r8,4), %xmm1                         #268.38
        addps     32(%r14,%r8,4), %xmm2                         #268.38
        addps     48(%r14,%r8,4), %xmm3                         #268.38
        movups    %xmm0, (%r14,%r8,4)                           #268.5
        movups    %xmm1, 16(%r14,%r8,4)                         #268.5
        movups    %xmm2, 32(%r14,%r8,4)                         #268.5
        movups    %xmm3, 48(%r14,%r8,4)                         #268.5
        addq      $16, %r8                                      #267.4
        cmpq      $32400, %r8                                   #267.4
        jb        ..B6.5        # Prob 99%                      #267.4
                                # LOE rbx rbp r8 r12 r14 r15 r13d
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.99e+05]
        movq      16(%rsp), %r10                                #266.3[spill]
        xorl      %r8d, %r8d                                    #266.3
        movq      24(%rsp), %r11                                #266.3[spill]
                                # LOE rbx rbp r8 r10 r11 r12 r14 r15 r13d
..B6.7:                         # Preds ..B6.7 ..B6.6
                                # Execution count [3.57e+07]
        movups    (%r12,%r8,4), %xmm0                           #270.18
        movups    16(%r12,%r8,4), %xmm1                         #270.18
        mulps     (%rbx,%r8,4), %xmm0                           #270.25
        mulps     16(%rbx,%r8,4), %xmm1                         #270.25
        addps     (%r11,%r8,4), %xmm0                           #270.25
        addps     16(%r11,%r8,4), %xmm1                         #270.25
        movups    %xmm0, (%r10,%r8,4)                           #270.4
        movups    %xmm1, 16(%r10,%r8,4)                         #270.4
        addq      $8, %r8                                       #266.3
        cmpq      $176, %r8                                     #266.3
        jb        ..B6.7        # Prob 99%                      #266.3
                                # LOE rbx rbp r8 r10 r11 r12 r14 r15 r13d
..B6.8:                         # Preds ..B6.7
                                # Execution count [1.99e+05]
        movups    704(%r12), %xmm0                              #270.18
        movq      %r12, %rdx                                    #272.3
        pushq     %rbp                                          #272.3
	.cfi_def_cfa_offset 104
        mulps     704(%rbx), %xmm0                              #270.25
        movq      %rbx, %rcx                                    #272.3
        pushq     %r15                                          #272.3
	.cfi_def_cfa_offset 112
        movq      40(%rsp), %rsi                                #270.25[spill]
        movq      %r14, %r9                                     #272.3
        movq      32(%rsp), %rdi                                #270.4[spill]
        movq      24(%rsp), %r8                                 #272.3[spill]
        addps     704(%rsi), %xmm0                              #270.25
        movups    %xmm0, 704(%rdi)                              #270.4
        pxor      %xmm0, %xmm0                                  #272.3
..___tag_value_s2275.222:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #272.3
..___tag_value_s2275.223:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.17:                        # Preds ..B6.8
                                # Execution count [1.99e+05]
        addq      $16, %rsp                                     #272.3
	.cfi_def_cfa_offset 96
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.9:                         # Preds ..B6.17
                                # Execution count [1.99e+05]
        incl      %r13d                                         #265.2
        cmpl      $200000, %r13d                                #265.2
        jb        ..B6.4        # Prob 99%                      #265.2
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.10:                        # Preds ..B6.9
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #274.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.11:                        # Preds ..B6.10
                                # Execution count [1.00e+00]
        subq      (%rsp), %rax                                  #276.2[spill]
        pxor      %xmm0, %xmm0                                  #276.2
        cvtsi2sdq %rax, %xmm0                                   #276.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #276.2
        lea       .L_2__STRING.7(%rip), %rdi                    #276.2
        movl      $1, %eax                                      #276.2
..___tag_value_s2275.225:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #276.2
..___tag_value_s2275.226:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.12:                        # Preds ..B6.11
                                # Execution count [1.00e+00]
        movl      $11, %edi                                     #277.2
..___tag_value_s2275.227:
#       check(int)
        call      check@PLT                                     #277.2
..___tag_value_s2275.228:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.13:                        # Preds ..B6.12
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #278.9
        addq      $40, %rsp                                     #278.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #278.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #278.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #278.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #278.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #278.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #278.9
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
# -- Begin  s112
	.text
# mark_begin;
       .align    16,0x90
	.globl s112
# --- s112()
s112:
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s112.243:
..L244:
                                                        #337.1
        pushq     %r12                                          #337.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #337.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #337.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #337.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #337.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #337.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $40, %rsp                                     #337.1
        mov       $200000, %ebp
	.cfi_def_cfa_offset 96
        lea       .L_2__STRING.2(%rip), %rdi                    #345.2
..___tag_value_s112.258:
#       init(char *)
        call      init@PLT                                      #345.2
..___tag_value_s112.259:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.2:                         # Preds ..B7.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #346.12
                                # LOE rax rbx rbp r12 r13 r14 r15
..B7.14:                        # Preds ..B7.2
                                # Execution count [1.00e+00]
        mov      %rax, 8(%rsp)                                  #346.12[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B7.3:                         # Preds ..B7.14
                                # Execution count [1.00e+00]
        xorl      %ecx, %ecx                                    #348.2
        movq      a@GOTPCREL(%rip), %r12                        #350.3
        movq      b@GOTPCREL(%rip), %r13                        #350.3
        movq      bb@GOTPCREL(%rip), %r14                       #353.3
        movq      cc@GOTPCREL(%rip), %r15                       #353.3
        lea       -16(%r12), %rbx
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.4:                         # Preds ..B7.7 ..B7.3
                                # Execution count [1.99e+05]
        movss     127992(%r12),%xmm0
        lea       127968(%r12), %rax
        lea       127968(%r13), %rdx
        addss     127992(%r13),%xmm0
        movss     %xmm0, 127996(%r12)
        movss     127988(%r13),%xmm0
        addss     127988(%r12),%xmm0
        movss     %xmm0, 127992(%r12)
        movss     127984(%r13),%xmm0
        addss     127984(%r12),%xmm0
        movss     %xmm0, 127988(%r12)
        .align    16,0x90
                                # LOE rbx rbp r8 r13 r14 r15 r10d r12d
..B7.5:                         # Preds ..B7.5 ..B7.4
                                # Execution count [3.17e+09]
        movaps    (%rax), %xmm0                                 #351.13
        sub       $16, %rax
        sub       $16, %rdx
        movaps    16(%rdx), %xmm1
        shufps    $27, %xmm0, %xmm0 
        shufps    $27, %xmm1, %xmm1
        addps     %xmm1, %xmm0
        shufps    $27, %xmm0, %xmm0
        movups    %xmm0, 20(%rax)
        cmp       %rax, %rbx                                    #350.3
        jne        ..B7.5        # Prob 99%                      #350.3
                                # LOE rbx rbp r8 r13 r14 r15 r10d r12d
..B7.6:                         # Preds ..B7.5
                                # Execution count [1.99e+05]
        movq      c@GOTPCREL(%rip), %rdx     
        pxor      %xmm0, %xmm0   
        movq      aa@GOTPCREL(%rip), %r9     
        movq      e@GOTPCREL(%rip), %r8         
        mov       %r13, %rsi
        movq      d@GOTPCREL(%rip), %rcx                        #353.3
        mov       %r12, %rdi
        call      dummy@PLT                                     #353.3
	.cfi_def_cfa_offset 104
        sub       $1, %ebp                                      #353.3
#        pop       %rax
#        pop       %rdx
	.cfi_def_cfa_offset 112
..___tag_value_s112.262:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
                                            #353.3
..___tag_value_s112.263:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.15:                        # Preds ..B7.6
                                # Execution count [1.99e+05]
	.cfi_def_cfa_offset 96
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.7:                         # Preds ..B7.15
                                # Execution count [1.99e+05]
        jne        ..B7.4        # Prob 99%                      #348.2
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.8:                         # Preds ..B7.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #355.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B7.9:                         # Preds ..B7.8
                                # Execution count [1.00e+00]
        subq      8(%rsp), %rax                                  #357.2[spill]
        pxor      %xmm0, %xmm0                                  #357.2
        cvtsi2sdq %rax, %xmm0                                   #357.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #357.2
        lea       .L_2__STRING.11(%rip), %rdi                   #357.2
        movl      $1, %eax                                      #357.2
..___tag_value_s112.265:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #357.2
..___tag_value_s112.266:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.10:                        # Preds ..B7.9
                                # Execution count [1.00e+00]
        movl      $1, %edi                                      #358.2
..___tag_value_s112.267:
#       check(int)
        call      check@PLT                                     #358.2
..___tag_value_s112.268:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.11:                        # Preds ..B7.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #359.9
        addq      $40, %rsp                                     #359.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #359.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #359.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #359.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #359.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #359.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #359.9
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
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s312.283:
..L284:
                                                        #281.1
        pushq     %r12                                          #281.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #281.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #281.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #281.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #281.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #281.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $40, %rsp                                     #281.1
	.cfi_def_cfa_offset 96
        lea       .L_2__STRING.1(%rip), %rdi                    #289.2
..___tag_value_s312.298:
#       init(char *)
        call      init@PLT                                      #289.2
..___tag_value_s312.299:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.2:                         # Preds ..B8.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #290.12
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.14:                        # Preds ..B8.2
                                # Execution count [1.00e+00]
        mov      %rax, 8(%rsp)                                  #290.12[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B8.3:                         # Preds ..B8.14
                                # Execution count [1.00e+00]
        mov      b@GOTPCREL(%rip), %r12     
        mov      a@GOTPCREL(%rip), %rbx     
        mov      c@GOTPCREL(%rip), %r12     
        mov      d@GOTPCREL(%rip), %r13     
        mov      e@GOTPCREL(%rip), %rbp     
        mov      aa@GOTPCREL(%rip),%r14 
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.4:                         # Preds ..B8.7 ..B8.3
                                # Execution count [1.99e+05]
        mov      $28, %eax                        
        movaps    .L_2il0floatpacket.3(%rip), %xmm0             #292.2
        movaps    %xmm0, %xmm1
                                # LOE rbx rbp rsi r13 r14 r15 r12d xmm0
..B8.5:                         # Preds ..B8.5 ..B8.4
                                # Execution count [6.35e+09]
        mulps     -112(%rbx,%rax,4),%xmm1                        #296.4
        mulps     -96(%rbx,%rax,4), %xmm0                        #296.4
        mulps     -80(%rbx,%rax,4), %xmm1                        #296.4
        mulps     -64(%rbx,%rax,4), %xmm0                        #296.4
        mulps     -48(%rbx,%rax,4), %xmm1                        #296.4
        mulps     -32(%rbx,%rax,4), %xmm0                        #296.4
        mulps     -16(%rbx,%rax,4), %xmm1                        #296.4
        mulps     (%rbx,%rax,4),    %xmm0                        #296.4
        add       $32, %rax                                     #295.3
        cmp       $32028, %rax                                  #295.3
        jne        ..B8.5        # Prob 99%                      #295.3
                                # LOE rbx rbp rsi r13 r14 r15 r12d xmm0
..B8.6:                         # Preds ..B8.5
                                # Execution count [1.99e+05]
        mulps   %xmm1, %xmm0
        movaps  %xmm0, %xmm1
        movhlps %xmm1, %xmm1              # xmm1 = xmm1[1,1]
        mulps   %xmm0, %xmm1
        movaps  %xmm1, %xmm0
        shufps  $229, %xmm0, %xmm0         # xmm0 = xmm0[1,1,2,3]
        mulps   %xmm1, %xmm0
        mov     %rbx, %rdi
        mov     b@GOTPCREL(%rip), %rsi
        mov     %r12, %rdx
        mov     %r13, %rcx
        mov     %rbp, %r8
        mov     %r14, %r9
        movaps  %xmm0, 16(%rsp)      # 16-byte Spill
        push    cc@GOTPCREL(%rip)
        .cfi_adjust_cfa_offset 8
        push    bb@GOTPCREL(%rip)
        .cfi_adjust_cfa_offset 8
        call    dummy@PLT
        add     $16, %rsp
        .cfi_adjust_cfa_offset -16
        inc     %r15d
        cmp     $200000, %r15d 
        jne        ..B8.4        # Prob 99%                      #293.2
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.8:                         # Preds ..B8.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #300.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.9:                         # Preds ..B8.8
                                # Execution count [1.00e+00]
        subq      8(%rsp), %rax                                  #302.2[spill]
        xorps      %xmm0, %xmm0                                  #302.2
        cvtsi2sdq %rax, %xmm0                                   #302.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #302.2
        lea       .L_2__STRING.8(%rip), %rdi                    #302.2
        movl      $1, %eax                                      #302.2
..___tag_value_s312.305:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #302.2
..___tag_value_s312.306:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.10:                        # Preds ..B8.9
                                # Execution count [1.00e+00]
        movq      temp@GOTPCREL(%rip), %rax                     #303.2
        movl      $-1, %edi                                     #304.2
        movss     16(%rsp), %xmm0                               #303.2[spill]
        movss     %xmm0, (%rax)                                 #303.2
..___tag_value_s312.307:
#       check(int)
        call      check@PLT                                     #304.2
..___tag_value_s312.308:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.11:                        # Preds ..B8.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #305.9
        addq      $40, %rsp                                     #305.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #305.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #305.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #305.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #305.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #305.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #305.9
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
# -- Begin  s317
	.text
# mark_begin;
       .align    16,0x90
	.globl s317
# --- s317()
s317:
..B9.1:                         # Preds ..B9.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s317.323:
..L324:
                                                        #308.1
        pushq     %r12                                          #308.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #308.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #308.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #308.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #308.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #308.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $40, %rsp                                     #308.1
	.cfi_def_cfa_offset 96
        lea       .L_2__STRING.9(%rip), %rdi                    #318.2
..___tag_value_s317.338:
#       init(char *)
        call      init@PLT                                      #318.2
..___tag_value_s317.339:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.2:                         # Preds ..B9.1
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #319.12
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.14:                        # Preds ..B9.2
                                # Execution count [1.00e+00]
        mov      %rax, 8(%rsp)                                  #319.12[spill]
                                # LOE rbx rbp r12 r13 r14 r15
..B9.3:                         # Preds ..B9.14
                                # Execution count [4.86e+02]
        movaps    .L_2il0floatpacket.4(%rip), %xmm2
        mov      b@GOTPCREL(%rip), %r12     
        mov      c@GOTPCREL(%rip), %r13     
        mov      d@GOTPCREL(%rip), %rbx     
        mov      e@GOTPCREL(%rip), %rbp     
        mov      aa@GOTPCREL(%rip),%r14     
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.4:                         # Preds ..B9.7 ..B9.3
                                # Execution count [3.97e+05]

        mov      $16000,%eax
        movaps   .L_2il0floatpacket.3(%rip), %xmm0 # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
        movaps   %xmm0, %xmm1
                                # LOE rbx rbp r12 r14 r15 edi r13d xmm0 xmm1
..B9.5:                         # Preds ..B9.5 ..B9.4
                                # Execution count [6.36e+09]
        mulps     %xmm2, %xmm1                                  #325.4
        mulps     %xmm2, %xmm0                                  #325.4
        addl      $-64, %eax 
        jne        ..B9.5        # Prob 99%                      #324.3
                                # LOE rbx rbp r12 r14 r15 edi r13d xmm0 xmm1
..B9.6:                         # Preds ..B9.5
                                # Execution count [3.97e+05]
        mulps   %xmm1, %xmm0
        movaps  %xmm0, %xmm1
        movhlps %xmm1, %xmm1              # xmm1 = xmm1[1,1]
        mulps   %xmm0, %xmm1
        movaps  %xmm1, %xmm0
        shufps  $229, %xmm0, %xmm0         # xmm0 = xmm0[1,1,2,3]
        mulps   %xmm1, %xmm0
        mov    a@GOTPCREL(%rip), %rdi 
        mov    %r12, %rsi
        mov    %r13, %rdx
        mov    %rbx, %rcx
        mov    %rbp, %r8
        mov    %r14, %r9
        movaps %xmm0,16(%rsp) # 16-byte Spill
        push    cc@GOTPCREL(%rip) 
    .Ltmp87:
        .cfi_adjust_cfa_offset 8
        push    bb@GOTPCREL(%rip)
    .Ltmp88:
        .cfi_adjust_cfa_offset 8
        call    dummy@PLT
        movaps    .L_2il0floatpacket.4(%rip), %xmm2
        add    $16, %rsp
    .Ltmp89:
        .cfi_adjust_cfa_offset -16
        inc    %r15d
        cmp    $400000, %r15d
        jne        ..B9.4
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.8:                         # Preds ..B9.7
                                # Execution count [1.00e+00]
#       clock(void)
        call      clock@PLT                                     #329.10
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.9:                         # Preds ..B9.8
                                # Execution count [1.00e+00]
        subq      8(%rsp), %rax                                  #331.2[spill]
        pxor      %xmm0, %xmm0                                  #331.2
        cvtsi2sdq %rax, %xmm0                                   #331.2
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #331.2
        lea       .L_2__STRING.10(%rip), %rdi                   #331.2
        movl      $1, %eax                                      #331.2
..___tag_value_s317.345:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #331.2
..___tag_value_s317.346:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.10:                        # Preds ..B9.9
                                # Execution count [1.00e+00]
        movq      temp@GOTPCREL(%rip), %rax                     #332.2
        movl      $-1, %edi                                     #333.2
        movss     16(%rsp), %xmm0                               #332.2[spill]
        movss     %xmm0, (%rax)                                 #332.2
..___tag_value_s317.347:
#       check(int)
        call      check@PLT                                     #333.2
..___tag_value_s317.348:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.11:                        # Preds ..B9.10
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #334.9
        addq      $40, %rsp                                     #334.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #334.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #334.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #334.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #334.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #334.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #334.9
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
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set1d.363:
..L364:
                                                        #78.1
        movslq    %esi, %rcx                                    #78.1
        cmpl      $-1, %esi                                     #79.6
        jne       ..B10.18      # Prob 66%                      #79.6
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.2:                        # Preds ..B10.1
                                # Execution count [3.33e-01]
        movq      %rdi, %rdx                                    #80.3
        andq      $15, %rdx                                     #80.3
        testl     %edx, %edx                                    #80.3
        je        ..B10.7       # Prob 50%                      #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B10.3:                        # Preds ..B10.2
                                # Execution count [3.33e-01]
        testb     $3, %dl                                       #80.3
        jne       ..B10.41      # Prob 10%                      #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B10.4:                        # Preds ..B10.3
                                # Execution count [3.32e-01]
        negl      %edx                                          #80.3
        xorl      %ecx, %ecx                                    #80.3
        addl      $16, %edx                                     #80.3
        xorl      %eax, %eax                                    #80.3
        shrl      $2, %edx                                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B10.5:                        # Preds ..B10.5 ..B10.4
                                # Execution count [1.07e+04]
        incl      %ecx                                          #81.29
        pxor      %xmm0, %xmm0                                  #81.29
        cvtsi2ss  %ecx, %xmm0                                   #81.29
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #81.29
        divss     %xmm0, %xmm1                                  #81.29
        movss     %xmm1, (%rdi,%rax,4)                          #81.4
        incq      %rax                                          #81.29
        cmpl      %edx, %ecx                                    #80.3
        jb        ..B10.5       # Prob 99%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B10.7:                        # Preds ..B10.5 ..B10.2
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
..B10.8:                        # Preds ..B10.8 ..B10.7
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
        jb        ..B10.8       # Prob 99%                      #80.3
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B10.9:                        # Preds ..B10.8
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #80.3
        cmpl      $32000, %r9d                                  #80.3
        ja        ..B10.40      # Prob 50%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm0
..B10.10:                       # Preds ..B10.9
                                # Execution count [3.16e-01]
        movl      %r8d, %edx                                    #80.3
        negl      %edx                                          #80.3
        addl      $32000, %edx                                  #80.3
        cmpl      $4, %edx                                      #80.3
        jb        ..B10.42      # Prob 10%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx esi r8d r9d xmm0
..B10.11:                       # Preds ..B10.10
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
..B10.12:                       # Preds ..B10.12 ..B10.11
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
        jb        ..B10.12      # Prob 99%                      #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B10.14:                       # Preds ..B10.12 ..B10.42 ..B10.41
                                # Execution count [3.33e-01]
        addl      %ecx, %r8d                                    #80.3
        movslq    %r8d, %rax                                    #80.3
        cmpl      %edx, %ecx                                    #80.3
        jae       ..B10.40      # Prob 0%                       #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.16:                       # Preds ..B10.14 ..B10.16
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
        jb        ..B10.16      # Prob 99%                      #80.3
        jmp       ..B10.40      # Prob 100%                     #80.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.18:                       # Preds ..B10.1
                                # Execution count [6.67e-01]
        cmpl      $-2, %esi                                     #79.6
        jne       ..B10.35      # Prob 50%                      #79.6
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.19:                       # Preds ..B10.18
                                # Execution count [3.33e-01]
        movq      %rdi, %rax                                    #84.3
        andq      $15, %rax                                     #84.3
        testl     %eax, %eax                                    #84.3
        je        ..B10.24      # Prob 50%                      #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.20:                       # Preds ..B10.19
                                # Execution count [3.33e-01]
        testb     $3, %al                                       #84.3
        jne       ..B10.43      # Prob 10%                      #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.21:                       # Preds ..B10.20
                                # Execution count [3.33e-01]
        negl      %eax                                          #84.3
        xorl      %ecx, %ecx                                    #84.3
        addl      $16, %eax                                     #84.3
        xorl      %edx, %edx                                    #84.3
        shrl      $2, %eax                                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B10.22:                       # Preds ..B10.22 ..B10.21
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
        jb        ..B10.22      # Prob 99%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B10.24:                       # Preds ..B10.22 ..B10.19
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
..B10.25:                       # Preds ..B10.25 ..B10.24
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
        jb        ..B10.25      # Prob 99%                      #84.3
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B10.26:                       # Preds ..B10.25
                                # Execution count [3.00e-01]
        lea       32001(%rsi), %r9d                             #84.3
        cmpl      $32000, %r9d                                  #84.3
        ja        ..B10.40      # Prob 50%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm1 xmm2
..B10.27:                       # Preds ..B10.26
                                # Execution count [3.16e-01]
        movl      %r8d, %eax                                    #84.3
        negl      %eax                                          #84.3
        addl      $32000, %eax                                  #84.3
        cmpl      $4, %eax                                      #84.3
        jb        ..B10.44      # Prob 10%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax esi r8d r9d xmm1 xmm2
..B10.28:                       # Preds ..B10.27
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
..B10.29:                       # Preds ..B10.29 ..B10.28
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
        jb        ..B10.29      # Prob 99%                      #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B10.31:                       # Preds ..B10.29 ..B10.44 ..B10.43
                                # Execution count [3.33e-01]
        addl      %ecx, %r8d                                    #84.3
        movslq    %r8d, %rdx                                    #84.3
        cmpl      %eax, %ecx                                    #84.3
        jae       ..B10.40      # Prob 0%                       #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.33:                       # Preds ..B10.31 ..B10.33
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
        jb        ..B10.33      # Prob 99%                      #84.3
        jmp       ..B10.40      # Prob 100%                     #84.3
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.35:                       # Preds ..B10.18
                                # Execution count [0.00e+00]
        testl     %esi, %esi                                    #88.3
        jne       ..B10.37      # Prob 50%                      #88.3
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.36:                       # Preds ..B10.35
                                # Execution count [3.33e-01]
        movss     %xmm0, (%rdi)                                 #89.4
        jmp       ..B10.40      # Prob 100%                     #89.4
                                # LOE rbx rbp r12 r13 r14 r15
..B10.37:                       # Preds ..B10.35
                                # Execution count [3.33e-01]
        xorl      %r8d, %r8d                                    #88.3
        lea       31999(%rcx), %rax                             #88.23
        cmpq      $-1, %rcx                                     #88.23
        je        ..B10.49      # Prob 2%                       #88.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B10.50:                       # Preds ..B10.37
                                # Execution count [3.33e-01]
        movslq    %eax, %rdx                                    #88.23
        cmpq      %rax, %rdx                                    #88.23
        jne       ..B10.49      # Prob 2%                       #88.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B10.48:                       # Preds ..B10.50
                                # Execution count [3.33e-01]
        cltd                                                    #88.23
        idivl     %esi                                          #88.23
        movslq    %eax, %rax                                    #88.23
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
..B10.47:                       # Preds ..B10.49 ..B10.48
                                # Execution count [3.33e-01]
        movl      %eax, %edx                                    #88.23
        xorl      %eax, %eax                                    #89.4
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B10.38:                       # Preds ..B10.38 ..B10.47
                                # Execution count [1.85e+00]
        incl      %r8d                                          #88.3
        movss     %xmm0, (%rdi,%rax,4)                          #89.4
        addq      %rcx, %rax                                    #88.3
        cmpl      %edx, %r8d                                    #88.3
        jl        ..B10.38      # Prob 82%                      #88.3
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B10.40:                       # Preds ..B10.38 ..B10.33 ..B10.16 ..B10.31 ..B10.9
                                #       ..B10.14 ..B10.26 ..B10.36
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #92.9
        ret                                                     #92.9
                                # LOE
..B10.41:                       # Preds ..B10.3
                                # Execution count [3.33e-02]: Infreq
        xorl      %r8d, %r8d                                    #80.3
        movl      $32000, %edx                                  #80.3
        xorl      %ecx, %ecx                                    #80.3
        jmp       ..B10.14      # Prob 100%                     #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.42:                       # Preds ..B10.10
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #80.3
        jmp       ..B10.14      # Prob 100%                     #80.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.43:                       # Preds ..B10.20
                                # Execution count [3.33e-02]: Infreq
        xorl      %r8d, %r8d                                    #84.3
        movl      $32000, %eax                                  #84.3
        xorl      %ecx, %ecx                                    #84.3
        jmp       ..B10.31      # Prob 100%                     #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.44:                       # Preds ..B10.27
                                # Execution count [3.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #84.3
        jmp       ..B10.31      # Prob 100%                     #84.3
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.49:                       # Preds ..B10.37 ..B10.50
                                # Execution count [3.33e-01]: Infreq
        cqto                                                    #88.23
        idivq     %rcx                                          #88.23
        jmp       ..B10.47      # Prob 100%                     #88.23
        .align    16,0x90
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
	.cfi_endproc
# mark_end;
	.type	set1d,@function
	.size	set1d,.-set1d
	.data
# -- End  set1d
	.text
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(char *)
init:
# parameter 1: %rdi
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.366:
..L367:
                                                        #174.1
        pushq     %rsi                                          #174.1
	.cfi_def_cfa_offset 16
        lea       .L_2__STRING.3(%rip), %rsi                    #185.7
        movq      %rdi, %rcx                                    #174.1
..L369:                                                         #185.7
        movb      (%rdi), %dl                                   #185.7
        cmpb      (%rsi), %dl                                   #185.7
        jne       ..L371        # Prob 50%                      #185.7
        testb     %dl, %dl                                      #185.7
        je        ..L370        # Prob 50%                      #185.7
        movb      1(%rdi), %dl                                  #185.7
        cmpb      1(%rsi), %dl                                  #185.7
        jne       ..L371        # Prob 50%                      #185.7
        addq      $2, %rdi                                      #185.7
        addq      $2, %rsi                                      #185.7
        testb     %dl, %dl                                      #185.7
        jne       ..L369        # Prob 50%                      #185.7
..L370:                                                         #
        xorl      %eax, %eax                                    #185.7
        jmp       ..L372        # Prob 100%                     #185.7
..L371:                                                         #
        sbbl      %eax, %eax                                    #185.7
        orl       $1, %eax                                      #185.7
..L372:                                                         #
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B11.14:                       # Preds ..B11.1
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #185.7
        je        ..B11.7       # Prob 22%                      #185.7
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B11.2:                        # Preds ..B11.14
                                # Execution count [7.80e-01]
        movq      %rcx, %rdi                                    #190.14
        lea       .L_2__STRING.2(%rip), %rsi                    #190.14
..L373:                                                         #190.14
        movb      (%rdi), %dl                                   #190.14
        cmpb      (%rsi), %dl                                   #190.14
        jne       ..L375        # Prob 50%                      #190.14
        testb     %dl, %dl                                      #190.14
        je        ..L374        # Prob 50%                      #190.14
        movb      1(%rdi), %dl                                  #190.14
        cmpb      1(%rsi), %dl                                  #190.14
        jne       ..L375        # Prob 50%                      #190.14
        addq      $2, %rdi                                      #190.14
        addq      $2, %rsi                                      #190.14
        testb     %dl, %dl                                      #190.14
        jne       ..L373        # Prob 50%                      #190.14
..L374:                                                         #
        xorl      %eax, %eax                                    #190.14
        jmp       ..L376        # Prob 100%                     #190.14
..L375:                                                         #
        sbbl      %eax, %eax                                    #190.14
        orl       $1, %eax                                      #190.14
..L376:                                                         #
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B11.15:                       # Preds ..B11.2
                                # Execution count [7.80e-01]
        testl     %eax, %eax                                    #190.14
        je        ..B11.5       # Prob 22%                      #190.14
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B11.3:                        # Preds ..B11.15
                                # Execution count [6.08e-01]
        movq      %rcx, %rdi                                    #193.14
        lea       .L_2__STRING.1(%rip), %rsi                    #193.14
..L377:                                                         #193.14
        movb      (%rdi), %dl                                   #193.14
        cmpb      (%rsi), %dl                                   #193.14
        jne       ..L379        # Prob 50%                      #193.14
        testb     %dl, %dl                                      #193.14
        je        ..L378        # Prob 50%                      #193.14
        movb      1(%rdi), %dl                                  #193.14
        cmpb      1(%rsi), %dl                                  #193.14
        jne       ..L379        # Prob 50%                      #193.14
        addq      $2, %rdi                                      #193.14
        addq      $2, %rsi                                      #193.14
        testb     %dl, %dl                                      #193.14
        jne       ..L377        # Prob 50%                      #193.14
..L378:                                                         #
        xorl      %eax, %eax                                    #193.14
        jmp       ..L380        # Prob 100%                     #193.14
..L379:                                                         #
        sbbl      %eax, %eax                                    #193.14
        orl       $1, %eax                                      #193.14
..L380:                                                         #
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B11.16:                       # Preds ..B11.3
                                # Execution count [6.08e-01]
        testl     %eax, %eax                                    #193.14
        jne       ..B11.11      # Prob 78%                      #193.14
                                # LOE rbx rbp r12 r13 r14 r15
..B11.4:                        # Preds ..B11.16
                                # Execution count [1.34e-01]
        movss     .L_2il0floatpacket.7(%rip), %xmm0             #194.3
        movl      $1, %esi                                      #194.3
        movq      a@GOTPCREL(%rip), %rdi                        #194.3
..___tag_value_init.381:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #194.3
..___tag_value_init.382:
        jmp       ..B11.11      # Prob 100%                     #194.3
                                # LOE rbx rbp r12 r13 r14 r15
..B11.5:                        # Preds ..B11.15
                                # Execution count [1.72e-01]
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #191.3
        movl      $1, %esi                                      #191.3
        movq      a@GOTPCREL(%rip), %rdi                        #191.3
..___tag_value_init.383:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #191.3
..___tag_value_init.384:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.6:                        # Preds ..B11.5
                                # Execution count [1.72e-01]
        movl      $-2, %esi                                     #192.3
        pxor      %xmm0, %xmm0                                  #192.3
        movq      b@GOTPCREL(%rip), %rdi                        #192.3
..___tag_value_init.385:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #192.3
..___tag_value_init.386:
        jmp       ..B11.11      # Prob 100%                     #192.3
                                # LOE rbx rbp r12 r13 r14 r15
..B11.7:                        # Preds ..B11.14
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #186.3
        movl      $1, %esi                                      #186.3
        movq      a@GOTPCREL(%rip), %rdi                        #186.3
..___tag_value_init.387:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #186.3
..___tag_value_init.388:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.8:                        # Preds ..B11.7
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #187.3
        movl      $1, %esi                                      #187.3
        movq      b@GOTPCREL(%rip), %rdi                        #187.3
..___tag_value_init.389:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #187.3
..___tag_value_init.390:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.9:                        # Preds ..B11.8
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #188.3
        movl      $1, %esi                                      #188.3
        movq      c@GOTPCREL(%rip), %rdi                        #188.3
..___tag_value_init.391:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #188.3
..___tag_value_init.392:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.10:                       # Preds ..B11.9
                                # Execution count [2.20e-01]
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #189.3
        movl      $1, %esi                                      #189.3
        movq      d@GOTPCREL(%rip), %rdi                        #189.3
..___tag_value_init.393:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #189.3
..___tag_value_init.394:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.11:                       # Preds ..B11.10 ..B11.6 ..B11.4 ..B11.16
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
	.align 1
# End
