	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "-Ofast -std=c99 -fno-inline-functions -g -fpic -S -o tsc_icc.s";
	.file "tsc.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
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
..___tag_value_main.2:
..L3:
                                                          #362.11
..LN0:
	.file   1 "tsc.c"
	.loc    1  362  is_stmt 1
        pushq     %rbp                                          #362.11
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #362.11
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-128, %rsp                                   #362.11
..LN3:
        pushq     %rbx                                          #362.11
..LN4:
        subq      $120, %rsp                                    #362.11
..LN5:
        xorl      %esi, %esi                                    #362.11
..LN6:
        movl      $3, %edi                                      #362.11
..LN7:
        call      __intel_new_feature_proc_init@PLT             #362.11
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
..LN8:
                                # LOE r12 r13 r14 r15
..B1.19:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
..LN9:
        stmxcsr   (%rsp)                                        #362.11
..LN10:
	.loc    1  366  prologue_end  is_stmt 1
        movl      $16, %edi                                     #366.20
..LN11:
        movl      $128000, %esi                                 #366.20
..LN12:
	.loc    1  362  is_stmt 1
        orl       $32832, (%rsp)                                #362.11
..LN13:
        ldmxcsr   (%rsp)                                        #362.11
..LN14:
	.loc    1  366  is_stmt 1
#       memalign(size_t, size_t)
        call      memalign@PLT                                  #366.20
..LN15:
                                # LOE rax r12 r13 r14 r15
..B1.2:                         # Preds ..B1.19
                                # Execution count [1.00e+00]
..LN16:
	.loc    1  368  is_stmt 1
        movq      %rax, %rdi                                    #368.2
..LN17:
        lea       (%rsp), %rsi                                  #368.2
..LN18:
        lea       4(%rsp), %rdx                                 #368.2
..___tag_value_main.9:
..LN19:
#       set(int *, float *, float *)
        call      set@PLT                                       #368.2
..___tag_value_main.10:
..LN20:
                                # LOE r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
..LN21:
	.loc    1  369  is_stmt 1
        lea       il0_peep_printf_format_0(%rip), %rdi          #369.2
..LN22:
        call      puts@PLT                                      #369.2
..LN23:
                                # LOE r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
..LN24:
	.loc    1  371  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #371.12
..LN25:
                                # LOE rax r12 r13 r14 r15
..B1.20:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
..LN26:
        movq      %rax, %rbx                                    #371.12
..LN27:
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.20
                                # Execution count [1.00e+00]
..LN28:
	.loc    1  373  is_stmt 1
        lea       il0_peep_printf_format_1(%rip), %rdi          #373.2
..LN29:
        call      puts@PLT                                      #373.2
..LN30:
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
..LN31:
	.loc    1  374  is_stmt 1
        movss     (%rsp), %xmm0                                 #374.2
..LN32:
        movss     4(%rsp), %xmm1                                #374.2
..___tag_value_main.11:
..LN33:
#       s242(float, float)
        call      s242@PLT                                      #374.2
..___tag_value_main.12:
..LN34:
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
..___tag_value_main.13:
..LN35:
	.loc    1  375  is_stmt 1
#       s2275()
        call      s2275@PLT                                     #375.2
..___tag_value_main.14:
..LN36:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
..LN37:
	.loc    1  378  is_stmt 1
        lea       il0_peep_printf_format_2(%rip), %rdi          #378.2
..LN38:
        call      puts@PLT                                      #378.2
..LN39:
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
..___tag_value_main.15:
..LN40:
	.loc    1  379  is_stmt 1
#       s112()
        call      s112@PLT                                      #379.2
..___tag_value_main.16:
..LN41:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
..LN42:
	.loc    1  382  is_stmt 1
        lea       il0_peep_printf_format_3(%rip), %rdi          #382.2
..LN43:
        call      puts@PLT                                      #382.2
..LN44:
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
..___tag_value_main.17:
..LN45:
	.loc    1  383  is_stmt 1
#       s312()
        call      s312@PLT                                      #383.2
..___tag_value_main.18:
..LN46:
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
..___tag_value_main.19:
..LN47:
	.loc    1  384  is_stmt 1
#       s317()
        call      s317@PLT                                      #384.2
..___tag_value_main.20:
..LN48:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
..LN49:
	.loc    1  386  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #386.10
..LN50:
                                # LOE rax rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
..LN51:
	.loc    1  388  is_stmt 1
        subq      %rbx, %rax                                    #388.2
..LN52:
        pxor      %xmm0, %xmm0                                  #388.2
..LN53:
        cvtsi2sdq %rax, %xmm0                                   #388.2
..LN54:
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #388.2
..LN55:
        lea       .L_2__STRING.16(%rip), %rdi                   #388.2
..LN56:
        movl      $1, %eax                                      #388.2
..___tag_value_main.21:
..LN57:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #388.2
..___tag_value_main.22:
..LN58:
                                # LOE r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.00e+00]
..LN59:
	.loc    1  390  is_stmt 1
        xorl      %eax, %eax                                    #390.9
..LN60:
	.loc    1  390  epilogue_begin  is_stmt 1
        addq      $120, %rsp                                    #390.9
	.cfi_restore 3
..LN61:
        popq      %rbx                                          #390.9
..LN62:
        movq      %rbp, %rsp                                    #390.9
..LN63:
        popq      %rbp                                          #390.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN64:
        ret                                                     #390.9
        .align    16,0x90
..LN65:
                                # LOE
..LN66:
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.67:
.LNmain:
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
	.file   2 "/usr/include/time.h"
	.file   3 "/usr/include/bits/types.h"
# -- End  main
	.text
.L_2__routine_start_set_1:
# -- Begin  set
	.text
# mark_begin;
       .align    16,0x90
	.globl set
# --- set(int *, float *, float *)
set:
# parameter 1(ip): %rdi
# parameter 2(s1): %rsi
# parameter 3(s2): %rdx
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set.31:
..L32:
                                                         #200.40
..LN68:
	.loc    1  200  is_stmt 1
        pushq     %r15                                          #200.40
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
..LN69:
        pushq     %rbx                                          #200.40
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
..LN70:
        pushq     %rbp                                          #200.40
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
..LN71:
	.loc    1  200  prologue_end  is_stmt 1
        movq      %rsi, %rbx                                    #200.40
..LN72:
        movq      %rdi, %rbp                                    #200.40
..LN73:
	.loc    1  201  is_stmt 1
        movl      $16, %edi                                     #201.16
..LN74:
        movl      $128000, %esi                                 #201.16
..LN75:
	.loc    1  200  is_stmt 1
        movq      %rdx, %r15                                    #200.40
..LN76:
	.loc    1  201  is_stmt 1
#       memalign(size_t, size_t)
        call      memalign@PLT                                  #201.16
..LN77:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
..LN78:
        movq      xx@GOTPCREL(%rip), %rdx                       #201.2
..LN79:
	.loc    1  202  is_stmt 1
        movl      $10, %edi                                     #202.2
..LN80:
	.loc    1  201  is_stmt 1
        movq      %rax, (%rdx)                                  #201.2
..LN81:
	.loc    1  202  is_stmt 1
        call      putchar@PLT                                   #202.2
..LN82:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2
                                # Execution count [1.00e+00]
..LN83:
	.loc    1  203  is_stmt 1
        xorl      %edx, %edx                                    #203.2
..LN84:
        xorl      %eax, %eax                                    #203.2
        .align    16,0x90
..LN85:
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.4:                         # Preds ..B2.4 ..B2.3
                                # Execution count [3.20e+03]
..L40:
                # optimization report
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.367676
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.013672
..LN86:
	.loc    1  204  is_stmt 1
        movslq    %eax, %rax                                    #204.3
..LN87:
	.loc    1  203  is_stmt 1
        incl      %edx                                          #203.2
..LN88:
	.loc    1  204  is_stmt 1
        lea       4(%rax), %ecx                                 #204.14
..LN89:
	.loc    1  205  is_stmt 1
        lea       2(%rax), %esi                                 #205.16
..LN90:
	.loc    1  207  is_stmt 1
        lea       3(%rax), %edi                                 #207.16
..LN91:
	.loc    1  204  is_stmt 1
        movl      %ecx, (%rbp,%rax,4)                           #204.3
..LN92:
	.loc    1  208  is_stmt 1
        lea       1(%rax), %r8d                                 #208.16
..LN93:
	.loc    1  205  is_stmt 1
        movl      %esi, 4(%rbp,%rax,4)                          #205.3
..LN94:
	.loc    1  204  is_stmt 1
        lea       9(%rax), %r9d                                 #204.14
..LN95:
	.loc    1  206  is_stmt 1
        movl      %eax, 8(%rbp,%rax,4)                          #206.3
..LN96:
	.loc    1  205  is_stmt 1
        lea       7(%rax), %r10d                                #205.16
..LN97:
	.loc    1  207  is_stmt 1
        movl      %edi, 12(%rbp,%rax,4)                         #207.3
..LN98:
	.loc    1  204  is_stmt 1
        lea       5(%rax), %r11d                                #204.3
..LN99:
	.loc    1  208  is_stmt 1
        movl      %r8d, 16(%rbp,%rax,4)                         #208.3
..LN100:
	.loc    1  207  is_stmt 1
        lea       8(%rax), %ecx                                 #207.16
..LN101:
	.loc    1  204  is_stmt 1
        movl      %r9d, 20(%rbp,%rax,4)                         #204.3
..LN102:
	.loc    1  208  is_stmt 1
        lea       6(%rax), %esi                                 #208.16
..LN103:
	.loc    1  205  is_stmt 1
        movl      %r10d, 24(%rbp,%rax,4)                        #205.3
..LN104:
	.loc    1  206  is_stmt 1
        movl      %r11d, 28(%rbp,%rax,4)                        #206.3
..LN105:
	.loc    1  207  is_stmt 1
        movl      %ecx, 32(%rbp,%rax,4)                         #207.3
..LN106:
	.loc    1  208  is_stmt 1
        movl      %esi, 36(%rbp,%rax,4)                         #208.3
..LN107:
	.loc    1  203  is_stmt 1
        addl      $10, %eax                                     #203.2
..LN108:
        cmpl      $3200, %edx                                   #203.2
..LN109:
        jb        ..B2.4        # Prob 99%                      #203.2
..LN110:
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.5:                         # Preds ..B2.4
                                # Execution count [1.00e+00]
..LN111:
	.loc    1  212  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #212.2
..LN112:
        movl      $1, %esi                                      #212.2
..LN113:
        movq      a@GOTPCREL(%rip), %rdi                        #212.2
..___tag_value_set.41:
..LN114:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #212.2
..___tag_value_set.42:
..LN115:
                                # LOE rbx r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [1.00e+00]
..LN116:
	.loc    1  213  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #213.2
..LN117:
        movl      $1, %esi                                      #213.2
..LN118:
        movq      b@GOTPCREL(%rip), %rdi                        #213.2
..___tag_value_set.43:
..LN119:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #213.2
..___tag_value_set.44:
..LN120:
                                # LOE rbx r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [1.00e+00]
..LN121:
	.loc    1  214  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #214.2
..LN122:
        movl      $1, %esi                                      #214.2
..LN123:
        movq      c@GOTPCREL(%rip), %rdi                        #214.2
..___tag_value_set.45:
..LN124:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #214.2
..___tag_value_set.46:
..LN125:
                                # LOE rbx r12 r13 r14 r15
..B2.8:                         # Preds ..B2.7
                                # Execution count [1.00e+00]
..LN126:
	.loc    1  215  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #215.2
..LN127:
        movl      $1, %esi                                      #215.2
..LN128:
        movq      d@GOTPCREL(%rip), %rdi                        #215.2
..___tag_value_set.47:
..LN129:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #215.2
..___tag_value_set.48:
..LN130:
                                # LOE rbx r12 r13 r14 r15
..B2.9:                         # Preds ..B2.8
                                # Execution count [1.00e+00]
..LN131:
	.loc    1  216  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #216.2
..LN132:
        movl      $1, %esi                                      #216.2
..LN133:
        movq      e@GOTPCREL(%rip), %rdi                        #216.2
..___tag_value_set.49:
..LN134:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #216.2
..___tag_value_set.50:
..LN135:
                                # LOE rbx r12 r13 r14 r15
..B2.10:                        # Preds ..B2.9
                                # Execution count [1.00e+00]
..LN136:
	.loc    1  217  is_stmt 1
        movl      $-1, %esi                                     #217.2
..LN137:
        pxor      %xmm0, %xmm0                                  #217.2
..LN138:
        movq      aa@GOTPCREL(%rip), %rdi                       #217.2
..___tag_value_set.51:
..LN139:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #217.2
..___tag_value_set.52:
..LN140:
                                # LOE rbx r12 r13 r14 r15
..B2.11:                        # Preds ..B2.10
                                # Execution count [1.00e+00]
..LN141:
	.loc    1  218  is_stmt 1
        movl      $-1, %esi                                     #218.2
..LN142:
        pxor      %xmm0, %xmm0                                  #218.2
..LN143:
        movq      bb@GOTPCREL(%rip), %rdi                       #218.2
..___tag_value_set.53:
..LN144:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #218.2
..___tag_value_set.54:
..LN145:
                                # LOE rbx r12 r13 r14 r15
..B2.12:                        # Preds ..B2.11
                                # Execution count [1.00e+00]
..LN146:
	.loc    1  219  is_stmt 1
        movl      $-1, %esi                                     #219.2
..LN147:
        pxor      %xmm0, %xmm0                                  #219.2
..LN148:
        movq      cc@GOTPCREL(%rip), %rdi                       #219.2
..___tag_value_set.55:
..LN149:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #219.2
..___tag_value_set.56:
..LN150:
                                # LOE rbx r12 r13 r14 r15
..B2.13:                        # Preds ..B2.12
                                # Execution count [1.00e+00]
..LN151:
	.loc    1  222  is_stmt 1
        movq      indx@GOTPCREL(%rip), %rax                     #222.3
..LN152:
	.loc    1  221  is_stmt 1
        xorl      %edx, %edx                                    #221.2
..LN153:
                                # LOE rax rdx rbx r12 r13 r14 r15
..B2.14:                        # Preds ..B2.14 ..B2.13
                                # Execution count [3.20e+04]
..L57:
                # optimization report
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.187012
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.009766
..LN154:
	.loc    1  222  is_stmt 1
        movl      %edx, %ecx                                    #222.3
..LN155:
        incl      %ecx                                          #222.16
..LN156:
        andl      $3, %ecx                                      #222.21
..LN157:
        incl      %ecx                                          #222.23
..LN158:
        movl      %ecx, (%rax,%rdx,4)                           #222.3
..LN159:
	.loc    1  221  is_stmt 1
        incq      %rdx                                          #221.2
..LN160:
        cmpq      $32000, %rdx                                  #221.2
..LN161:
        jb        ..B2.14       # Prob 99%                      #221.2
..LN162:
                                # LOE rax rdx rbx r12 r13 r14 r15
..B2.15:                        # Preds ..B2.14
                                # Execution count [1.00e+00]
..LN163:
	.loc    1  224  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #224.3
..LN164:
        movss     %xmm0, (%rbx)                                 #224.3
..LN165:
	.loc    1  225  is_stmt 1
        movl      $1073741824, (%r15)                           #225.3
	.cfi_restore 6
..LN166:
	.loc    1  227  epilogue_begin  is_stmt 1
        popq      %rbp                                          #227.1
	.cfi_def_cfa_offset 24
	.cfi_restore 3
..LN167:
        popq      %rbx                                          #227.1
	.cfi_def_cfa_offset 16
	.cfi_restore 15
..LN168:
        popq      %r15                                          #227.1
	.cfi_def_cfa_offset 8
..LN169:
        ret                                                     #227.1
        .align    16,0x90
..LN170:
                                # LOE
..LN171:
	.cfi_endproc
# mark_end;
	.type	set,@function
	.size	set,.-set
..LNset.172:
.LNset:
	.data
# -- End  set
	.text
.L_2__routine_start_set2d_2:
# -- Begin  set2d
	.text
# mark_begin;
       .align    16,0x90
	.globl set2d
# --- set2d(float (*)[180], float, int)
set2d:
# parameter 1(arr): %rdi
# parameter 2(value): %xmm0
# parameter 3(stride): %esi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set2d.68:
..L69:
                                                         #96.1
..LN173:
	.loc    1  96  is_stmt 1
        movslq    %esi, %rsi                                    #96.1
..LN174:
	.loc    1  100  prologue_end  is_stmt 1
        cmpq      $-1, %rsi                                     #100.6
..LN175:
        je        ..B3.28       # Prob 33%                      #100.6
..LN176:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.2:                         # Preds ..B3.1
                                # Execution count [6.67e-01]
..LN177:
        cmpq      $-2, %rsi                                     #100.6
..LN178:
        je        ..B3.8        # Prob 50%                      #100.6
..LN179:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.3:                         # Preds ..B3.2
                                # Execution count [3.33e-01]
..LN180:
	.loc    1  113  is_stmt 1
        xorl      %eax, %eax                                    #113.14
..LN181:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.4:                         # Preds ..B3.6 ..B3.3
                                # Execution count [6.00e+01]
..L71:
                # optimization report
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.408447
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.203125
..LN182:
..LN183:
	.loc    1  114  is_stmt 1
        xorl      %edx, %edx                                    #114.15
..LN184:
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.5:                         # Preds ..B3.5 ..B3.4
                                # Execution count [3.33e+02]
..L72:
                # optimization report
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.448486
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.085938
..LN185:
..LN186:
	.loc    1  115  is_stmt 1
        movss     %xmm0, (%rdi,%rdx,4)                          #115.5
..LN187:
	.loc    1  114  is_stmt 1
        addq      %rsi, %rdx                                    #114.30
..LN188:
        cmpq      $180, %rdx                                    #114.24
..LN189:
        jl        ..B3.5        # Prob 82%                      #114.24
..LN190:
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.6:                         # Preds ..B3.5
                                # Execution count [6.00e+01]
..LN191:
	.loc    1  113  is_stmt 1
        incl      %eax                                          #113.29
..LN192:
        addq      $720, %rdi                                    #113.29
..LN193:
        cmpl      $180, %eax                                    #113.23
..LN194:
        jl        ..B3.4        # Prob 99%                      #113.23
..LN195:
        jmp       ..B3.48       # Prob 100%                     #113.23
..LN196:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.8:                         # Preds ..B3.2
                                # Execution count [3.34e-01]
..LN197:
	.loc    1  107  is_stmt 1
        xorl      %r9d, %r9d                                    #107.3
..LN198:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B3.9:                         # Preds ..B3.26 ..B3.8
                                # Execution count [6.00e+01]
..L73:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN199:
	.loc    1  109  is_stmt 1
        movslq    %r9d, %r9                                     #109.5
..LN200:
        imulq     $720, %r9, %r8                                #109.5
..LN201:
        addq      %rdi, %r8                                     #109.5
..LN202:
	.loc    1  108  is_stmt 1
        movq      %r8, %rax                                     #108.4
..LN203:
        andq      $15, %rax                                     #108.4
..LN204:
        testl     %eax, %eax                                    #108.4
..LN205:
        je        ..B3.14       # Prob 50%                      #108.4
..LN206:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B3.10:                        # Preds ..B3.9
                                # Execution count [6.00e+01]
..LN207:
	.loc    1  109  is_stmt 1
        incl      %r9d                                          #109.34
..LN208:
	.loc    1  108  is_stmt 1
        testb     $3, %al                                       #108.4
..LN209:
        jne       ..B3.49       # Prob 10%                      #108.4
..LN210:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B3.11:                        # Preds ..B3.10
                                # Execution count [6.00e+01]
..LN211:
	.loc    1  109  is_stmt 1
        movl      %r9d, %esi                                    #109.42
..LN212:
        pxor      %xmm1, %xmm1                                  #109.42
..LN213:
        imull     %r9d, %esi                                    #109.42
..LN214:
	.loc    1  108  is_stmt 1
        negl      %eax                                          #108.4
..LN215:
	.loc    1  109  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #109.42
..LN216:
        cvtsi2ss  %esi, %xmm1                                   #109.42
..LN217:
	.loc    1  108  is_stmt 1
        addl      $16, %eax                                     #108.4
..LN218:
        xorl      %ecx, %ecx                                    #108.4
..LN219:
        shrl      $2, %eax                                      #108.4
..LN220:
        movl      %eax, %edx                                    #108.4
..LN221:
	.loc    1  109  is_stmt 1
        divss     %xmm1, %xmm0                                  #109.42
..LN222:
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B3.12:                        # Preds ..B3.12 ..B3.11
                                # Execution count [1.08e+04]
..L74:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN223:
	.loc    1  108  is_stmt 1
..LN224:
	.loc    1  109  is_stmt 1
        movss     %xmm0, (%r8,%rcx,4)                           #109.5
..LN225:
	.loc    1  108  is_stmt 1
        incq      %rcx                                          #108.4
..LN226:
        cmpq      %rdx, %rcx                                    #108.4
..LN227:
        jb        ..B3.12       # Prob 99%                      #108.4
..LN228:
        jmp       ..B3.15       # Prob 100%                     #108.4
..LN229:
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B3.14:                        # Preds ..B3.9
                                # Execution count [3.00e+01]
..LN230:
	.loc    1  109  is_stmt 1
        incl      %r9d                                          #109.34
..LN231:
        pxor      %xmm1, %xmm1                                  #109.42
..LN232:
        movl      %r9d, %ecx                                    #109.42
..LN233:
	.loc    1  108  is_stmt 1
        xorl      %edx, %edx                                    #108.4
..LN234:
	.loc    1  109  is_stmt 1
        imull     %r9d, %ecx                                    #109.42
..LN235:
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #109.42
..LN236:
        cvtsi2ss  %ecx, %xmm1                                   #109.42
..LN237:
        divss     %xmm1, %xmm0                                  #109.42
..LN238:
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B3.15:                        # Preds ..B3.12 ..B3.14
                                # Execution count [6.00e+01]
..LN239:
	.loc    1  108  is_stmt 1
        negl      %eax                                          #108.4
..LN240:
        addl      $4, %eax                                      #108.4
..LN241:
        andl      $7, %eax                                      #108.4
..LN242:
        negl      %eax                                          #108.4
..LN243:
	.loc    1  109  is_stmt 1
        shufps    $0, %xmm0, %xmm0                              #109.42
..LN244:
	.loc    1  108  is_stmt 1
        lea       180(%rax), %ecx                               #108.4
..LN245:
        movl      %ecx, %esi                                    #108.4
..LN246:
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.16:                        # Preds ..B3.16 ..B3.15
                                # Execution count [1.08e+04]
..L75:
                # optimization report
                # LOOP WAS UNROLLED BY 2
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 21.453125
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.250000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN247:
	.loc    1  109  is_stmt 1
        movups    %xmm0, (%r8,%rdx,4)                           #109.5
..LN248:
        movups    %xmm0, 16(%r8,%rdx,4)                         #109.5
..LN249:
	.loc    1  108  is_stmt 1
        addq      $8, %rdx                                      #108.4
..LN250:
        cmpq      %rsi, %rdx                                    #108.4
..LN251:
        jb        ..B3.16       # Prob 99%                      #108.4
..LN252:
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.17:                        # Preds ..B3.16
                                # Execution count [6.00e+01]
..LN253:
        addl      $181, %eax                                    #108.4
..LN254:
        cmpl      $180, %eax                                    #108.4
..LN255:
        ja        ..B3.26       # Prob 50%                      #108.4
..LN256:
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 ecx r9d xmm0
..B3.18:                        # Preds ..B3.17
                                # Execution count [6.00e+01]
..LN257:
        movl      %ecx, %eax                                    #108.4
..LN258:
        negl      %eax                                          #108.4
..LN259:
        addl      $180, %eax                                    #108.4
..LN260:
        cmpl      $4, %eax                                      #108.4
..LN261:
        jb        ..B3.50       # Prob 10%                      #108.4
..LN262:
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.19:                        # Preds ..B3.18
                                # Execution count [6.00e+01]
..LN263:
        movl      %eax, %edx                                    #108.4
..LN264:
        xorl      %r10d, %r10d                                  #108.4
..LN265:
        andl      $-4, %edx                                     #108.4
..LN266:
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B3.20:                        # Preds ..B3.20 ..B3.19
                                # Execution count [1.08e+04]
..L76:
                # optimization report
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 1.974609
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.500000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN267:
        addl      $4, %r10d                                     #108.4
..LN268:
	.loc    1  109  is_stmt 1
        movups    %xmm0, (%r8,%rsi,4)                           #109.5
..LN269:
	.loc    1  108  is_stmt 1
        addq      $4, %rsi                                      #108.4
..LN270:
        cmpl      %edx, %r10d                                   #108.4
..LN271:
        jb        ..B3.20       # Prob 99%                      #108.4
..LN272:
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B3.22:                        # Preds ..B3.20 ..B3.50 ..B3.49
                                # Execution count [6.00e+01]
..LN273:
        addl      %edx, %ecx                                    #108.4
..LN274:
        movslq    %ecx, %rcx                                    #108.4
..LN275:
        cmpl      %eax, %edx                                    #108.4
..LN276:
        jae       ..B3.26       # Prob 0%                       #108.4
..LN277:
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d
..B3.23:                        # Preds ..B3.22
                                # Execution count [6.00e+01]
..LN278:
	.loc    1  109  is_stmt 1
        movl      %r9d, %esi                                    #109.42
..LN279:
        pxor      %xmm1, %xmm1                                  #109.42
..LN280:
        imull     %r9d, %esi                                    #109.42
..LN281:
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #109.42
..LN282:
        cvtsi2ss  %esi, %xmm1                                   #109.42
..LN283:
        divss     %xmm1, %xmm0                                  #109.42
..LN284:
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B3.24:                        # Preds ..B3.24 ..B3.23
                                # Execution count [1.08e+04]
..L77:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 1.974609
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.500000
..LN285:
	.loc    1  108  is_stmt 1
        incl      %edx                                          #108.4
..LN286:
	.loc    1  109  is_stmt 1
        movss     %xmm0, (%r8,%rcx,4)                           #109.5
..LN287:
	.loc    1  108  is_stmt 1
        incq      %rcx                                          #108.4
..LN288:
        cmpl      %eax, %edx                                    #108.4
..LN289:
        jb        ..B3.24       # Prob 99%                      #108.4
..LN290:
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B3.26:                        # Preds ..B3.24 ..B3.17 ..B3.22
                                # Execution count [6.00e+01]
..LN291:
	.loc    1  107  is_stmt 1
        cmpl      $180, %r9d                                    #107.3
..LN292:
        jb        ..B3.9        # Prob 99%                      #107.3
..LN293:
        jmp       ..B3.48       # Prob 100%                     #107.3
..LN294:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B3.28:                        # Preds ..B3.1
                                # Execution count [3.34e-01]
..LN295:
	.loc    1  101  is_stmt 1
        xorl      %r8d, %r8d                                    #101.3
..LN296:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B3.29:                        # Preds ..B3.46 ..B3.28
                                # Execution count [6.00e+01]
..L78:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN297:
	.loc    1  102  is_stmt 1
        movq      %rdi, %rdx                                    #102.4
..LN298:
        andq      $15, %rdx                                     #102.4
..LN299:
        testl     %edx, %edx                                    #102.4
..LN300:
        je        ..B3.34       # Prob 50%                      #102.4
..LN301:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B3.30:                        # Preds ..B3.29
                                # Execution count [6.00e+01]
..LN302:
        testb     $3, %dl                                       #102.4
..LN303:
        jne       ..B3.51       # Prob 10%                      #102.4
..LN304:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B3.31:                        # Preds ..B3.30
                                # Execution count [6.00e+01]
..LN305:
	.loc    1  103  is_stmt 1
        pxor      %xmm1, %xmm1                                  #103.33
..LN306:
        lea       1(%r8), %esi                                  #103.33
..LN307:
        cvtsi2ss  %esi, %xmm1                                   #103.33
..LN308:
	.loc    1  102  is_stmt 1
        negl      %edx                                          #102.4
..LN309:
        xorl      %ecx, %ecx                                    #102.4
..LN310:
        addl      $16, %edx                                     #102.4
..LN311:
        shrl      $2, %edx                                      #102.4
..LN312:
	.loc    1  103  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
..LN313:
	.loc    1  102  is_stmt 1
        movl      %edx, %eax                                    #102.4
..LN314:
	.loc    1  103  is_stmt 1
        divss     %xmm1, %xmm0                                  #103.33
..LN315:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.32:                        # Preds ..B3.32 ..B3.31
                                # Execution count [1.08e+04]
..L79:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN316:
	.loc    1  102  is_stmt 1
..LN317:
	.loc    1  103  is_stmt 1
        movss     %xmm0, (%rdi,%rcx,4)                          #103.5
..LN318:
	.loc    1  102  is_stmt 1
        incq      %rcx                                          #102.4
..LN319:
        cmpq      %rax, %rcx                                    #102.4
..LN320:
        jb        ..B3.32       # Prob 99%                      #102.4
..LN321:
        jmp       ..B3.35       # Prob 100%                     #102.4
..LN322:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.34:                        # Preds ..B3.29
                                # Execution count [3.00e+01]
..LN323:
	.loc    1  103  is_stmt 1
        pxor      %xmm1, %xmm1                                  #103.33
..LN324:
        lea       1(%r8), %ecx                                  #103.33
..LN325:
        cvtsi2ss  %ecx, %xmm1                                   #103.33
..LN326:
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
..LN327:
	.loc    1  102  is_stmt 1
        xorl      %eax, %eax                                    #102.4
..LN328:
	.loc    1  103  is_stmt 1
        divss     %xmm1, %xmm0                                  #103.33
..LN329:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.35:                        # Preds ..B3.32 ..B3.34
                                # Execution count [6.00e+01]
..LN330:
	.loc    1  102  is_stmt 1
        negl      %edx                                          #102.4
..LN331:
        lea       (%rdi,%rax,4), %r9                            #102.4
..LN332:
        addl      $4, %edx                                      #102.4
..LN333:
        andl      $7, %edx                                      #102.4
..LN334:
        negl      %edx                                          #102.4
..LN335:
	.loc    1  103  is_stmt 1
        shufps    $0, %xmm0, %xmm0                              #103.33
..LN336:
	.loc    1  102  is_stmt 1
        lea       180(%rdx), %ecx                               #102.4
..LN337:
        movl      %ecx, %esi                                    #102.4
..LN338:
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B3.36:                        # Preds ..B3.36 ..B3.35
                                # Execution count [1.08e+04]
..L80:
                # optimization report
                # LOOP WAS UNROLLED BY 2
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 20.750000
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.250000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN339:
        addq      $8, %rax                                      #102.4
..LN340:
	.loc    1  103  is_stmt 1
        movups    %xmm0, (%r9)                                  #103.5
..LN341:
        movups    %xmm0, 16(%r9)                                #103.5
..LN342:
	.loc    1  102  is_stmt 1
        addq      $32, %r9                                      #102.4
..LN343:
        cmpq      %rsi, %rax                                    #102.4
..LN344:
        jb        ..B3.36       # Prob 99%                      #102.4
..LN345:
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B3.37:                        # Preds ..B3.36
                                # Execution count [6.00e+01]
..LN346:
        addl      $181, %edx                                    #102.4
..LN347:
        cmpl      $180, %edx                                    #102.4
..LN348:
        ja        ..B3.46       # Prob 50%                      #102.4
..LN349:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d xmm0
..B3.38:                        # Preds ..B3.37
                                # Execution count [6.00e+01]
..LN350:
        movl      %ecx, %edx                                    #102.4
..LN351:
        negl      %edx                                          #102.4
..LN352:
        addl      $180, %edx                                    #102.4
..LN353:
        cmpl      $4, %edx                                      #102.4
..LN354:
        jb        ..B3.52       # Prob 10%                      #102.4
..LN355:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx r8d xmm0
..B3.39:                        # Preds ..B3.38
                                # Execution count [6.00e+01]
..LN356:
        movl      %edx, %eax                                    #102.4
..LN357:
        xorl      %r9d, %r9d                                    #102.4
..LN358:
        andl      $-4, %eax                                     #102.4
..LN359:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B3.40:                        # Preds ..B3.40 ..B3.39
                                # Execution count [1.08e+04]
..L81:
                # optimization report
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 1.955078
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.500000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN360:
        addl      $4, %r9d                                      #102.4
..LN361:
	.loc    1  103  is_stmt 1
        movups    %xmm0, (%rdi,%rsi,4)                          #103.5
..LN362:
	.loc    1  102  is_stmt 1
        addq      $4, %rsi                                      #102.4
..LN363:
        cmpl      %eax, %r9d                                    #102.4
..LN364:
        jb        ..B3.40       # Prob 99%                      #102.4
..LN365:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B3.42:                        # Preds ..B3.40 ..B3.52 ..B3.51
                                # Execution count [6.00e+01]
..LN366:
        addl      %eax, %ecx                                    #102.4
..LN367:
        movslq    %ecx, %rcx                                    #102.4
..LN368:
        cmpl      %edx, %eax                                    #102.4
..LN369:
        jae       ..B3.46       # Prob 0%                       #102.4
..LN370:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d
..B3.43:                        # Preds ..B3.42
                                # Execution count [6.00e+01]
..LN371:
	.loc    1  103  is_stmt 1
        pxor      %xmm1, %xmm1                                  #103.33
..LN372:
        lea       1(%r8), %esi                                  #103.33
..LN373:
        cvtsi2ss  %esi, %xmm1                                   #103.33
..LN374:
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #103.33
..LN375:
        divss     %xmm1, %xmm0                                  #103.33
..LN376:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B3.44:                        # Preds ..B3.44 ..B3.43
                                # Execution count [1.08e+04]
..L82:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 1.955078
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.500000
..LN377:
	.loc    1  102  is_stmt 1
        incl      %eax                                          #102.4
..LN378:
	.loc    1  103  is_stmt 1
        movss     %xmm0, (%rdi,%rcx,4)                          #103.5
..LN379:
	.loc    1  102  is_stmt 1
        incq      %rcx                                          #102.4
..LN380:
        cmpl      %edx, %eax                                    #102.4
..LN381:
        jb        ..B3.44       # Prob 99%                      #102.4
..LN382:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B3.46:                        # Preds ..B3.44 ..B3.42 ..B3.37
                                # Execution count [6.00e+01]
..LN383:
	.loc    1  101  is_stmt 1
        incl      %r8d                                          #101.3
..LN384:
        addq      $720, %rdi                                    #101.3
..LN385:
        cmpl      $180, %r8d                                    #101.3
..LN386:
        jb        ..B3.29       # Prob 99%                      #101.3
..LN387:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B3.48:                        # Preds ..B3.46 ..B3.26 ..B3.6
                                # Execution count [1.00e+00]
..LN388:
	.loc    1  119  is_stmt 1
        xorl      %eax, %eax                                    #119.9
..LN389:
	.loc    1  119  epilogue_begin  is_stmt 1
        ret                                                     #119.9
..LN390:
                                # LOE
..B3.49:                        # Preds ..B3.10
                                # Execution count [6.00e+00]: Infreq
..LN391:
	.loc    1  108  is_stmt 1
        xorl      %ecx, %ecx                                    #108.4
..LN392:
        movl      $180, %eax                                    #108.4
..LN393:
        xorl      %edx, %edx                                    #108.4
..LN394:
        jmp       ..B3.22       # Prob 100%                     #108.4
..LN395:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B3.50:                        # Preds ..B3.18
                                # Execution count [6.00e+00]: Infreq
..LN396:
        xorl      %edx, %edx                                    #108.4
..LN397:
        jmp       ..B3.22       # Prob 100%                     #108.4
..LN398:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B3.51:                        # Preds ..B3.30
                                # Execution count [6.00e+00]: Infreq
..LN399:
	.loc    1  102  is_stmt 1
        xorl      %ecx, %ecx                                    #102.4
..LN400:
        movl      $180, %edx                                    #102.4
..LN401:
        xorl      %eax, %eax                                    #102.4
..LN402:
        jmp       ..B3.42       # Prob 100%                     #102.4
..LN403:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
..B3.52:                        # Preds ..B3.38
                                # Execution count [6.00e+00]: Infreq
..LN404:
        xorl      %eax, %eax                                    #102.4
..LN405:
        jmp       ..B3.42       # Prob 100%                     #102.4
        .align    16,0x90
..LN406:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
..LN407:
	.cfi_endproc
# mark_end;
	.type	set2d,@function
	.size	set2d,.-set2d
..LNset2d.408:
.LNset2d:
	.data
# -- End  set2d
	.text
.L_2__routine_start_s242_3:
# -- Begin  s242
	.text
# mark_begin;
       .align    16,0x90
	.globl s242
# --- s242(float, float)
s242:
# parameter 1(s1): %xmm0
# parameter 2(s2): %xmm1
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s242.88:
..L89:
                                                         #232.1
..LN409:
	.loc    1  232  is_stmt 1
        pushq     %r13                                          #232.1
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
..LN410:
        pushq     %rbx                                          #232.1
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
..LN411:
        subq      $360, %rsp                                    #232.1
	.cfi_def_cfa_offset 384
..LN412:
	.loc    1  239  prologue_end  is_stmt 1
        lea       .L_2__STRING.3(%rip), %rdi                    #239.2
..LN413:
	.loc    1  232  is_stmt 1
        movss     %xmm1, 48(%rsp)                               #232.1[spill]
..LN414:
        movss     %xmm0, 40(%rsp)                               #232.1[spill]
..___tag_value_s242.96:
..LN415:
	.loc    1  239  is_stmt 1
#       init(char *)
        call      init@PLT                                      #239.2
..___tag_value_s242.97:
..LN416:
                                # LOE rbp r12 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [1.00e+00]
..LN417:
	.loc    1  240  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #240.12
..LN418:
                                # LOE rax rbp r12 r14 r15
..B4.35:                        # Preds ..B4.2
                                # Execution count [1.00e+00]
..LN419:
        movq      %rax, (%rsp)                                  #240.12[spill]
..LN420:
                                # LOE rbp r12 r14 r15
..B4.3:                         # Preds ..B4.35
                                # Execution count [0.00e+00]
..LN421:
	.loc    1  244  is_stmt 1
        movss     40(%rsp), %xmm0                               #244.22[spill]
..LN422:
	.loc    1  242  is_stmt 1
        xorl      %eax, %eax                                    #242.2
..LN423:
	.loc    1  246  is_stmt 1
        movq      e@GOTPCREL(%rip), %r10                        #246.3
..LN424:
        movq      aa@GOTPCREL(%rip), %r9                        #246.3
..LN425:
        movq      cc@GOTPCREL(%rip), %r8                        #246.3
..LN426:
	.loc    1  243  is_stmt 1
        movq      b@GOTPCREL(%rip), %rsi                        #243.3
..LN427:
        movq      c@GOTPCREL(%rip), %rdx                        #243.3
..LN428:
        movq      d@GOTPCREL(%rip), %rcx                        #243.3
..LN429:
        movq      a@GOTPCREL(%rip), %r13                        #243.3
..LN430:
	.loc    1  246  is_stmt 1
        movq      bb@GOTPCREL(%rip), %rbx                       #246.3
..LN431:
        movq      %r8, 72(%rsp)                                 #246.3[spill]
..LN432:
        movq      %r9, 64(%rsp)                                 #246.3[spill]
..LN433:
        movq      %r10, 56(%rsp)                                #246.3[spill]
..LN434:
        movq      %r12, 8(%rsp)                                 #246.3[spill]
	.cfi_offset 12, -376
..LN435:
        movq      %rcx, %r12                                    #246.3
..LN436:
        movq      %r14, 16(%rsp)                                #246.3[spill]
	.cfi_offset 14, -368
..LN437:
        movq      %rdx, %r14                                    #246.3
..LN438:
        movq      %r15, 24(%rsp)                                #246.3[spill]
	.cfi_offset 15, -360
..LN439:
        movq      %rsi, %r15                                    #246.3
..LN440:
        movq      %rbp, 32(%rsp)                                #246.3[spill]
	.cfi_offset 6, -352
..LN441:
        movl      %eax, %ebp                                    #246.3
..LN442:
	.loc    1  244  is_stmt 1
        addss     48(%rsp), %xmm0                               #244.22[spill]
..LN443:
        movss     %xmm0, 40(%rsp)                               #244.22[spill]
..LN444:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.4:                         # Preds ..B4.25 ..B4.3
                                # Execution count [0.00e+00]
..L102:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN445:
	.loc    1  242  is_stmt 1
..LN446:
	.loc    1  243  is_stmt 1
        xorl      %r11d, %r11d                                  #243.3
..LN447:
        movl      $31999, %r8d                                  #243.3
..LN448:
	.loc    1  244  is_stmt 1
        movss     40(%rsp), %xmm0                               #244.22[spill]
..LN449:
	.loc    1  243  is_stmt 1
        movss     40(%rsp), %xmm1                               #243.3[spill]
..LN450:
	.loc    1  244  is_stmt 1
        shufps    $0, %xmm0, %xmm0                              #244.22
..LN451:
	.loc    1  243  is_stmt 1
        movq      %rbx, 80(%rsp)                                #243.3[spill]
..LN452:
        movl      %ebp, 48(%rsp)                                #243.3[spill]
..LN453:
        xorl      %ebp, %ebp                                    #243.3
..LN454:
                                # LOE r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1
..B4.5:                         # Preds ..B4.23 ..B4.4
                                # Execution count [1.99e+05]
..L103:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # %s was not vectorized: inner loop was already vectorized
..LN455:
        movl      %r11d, %eax                                   #243.3
..LN456:
        shll      $6, %eax                                      #243.3
..LN457:
        movl      %eax, %r9d                                    #243.3
..LN458:
        negl      %r9d                                          #243.3
..LN459:
        lea       64(%rax), %r10d                               #243.3
..LN460:
        cmpl      $31999, %r10d                                 #243.3
..LN461:
        cmova     %r8d, %r10d                                   #243.3
..LN462:
        lea       (%r9,%r10), %ebx                              #243.3
..LN463:
        cmpl      $11, %ebx                                     #243.3
..LN464:
        jb        ..B4.31       # Prob 10%                      #243.3
..LN465:
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r10d r11d xmm0 xmm1
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.99e+05]
..LN466:
        xorl      %edi, %edi                                    #243.3
..LN467:
        lea       5(%r9,%r10), %r9d                             #243.3
..LN468:
	.loc    1  244  is_stmt 1
        movl      %r11d, %r10d                                  #244.32
..LN469:
	.loc    1  243  is_stmt 1
        andl      $7, %r9d                                      #243.3
..LN470:
	.loc    1  244  is_stmt 1
        movq      %r10, %rdx                                    #244.46
..LN471:
	.loc    1  243  is_stmt 1
        negl      %r9d                                          #243.3
..LN472:
	.loc    1  244  is_stmt 1
        shlq      $8, %rdx                                      #244.46
..LN473:
	.loc    1  243  is_stmt 1
        addl      %ebx, %r9d                                    #243.3
..LN474:
	.loc    1  244  is_stmt 1
        lea       (%r15,%rdx), %rsi                             #244.32
..LN475:
        lea       (%r14,%rdx), %rcx                             #244.39
..LN476:
        addq      %r12, %rdx                                    #244.46
..LN477:
                                # LOE rdx rcx rsi rdi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.7:                         # Preds ..B4.7 ..B4.6
                                # Execution count [6.35e+09]
..L104:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # LOOP WAS STRIPMINED BY 64
                # PEELED LOOP FOR VECTORIZATION
..LN478:
	.loc    1  243  is_stmt 1
..LN479:
	.loc    1  244  is_stmt 1
        movss     4(%rsi,%rdi,4), %xmm2                         #244.32
..LN480:
        addss     %xmm1, %xmm2                                  #244.32
..LN481:
        addss     4(%rcx,%rdi,4), %xmm2                         #244.39
..LN482:
        addss     4(%rdx,%rdi,4), %xmm2                         #244.46
..LN483:
        movss     %xmm2, 96(%rsp,%rdi,4)                        #244.4
..LN484:
	.loc    1  243  is_stmt 1
        incq      %rdi                                          #243.3
..LN485:
        cmpq      $3, %rdi                                      #243.3
..LN486:
        jb        ..B4.7        # Prob 99%                      #243.3
..LN487:
                                # LOE rdx rcx rsi rdi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.8:                         # Preds ..B4.7
                                # Execution count [1.99e+05]
..LN488:
	.loc    1  244  is_stmt 1
        shlq      $6, %r10                                      #244.32
..LN489:
	.loc    1  243  is_stmt 1
        movl      $3, %ecx                                      #243.3
..LN490:
        movslq    %r9d, %rdx                                    #243.3
        .align    16,0x90
..LN491:
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.9:                         # Preds ..B4.9 ..B4.8
                                # Execution count [6.35e+09]
..L105:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # LOOP WAS UNROLLED BY 2
                # LOOP WAS STRIPMINED BY 64
                # LOOP WAS VECTORIZED
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 2.875000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.140625
                # MAIN VECTOR TYPE: 32-bits floating point
..LN492:
        lea       1(%rcx,%r10), %rsi                            #243.3
..LN493:
	.loc    1  244  is_stmt 1
        movups    (%r15,%rsi,4), %xmm2                          #244.32
..LN494:
	.loc    1  243  is_stmt 1
        lea       5(%rcx,%r10), %rdi                            #243.3
..LN495:
	.loc    1  244  is_stmt 1
        movups    (%r15,%rdi,4), %xmm3                          #244.32
..LN496:
        addps     %xmm0, %xmm2                                  #244.32
..LN497:
        addps     %xmm0, %xmm3                                  #244.32
..LN498:
        addps     (%r14,%rsi,4), %xmm2                          #244.39
..LN499:
        addps     (%r14,%rdi,4), %xmm3                          #244.39
..LN500:
        addps     (%r12,%rsi,4), %xmm2                          #244.46
..LN501:
        addps     (%r12,%rdi,4), %xmm3                          #244.46
..LN502:
        movups    %xmm2, 96(%rsp,%rcx,4)                        #244.4
..LN503:
        movups    %xmm3, 112(%rsp,%rcx,4)                       #244.4
..LN504:
	.loc    1  243  is_stmt 1
        addq      $8, %rcx                                      #243.3
..LN505:
        cmpq      %rdx, %rcx                                    #243.3
..LN506:
        jb        ..B4.9        # Prob 99%                      #243.3
..LN507:
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.10:                        # Preds ..B4.9
                                # Execution count [1.79e+05]
..LN508:
        lea       1(%r9), %r10d                                 #243.3
..LN509:
        cmpl      %ebx, %r10d                                   #243.3
..LN510:
        ja        ..B4.20       # Prob 50%                      #243.3
..LN511:
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.11:                        # Preds ..B4.10
                                # Execution count [1.89e+05]
..LN512:
        movl      %ebx, %esi                                    #243.3
..LN513:
        subl      %r9d, %esi                                    #243.3
..LN514:
        cmpl      $4, %esi                                      #243.3
..LN515:
        jb        ..B4.30       # Prob 10%                      #243.3
..LN516:
                                # LOE r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.12:                        # Preds ..B4.11
                                # Execution count [1.99e+05]
..LN517:
        movl      %esi, %r10d                                   #243.3
..LN518:
	.loc    1  244  is_stmt 1
        lea       (%r9,%rax), %edx                              #244.32
..LN519:
	.loc    1  243  is_stmt 1
        andl      $-4, %r10d                                    #243.3
..LN520:
        xorl      %ecx, %ecx                                    #243.3
..LN521:
	.loc    1  244  is_stmt 1
        movslq    %edx, %rdx                                    #244.32
..LN522:
	.loc    1  243  is_stmt 1
        movslq    %r10d, %r10                                   #243.3
..LN523:
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.13:                        # Preds ..B4.13 ..B4.12
                                # Execution count [6.35e+09]
..L106:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # LOOP WAS STRIPMINED BY 64
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 1.296875
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.625000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN524:
        lea       1(%rcx,%rdx), %rdi                            #243.3
..LN525:
	.loc    1  244  is_stmt 1
        movups    (%r15,%rdi,4), %xmm2                          #244.32
..LN526:
        addps     %xmm0, %xmm2                                  #244.32
..LN527:
        addps     (%r14,%rdi,4), %xmm2                          #244.39
..LN528:
        addps     (%r12,%rdi,4), %xmm2                          #244.46
..LN529:
        movl      %ecx, %edi                                    #244.4
..LN530:
        addl      %r9d, %edi                                    #244.4
..LN531:
	.loc    1  243  is_stmt 1
        addq      $4, %rcx                                      #243.3
..LN532:
	.loc    1  244  is_stmt 1
        movslq    %edi, %rdi                                    #244.4
..LN533:
        movups    %xmm2, 96(%rsp,%rdi,4)                        #244.4
..LN534:
	.loc    1  243  is_stmt 1
        cmpq      %r10, %rcx                                    #243.3
..LN535:
        jb        ..B4.13       # Prob 99%                      #243.3
..LN536:
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.15:                        # Preds ..B4.13 ..B4.30 ..B4.32
                                # Execution count [1.99e+05]
..LN537:
        movslq    %esi, %rsi                                    #243.3
..LN538:
        cmpq      %rsi, %r10                                    #243.3
..LN539:
        jae       ..B4.19       # Prob 0%                       #243.3
..LN540:
                                # LOE rsi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.16:                        # Preds ..B4.15
                                # Execution count [1.99e+05]
..LN541:
	.loc    1  244  is_stmt 1
        addl      %r9d, %eax                                    #244.46
..LN542:
        movslq    %eax, %rax                                    #244.32
..LN543:
        lea       (%r12,%rax,4), %rcx                           #244.46
..LN544:
        lea       (%r14,%rax,4), %rdx                           #244.39
..LN545:
        lea       (%r15,%rax,4), %rax                           #244.32
..LN546:
                                # LOE rax rdx rcx rsi r10 r12 r13 r14 r15 ebx ebp r8d r9d r11d xmm0 xmm1
..B4.17:                        # Preds ..B4.17 ..B4.16
                                # Execution count [6.35e+09]
..L107:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # LOOP WAS STRIPMINED BY 64
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 1.296875
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.625000
..LN547:
	.loc    1  243  is_stmt 1
..LN548:
	.loc    1  244  is_stmt 1
        movss     4(%rax,%r10,4), %xmm2                         #244.32
..LN549:
        movl      %r10d, %edi                                   #244.4
..LN550:
        addl      %r9d, %edi                                    #244.4
..LN551:
        addss     %xmm1, %xmm2                                  #244.32
..LN552:
        movslq    %edi, %rdi                                    #244.4
..LN553:
        addss     4(%rdx,%r10,4), %xmm2                         #244.39
..LN554:
        addss     4(%rcx,%r10,4), %xmm2                         #244.46
..LN555:
	.loc    1  243  is_stmt 1
        incq      %r10                                          #243.3
..LN556:
	.loc    1  244  is_stmt 1
        movss     %xmm2, 96(%rsp,%rdi,4)                        #244.4
..LN557:
	.loc    1  243  is_stmt 1
        cmpq      %rsi, %r10                                    #243.3
..LN558:
        jb        ..B4.17       # Prob 99%                      #243.3
..LN559:
                                # LOE rax rdx rcx rsi r10 r12 r13 r14 r15 ebx ebp r8d r9d r11d xmm0 xmm1
..B4.19:                        # Preds ..B4.17 ..B4.15 ..B4.31
                                # Execution count [1.09e+05]
..LN560:
        testl     %ebx, %ebx                                    #243.3
..LN561:
        je        ..B4.23       # Prob 0%                       #243.3
..LN562:
                                # LOE r12 r13 r14 r15 ebx ebp r8d r11d xmm0 xmm1
..B4.20:                        # Preds ..B4.19 ..B4.10
                                # Execution count [1.99e+05]
..LN563:
	.loc    1  244  is_stmt 1
        movl      %r11d, %eax                                   #244.4
..LN564:
	.loc    1  243  is_stmt 1
        xorl      %r9d, %r9d                                    #243.3
..LN565:
	.loc    1  244  is_stmt 1
        shlq      $8, %rax                                      #244.4
..LN566:
	.loc    1  243  is_stmt 1
        movslq    %ebx, %rbx                                    #243.3
..LN567:
	.loc    1  244  is_stmt 1
        movss     (%r13,%rax), %xmm2                            #244.4
..LN568:
        addq      %r13, %rax                                    #244.4
..LN569:
                                # LOE rax rbx r9 r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1 xmm2
..B4.21:                        # Preds ..B4.21 ..B4.20
                                # Execution count [6.35e+09]
..L108:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 2
                # LOOP WAS STRIPMINED BY 64
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN570:
	.loc    1  243  is_stmt 1
        addss     96(%rsp,%r9,4), %xmm2                         #243.3
..LN571:
	.loc    1  244  is_stmt 1
        movss     %xmm2, 4(%rax,%r9,4)                          #244.4
..LN572:
	.loc    1  243  is_stmt 1
        incq      %r9                                           #243.3
..LN573:
        cmpq      %rbx, %r9                                     #243.3
..LN574:
        jb        ..B4.21       # Prob 99%                      #243.3
..LN575:
                                # LOE rax rbx r9 r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1 xmm2
..B4.23:                        # Preds ..B4.21 ..B4.19
                                # Execution count [6.35e+09]
..LN576:
        incl      %r11d                                         #243.3
..LN577:
        cmpl      $500, %r11d                                   #243.3
..LN578:
        jb        ..B4.5        # Prob 99%                      #243.3
..LN579:
                                # LOE r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1
..B4.24:                        # Preds ..B4.23
                                # Execution count [1.99e+05]
..LN580:
        movq      80(%rsp), %rbx                                #[spill]
..LN581:
	.loc    1  246  is_stmt 1
        movq      %r13, %rdi                                    #246.3
..LN582:
        movl      48(%rsp), %ebp                                #[spill]
..LN583:
        movq      %r15, %rsi                                    #246.3
..LN584:
        pushq     72(%rsp)                                      #246.3[spill]
	.cfi_def_cfa_offset 392
..LN585:
        pushq     %rbx                                          #246.3
	.cfi_def_cfa_offset 400
..LN586:
        movq      %r14, %rdx                                    #246.3
..LN587:
        movq      %r12, %rcx                                    #246.3
..LN588:
        pxor      %xmm0, %xmm0                                  #246.3
..LN589:
        movq      72(%rsp), %r8                                 #246.3[spill]
..LN590:
        movq      80(%rsp), %r9                                 #246.3[spill]
..___tag_value_s242.111:
..LN591:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #246.3
..___tag_value_s242.112:
..LN592:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.36:                        # Preds ..B4.24
                                # Execution count [1.99e+05]
..LN593:
        addq      $16, %rsp                                     #246.3
	.cfi_def_cfa_offset 384
..LN594:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.25:                        # Preds ..B4.36
                                # Execution count [1.99e+05]
..LN595:
	.loc    1  242  is_stmt 1
        incl      %ebp                                          #242.2
..LN596:
        cmpl      $200000, %ebp                                 #242.2
..LN597:
        jb        ..B4.4        # Prob 99%                      #242.2
..LN598:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.26:                        # Preds ..B4.25
                                # Execution count [1.00e+00]
..LN599:
        movq      8(%rsp), %r12                                 #[spill]
	.cfi_restore 12
..LN600:
        movq      16(%rsp), %r14                                #[spill]
	.cfi_restore 14
..LN601:
        movq      24(%rsp), %r15                                #[spill]
	.cfi_restore 15
..LN602:
        movq      32(%rsp), %rbp                                #[spill]
	.cfi_restore 6
..LN603:
	.loc    1  248  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #248.10
	.cfi_offset 6, -352
	.cfi_offset 12, -376
	.cfi_offset 14, -368
	.cfi_offset 15, -360
..LN604:
                                # LOE rax rbp r12 r14 r15
..B4.27:                        # Preds ..B4.26
                                # Execution count [1.00e+00]
..LN605:
	.loc    1  250  is_stmt 1
        subq      (%rsp), %rax                                  #250.2[spill]
..LN606:
        pxor      %xmm0, %xmm0                                  #250.2
..LN607:
        cvtsi2sdq %rax, %xmm0                                   #250.2
..LN608:
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #250.2
..LN609:
        lea       .L_2__STRING.5(%rip), %rdi                    #250.2
..LN610:
        movl      $1, %eax                                      #250.2
..___tag_value_s242.122:
..LN611:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #250.2
..___tag_value_s242.123:
..LN612:
                                # LOE rbp r12 r14 r15
..B4.28:                        # Preds ..B4.27
                                # Execution count [1.00e+00]
..LN613:
	.loc    1  251  is_stmt 1
        movl      $1, %edi                                      #251.2
..___tag_value_s242.124:
..LN614:
#       check(int)
        call      check@PLT                                     #251.2
..___tag_value_s242.125:
..LN615:
                                # LOE rbp r12 r14 r15
..B4.29:                        # Preds ..B4.28
                                # Execution count [1.00e+00]
..LN616:
	.loc    1  252  is_stmt 1
        xorl      %eax, %eax                                    #252.9
..LN617:
	.loc    1  252  epilogue_begin  is_stmt 1
        addq      $360, %rsp                                    #252.9
	.cfi_def_cfa_offset 24
	.cfi_restore 3
..LN618:
        popq      %rbx                                          #252.9
	.cfi_def_cfa_offset 16
	.cfi_restore 13
..LN619:
        popq      %r13                                          #252.9
	.cfi_def_cfa_offset 8
..LN620:
        ret                                                     #252.9
	.cfi_def_cfa_offset 384
	.cfi_offset 3, -24
	.cfi_offset 13, -16
..LN621:
                                # LOE
..B4.30:                        # Preds ..B4.11
                                # Execution count [1.99e+04]: Infreq
..LN622:
	.loc    1  243  is_stmt 1
        xorl      %r10d, %r10d                                  #243.3
..LN623:
        jmp       ..B4.15       # Prob 100%                     #243.3
..LN624:
                                # LOE r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.31:                        # Preds ..B4.5
                                # Execution count [1.99e+04]: Infreq
..LN625:
        movl      %ebp, %r9d                                    #243.3
..LN626:
        cmpl      $1, %ebx                                      #243.3
..LN627:
        jb        ..B4.19       # Prob 50%                      #243.3
..LN628:
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.32:                        # Preds ..B4.31
                                # Execution count [9.93e+03]: Infreq
..LN629:
        movl      %ebx, %esi                                    #243.3
..LN630:
        xorl      %r10d, %r10d                                  #243.3
..LN631:
        jmp       ..B4.15       # Prob 100%                     #243.3
        .align    16,0x90
..LN632:
                                # LOE r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..LN633:
	.cfi_endproc
# mark_end;
	.type	s242,@function
	.size	s242,.-s242
..LNs242.634:
.LNs242:
	.data
# -- End  s242
	.text
.L_2__routine_start_check_4:
# -- Begin  check
	.text
# mark_begin;
       .align    16,0x90
	.globl check
# --- check(int)
check:
# parameter 1(name): %edi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check.138:
..L139:
                                                        #122.21
..LN635:
	.loc    1  122  is_stmt 1
        pushq     %rbp                                          #122.21
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
..LN636:
        subq      $48, %rsp                                     #122.21
	.cfi_def_cfa_offset 64
..LN637:
        movl      %edi, %ebp                                    #122.21
..LN638:
	.loc    1  124  prologue_end  is_stmt 1
        pxor      %xmm6, %xmm6                                  #124.13
..LN639:
	.loc    1  129  is_stmt 1
        xorl      %r8d, %r8d                                    #129.2
..LN640:
	.loc    1  130  is_stmt 1
        movq      a@GOTPCREL(%rip), %rdi                        #130.11
..LN641:
	.loc    1  124  is_stmt 1
        movaps    %xmm6, %xmm2                                  #124.13
..LN642:
	.loc    1  131  is_stmt 1
        movq      b@GOTPCREL(%rip), %rsi                        #131.11
..LN643:
	.loc    1  125  is_stmt 1
        movaps    %xmm6, %xmm3                                  #125.13
..LN644:
	.loc    1  132  is_stmt 1
        movq      c@GOTPCREL(%rip), %rcx                        #132.11
..LN645:
	.loc    1  126  is_stmt 1
        movaps    %xmm6, %xmm4                                  #126.13
..LN646:
	.loc    1  133  is_stmt 1
        movq      d@GOTPCREL(%rip), %rdx                        #133.11
..LN647:
	.loc    1  127  is_stmt 1
        movaps    %xmm6, %xmm7                                  #127.13
..LN648:
	.loc    1  134  is_stmt 1
        movq      e@GOTPCREL(%rip), %rax                        #134.11
..LN649:
	.loc    1  128  is_stmt 1
        movaps    %xmm6, %xmm5                                  #128.13
..LN650:
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.2:                         # Preds ..B5.2 ..B5.1
                                # Execution count [3.20e+04]
..L144:
                # optimization report
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 3.837891
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 6.000000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN651:
	.loc    1  129  is_stmt 1
..LN652:
	.loc    1  130  is_stmt 1
        addps     (%rdi,%r8,4), %xmm2                           #130.3
..LN653:
	.loc    1  131  is_stmt 1
        addps     (%rsi,%r8,4), %xmm3                           #131.3
..LN654:
	.loc    1  132  is_stmt 1
        addps     (%rcx,%r8,4), %xmm4                           #132.3
..LN655:
	.loc    1  133  is_stmt 1
        addps     (%rdx,%r8,4), %xmm7                           #133.3
..LN656:
	.loc    1  134  is_stmt 1
        addps     (%rax,%r8,4), %xmm5                           #134.3
..LN657:
	.loc    1  129  is_stmt 1
        addq      $4, %r8                                       #129.2
..LN658:
        cmpq      $32000, %r8                                   #129.2
..LN659:
        jb        ..B5.2        # Prob 99%                      #129.2
..LN660:
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.3:                         # Preds ..B5.2
                                # Execution count [1.00e+00]
..LN661:
	.loc    1  128  is_stmt 1
        movaps    %xmm5, %xmm0                                  #128.13
..LN662:
	.loc    1  126  is_stmt 1
        movaps    %xmm4, %xmm8                                  #126.13
..LN663:
	.loc    1  125  is_stmt 1
        movaps    %xmm3, %xmm10                                 #125.13
..LN664:
	.loc    1  124  is_stmt 1
        movaps    %xmm2, %xmm12                                 #124.13
..LN665:
	.loc    1  128  is_stmt 1
        movhlps   %xmm5, %xmm0                                  #128.13
..LN666:
	.loc    1  139  is_stmt 1
        xorl      %r8d, %r8d                                    #139.2
..LN667:
	.loc    1  126  is_stmt 1
        movhlps   %xmm4, %xmm8                                  #126.13
..LN668:
	.loc    1  139  is_stmt 1
        movl      $4, %edi                                      #139.2
..LN669:
	.loc    1  125  is_stmt 1
        movhlps   %xmm3, %xmm10                                 #125.13
..LN670:
	.loc    1  128  is_stmt 1
        addps     %xmm0, %xmm5                                  #128.13
..LN671:
	.loc    1  126  is_stmt 1
        addps     %xmm8, %xmm4                                  #126.13
..LN672:
	.loc    1  125  is_stmt 1
        addps     %xmm10, %xmm3                                 #125.13
..LN673:
	.loc    1  124  is_stmt 1
        movhlps   %xmm2, %xmm12                                 #124.13
..LN674:
	.loc    1  128  is_stmt 1
        movaps    %xmm5, %xmm1                                  #128.13
..LN675:
	.loc    1  126  is_stmt 1
        movaps    %xmm4, %xmm9                                  #126.13
..LN676:
	.loc    1  125  is_stmt 1
        movaps    %xmm3, %xmm11                                 #125.13
..LN677:
	.loc    1  128  is_stmt 1
        shufps    $245, %xmm5, %xmm1                            #128.13
..LN678:
	.loc    1  137  is_stmt 1
        pxor      %xmm8, %xmm8                                  #137.14
..LN679:
	.loc    1  126  is_stmt 1
        shufps    $245, %xmm4, %xmm9                            #126.13
..LN680:
	.loc    1  147  is_stmt 1
        movaps    %xmm6, %xmm0                                  #147.17
..LN681:
	.loc    1  125  is_stmt 1
        shufps    $245, %xmm3, %xmm11                           #125.13
..LN682:
	.loc    1  124  is_stmt 1
        addps     %xmm12, %xmm2                                 #124.13
..LN683:
	.loc    1  128  is_stmt 1
        addss     %xmm1, %xmm5                                  #128.13
..LN684:
	.loc    1  126  is_stmt 1
        addss     %xmm9, %xmm4                                  #126.13
..LN685:
	.loc    1  125  is_stmt 1
        addss     %xmm11, %xmm3                                 #125.13
..LN686:
	.loc    1  124  is_stmt 1
        movaps    %xmm2, %xmm13                                 #124.13
..LN687:
	.loc    1  138  is_stmt 1
        movaps    %xmm6, %xmm1                                  #138.14
..LN688:
	.loc    1  124  is_stmt 1
        shufps    $245, %xmm2, %xmm13                           #124.13
..LN689:
	.loc    1  141  is_stmt 1
        movq      aa@GOTPCREL(%rip), %rsi                       #141.13
..LN690:
	.loc    1  124  is_stmt 1
        addss     %xmm13, %xmm2                                 #124.13
..LN691:
	.loc    1  142  is_stmt 1
        movq      bb@GOTPCREL(%rip), %rcx                       #142.13
..LN692:
	.loc    1  143  is_stmt 1
        movq      cc@GOTPCREL(%rip), %rdx                       #143.13
..LN693:
	.loc    1  149  is_stmt 1
        movq      array@GOTPCREL(%rip), %rax                    #149.15
..LN694:
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.4:                         # Preds ..B5.4 ..B5.3
                                # Execution count [3.24e+04]
..L145:
                # optimization report
                # LOOP WAS FUSED
                # 1 LOOPS WERE COLLAPSED TO FORM THIS LOOP
                # LOOP WAS UNROLLED BY 2
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 3.798828
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 3.000000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN695:
	.loc    1  139  is_stmt 1
..LN696:
	.loc    1  141  is_stmt 1
        addps     (%rsi,%r8,4), %xmm6                           #141.4
..LN697:
	.loc    1  142  is_stmt 1
        addps     (%rcx,%r8,4), %xmm8                           #142.4
..LN698:
	.loc    1  143  is_stmt 1
        addps     (%rdx,%r8,4), %xmm1                           #143.4
..LN699:
	.loc    1  149  is_stmt 1
        addps     (%rax,%r8,4), %xmm0                           #149.3
..LN700:
	.loc    1  141  is_stmt 1
        addps     16(%rsi,%r8,4), %xmm6                         #141.4
..LN701:
	.loc    1  142  is_stmt 1
        addps     16(%rcx,%r8,4), %xmm8                         #142.4
..LN702:
	.loc    1  143  is_stmt 1
        addps     16(%rdx,%r8,4), %xmm1                         #143.4
..LN703:
	.loc    1  149  is_stmt 1
        addps     (%rax,%rdi,4), %xmm0                          #149.3
..LN704:
	.loc    1  139  is_stmt 1
        addq      $8, %r8                                       #139.2
..LN705:
        addq      $8, %rdi                                      #139.2
..LN706:
        cmpq      $32400, %r8                                   #139.2
..LN707:
        jb        ..B5.4        # Prob 99%                      #139.2
..LN708:
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.5:                         # Preds ..B5.4
                                # Execution count [1.00e+00]
..LN709:
	.loc    1  138  is_stmt 1
        movaps    %xmm1, %xmm9                                  #138.14
..LN710:
	.loc    1  137  is_stmt 1
        movaps    %xmm8, %xmm11                                 #137.14
..LN711:
	.loc    1  136  is_stmt 1
        movaps    %xmm6, %xmm13                                 #136.14
..LN712:
	.loc    1  138  is_stmt 1
        movhlps   %xmm1, %xmm9                                  #138.14
..LN713:
	.loc    1  137  is_stmt 1
        movhlps   %xmm8, %xmm11                                 #137.14
..LN714:
	.loc    1  138  is_stmt 1
        addps     %xmm9, %xmm1                                  #138.14
..LN715:
	.loc    1  137  is_stmt 1
        addps     %xmm11, %xmm8                                 #137.14
..LN716:
	.loc    1  136  is_stmt 1
        movhlps   %xmm6, %xmm13                                 #136.14
..LN717:
	.loc    1  138  is_stmt 1
        movaps    %xmm1, %xmm10                                 #138.14
..LN718:
	.loc    1  137  is_stmt 1
        movaps    %xmm8, %xmm12                                 #137.14
..LN719:
	.loc    1  136  is_stmt 1
        addps     %xmm13, %xmm6                                 #136.14
..LN720:
        movaps    %xmm6, %xmm14                                 #136.14
..LN721:
	.loc    1  138  is_stmt 1
        shufps    $245, %xmm1, %xmm10                           #138.14
..LN722:
	.loc    1  137  is_stmt 1
        shufps    $245, %xmm8, %xmm12                           #137.14
..LN723:
	.loc    1  138  is_stmt 1
        addss     %xmm10, %xmm1                                 #138.14
..LN724:
	.loc    1  137  is_stmt 1
        addss     %xmm12, %xmm8                                 #137.14
..LN725:
	.loc    1  136  is_stmt 1
        shufps    $245, %xmm6, %xmm14                           #136.14
..LN726:
        addss     %xmm14, %xmm6                                 #136.14
..LN727:
	.loc    1  152  is_stmt 1
        cmpl      $1, %ebp                                      #152.14
..LN728:
        je        ..B5.41       # Prob 5%                       #152.14
..LN729:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.6:                         # Preds ..B5.5
                                # Execution count [9.49e-01]
..LN730:
	.loc    1  153  is_stmt 1
        cmpl      $2, %ebp                                      #153.14
..LN731:
        je        ..B5.40       # Prob 5%                       #153.14
..LN732:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.7:                         # Preds ..B5.6
                                # Execution count [8.98e-01]
..LN733:
	.loc    1  154  is_stmt 1
        cmpl      $3, %ebp                                      #154.14
..LN734:
        je        ..B5.39       # Prob 5%                       #154.14
..LN735:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.8:                         # Preds ..B5.7
                                # Execution count [8.47e-01]
..LN736:
	.loc    1  155  is_stmt 1
        cmpl      $4, %ebp                                      #155.14
..LN737:
        je        ..B5.38       # Prob 5%                       #155.14
..LN738:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.9:                         # Preds ..B5.8
                                # Execution count [7.96e-01]
..LN739:
	.loc    1  156  is_stmt 1
        cmpl      $5, %ebp                                      #156.14
..LN740:
        je        ..B5.37       # Prob 5%                       #156.14
..LN741:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.10:                        # Preds ..B5.9
                                # Execution count [7.45e-01]
..LN742:
	.loc    1  157  is_stmt 1
        cmpl      $11, %ebp                                     #157.14
..LN743:
        je        ..B5.36       # Prob 5%                       #157.14
..LN744:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.11:                        # Preds ..B5.10
                                # Execution count [6.94e-01]
..LN745:
	.loc    1  158  is_stmt 1
        cmpl      $22, %ebp                                     #158.14
..LN746:
        je        ..B5.35       # Prob 5%                       #158.14
..LN747:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.12:                        # Preds ..B5.11
                                # Execution count [6.43e-01]
..LN748:
	.loc    1  159  is_stmt 1
        cmpl      $33, %ebp                                     #159.14
..LN749:
        je        ..B5.34       # Prob 5%                       #159.14
..LN750:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.13:                        # Preds ..B5.12
                                # Execution count [5.92e-01]
..LN751:
	.loc    1  160  is_stmt 1
        testl     %ebp, %ebp                                    #160.14
..LN752:
        je        ..B5.23       # Prob 22%                      #160.14
..LN753:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.14:                        # Preds ..B5.13
                                # Execution count [3.72e-01]
..LN754:
	.loc    1  161  is_stmt 1
        cmpl      $12, %ebp                                     #161.14
..LN755:
        je        ..B5.33       # Prob 5%                       #161.14
..LN756:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.15:                        # Preds ..B5.14
                                # Execution count [3.21e-01]
..LN757:
	.loc    1  162  is_stmt 1
        cmpl      $25, %ebp                                     #162.14
..LN758:
        je        ..B5.32       # Prob 5%                       #162.14
..LN759:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.16:                        # Preds ..B5.15
                                # Execution count [2.70e-01]
..LN760:
	.loc    1  163  is_stmt 1
        cmpl      $13, %ebp                                     #163.14
..LN761:
        je        ..B5.31       # Prob 5%                       #163.14
..LN762:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B5.17:                        # Preds ..B5.16
                                # Execution count [2.19e-01]
..LN763:
	.loc    1  164  is_stmt 1
        cmpl      $123, %ebp                                    #164.14
..LN764:
        je        ..B5.30       # Prob 5%                       #164.14
..LN765:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B5.18:                        # Preds ..B5.44 ..B5.17
                                # Execution count [2.19e-01]
..LN766:
	.loc    1  165  is_stmt 1
        cmpl      $1122, %ebp                                   #165.14
..LN767:
        je        ..B5.29       # Prob 5%                       #165.14
..LN768:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.19:                        # Preds ..B5.45 ..B5.18
                                # Execution count [2.19e-01]
..LN769:
	.loc    1  166  is_stmt 1
        cmpl      $112233, %ebp                                 #166.14
..LN770:
        je        ..B5.28       # Prob 5%                       #166.14
..LN771:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.20:                        # Preds ..B5.46 ..B5.19
                                # Execution count [2.19e-01]
..LN772:
	.loc    1  167  is_stmt 1
        cmpl      $111, %ebp                                    #167.14
..LN773:
        je        ..B5.27       # Prob 5%                       #167.14
..LN774:
                                # LOE rbx r12 r13 r14 r15 ebp xmm2 xmm3 xmm6
..B5.21:                        # Preds ..B5.47 ..B5.20
                                # Execution count [2.19e-01]
..LN775:
	.loc    1  168  is_stmt 1
        cmpl      $-1, %ebp                                     #168.14
..LN776:
        je        ..B5.26       # Prob 5%                       #168.14
..LN777:
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.22:                        # Preds ..B5.48 ..B5.21
                                # Execution count [2.19e-01]
..LN778:
	.loc    1  169  is_stmt 1
        cmpl      $-12, %ebp                                    #169.14
..LN779:
        je        ..B5.25       # Prob 5%                       #169.14
..LN780:
        jmp       ..B5.24       # Prob 100%                     #169.14
..LN781:
                                # LOE rbx r12 r13 r14 r15 xmm3
..B5.23:                        # Preds ..B5.13
                                # Execution count [2.20e-01]
..LN782:
	.loc    1  147  is_stmt 1
        movaps    %xmm0, %xmm1                                  #147.17
..LN783:
	.loc    1  160  is_stmt 1
        lea       .L_2__STRING.0(%rip), %rdi                    #160.17
..LN784:
	.loc    1  147  is_stmt 1
        movhlps   %xmm0, %xmm1                                  #147.17
..LN785:
	.loc    1  160  is_stmt 1
        movl      $1, %eax                                      #160.17
..LN786:
	.loc    1  147  is_stmt 1
        addps     %xmm1, %xmm0                                  #147.17
..LN787:
        movaps    %xmm0, %xmm2                                  #147.17
..LN788:
        shufps    $245, %xmm0, %xmm2                            #147.17
..LN789:
        addss     %xmm2, %xmm0                                  #147.17
..LN790:
	.loc    1  160  is_stmt 1
        cvtss2sd  %xmm0, %xmm0                                  #160.17
..___tag_value_check.146:
..LN791:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #160.17
..___tag_value_check.147:
..LN792:
                                # LOE rbx r12 r13 r14 r15
..B5.24:                        # Preds ..B5.23 ..B5.22
                                # Execution count [1.00e+00]
..LN793:
	.loc    1  171  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #171.1
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN794:
        popq      %rbp                                          #171.1
	.cfi_def_cfa_offset 8
..LN795:
        ret                                                     #171.1
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN796:
                                # LOE
..B5.25:                        # Preds ..B5.22
                                # Execution count [5.10e-02]: Infreq
..LN797:
	.loc    1  169  is_stmt 1
        movq      temp@GOTPCREL(%rip), %rax                     #169.19
..LN798:
        lea       .L_2__STRING.0(%rip), %rdi                    #169.19
..LN799:
        movss     (%rax), %xmm0                                 #169.19
..LN800:
        movl      $1, %eax                                      #169.19
..LN801:
        addss     %xmm3, %xmm0                                  #169.19
..LN802:
        cvtss2sd  %xmm0, %xmm0                                  #169.19
..___tag_value_check.154:
..LN803:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #169.19
..___tag_value_check.155:
..LN804:
	.loc    1  169  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #169.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN805:
        popq      %rbp                                          #169.19
	.cfi_def_cfa_offset 8
..LN806:
        ret                                                     #169.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN807:
                                # LOE rbx r12 r13 r14 r15
..B5.26:                        # Preds ..B5.21
                                # Execution count [5.10e-02]: Infreq
..LN808:
	.loc    1  168  is_stmt 1
        movq      temp@GOTPCREL(%rip), %rax                     #168.18
..LN809:
        pxor      %xmm0, %xmm0                                  #168.18
..LN810:
        lea       .L_2__STRING.0(%rip), %rdi                    #168.18
..LN811:
        cvtss2sd  (%rax), %xmm0                                 #168.18
..LN812:
        movl      $1, %eax                                      #168.18
..LN813:
	.loc    1  168  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #168.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN814:
        popq      %rbp                                          #168.18
	.cfi_def_cfa_offset 8
..LN815:
#       printf(const char *__restrict__, ...)
        jmp       printf@PLT                                    #168.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN816:
                                # LOE
..B5.27:                        # Preds ..B5.20
                                # Execution count [5.10e-02]: Infreq
..LN817:
	.loc    1  167  is_stmt 1
        lea       .L_2__STRING.0(%rip), %rdi                    #167.19
..LN818:
        movl      $1, %eax                                      #167.19
..LN819:
        addss     %xmm6, %xmm2                                  #167.19
..LN820:
        cvtss2sd  %xmm2, %xmm2                                  #167.19
..LN821:
        movaps    %xmm2, %xmm0                                  #167.19
..___tag_value_check.168:
..LN822:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #167.19
..___tag_value_check.169:
..LN823:
	.loc    1  167  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #167.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN824:
        popq      %rbp                                          #167.19
	.cfi_def_cfa_offset 8
..LN825:
        ret                                                     #167.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN826:
                                # LOE rbx r12 r13 r14 r15
..B5.28:                        # Preds ..B5.19
                                # Execution count [5.10e-02]: Infreq
..LN827:
	.loc    1  166  is_stmt 1
        pxor      %xmm0, %xmm0                                  #166.22
..LN828:
        lea       .L_2__STRING.0(%rip), %rdi                    #166.22
..LN829:
        movl      $1, %eax                                      #166.22
..LN830:
        addss     %xmm8, %xmm6                                  #166.22
..LN831:
        addss     %xmm1, %xmm6                                  #166.22
..LN832:
        cvtss2sd  %xmm6, %xmm0                                  #166.22
..___tag_value_check.176:
..LN833:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #166.22
..___tag_value_check.177:
..LN834:
	.loc    1  166  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #166.22
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN835:
        popq      %rbp                                          #166.22
	.cfi_def_cfa_offset 8
..LN836:
        ret                                                     #166.22
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN837:
                                # LOE rbx r12 r13 r14 r15
..B5.29:                        # Preds ..B5.18
                                # Execution count [5.10e-02]: Infreq
..LN838:
	.loc    1  165  is_stmt 1
        pxor      %xmm0, %xmm0                                  #165.20
..LN839:
        lea       .L_2__STRING.0(%rip), %rdi                    #165.20
..LN840:
        movl      $1, %eax                                      #165.20
..LN841:
        addss     %xmm8, %xmm6                                  #165.20
..LN842:
        cvtss2sd  %xmm6, %xmm0                                  #165.20
..___tag_value_check.184:
..LN843:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #165.20
..___tag_value_check.185:
..LN844:
	.loc    1  165  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #165.20
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN845:
        popq      %rbp                                          #165.20
	.cfi_def_cfa_offset 8
..LN846:
        ret                                                     #165.20
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN847:
                                # LOE rbx r12 r13 r14 r15
..B5.30:                        # Preds ..B5.17
                                # Execution count [5.10e-02]: Infreq
..LN848:
	.loc    1  164  is_stmt 1
        lea       .L_2__STRING.0(%rip), %rdi                    #164.19
..LN849:
        movl      $1, %eax                                      #164.19
..LN850:
        addss     %xmm3, %xmm2                                  #164.19
..LN851:
        addss     %xmm4, %xmm2                                  #164.19
..LN852:
        cvtss2sd  %xmm2, %xmm2                                  #164.19
..LN853:
        movaps    %xmm2, %xmm0                                  #164.19
..___tag_value_check.192:
..LN854:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #164.19
..___tag_value_check.193:
..LN855:
	.loc    1  164  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #164.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN856:
        popq      %rbp                                          #164.19
	.cfi_def_cfa_offset 8
..LN857:
        ret                                                     #164.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN858:
                                # LOE rbx r12 r13 r14 r15
..B5.31:                        # Preds ..B5.16
                                # Execution count [5.10e-02]: Infreq
..LN859:
	.loc    1  163  is_stmt 1
        lea       .L_2__STRING.0(%rip), %rdi                    #163.18
..LN860:
        movl      $1, %eax                                      #163.18
..LN861:
        addss     %xmm4, %xmm2                                  #163.18
..LN862:
        cvtss2sd  %xmm2, %xmm2                                  #163.18
..LN863:
        movaps    %xmm2, %xmm0                                  #163.18
..___tag_value_check.200:
..LN864:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #163.18
..___tag_value_check.201:
..LN865:
	.loc    1  163  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #163.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN866:
        popq      %rbp                                          #163.18
	.cfi_def_cfa_offset 8
..LN867:
        ret                                                     #163.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN868:
                                # LOE rbx r12 r13 r14 r15
..B5.32:                        # Preds ..B5.15
                                # Execution count [5.10e-02]: Infreq
..LN869:
	.loc    1  162  is_stmt 1
        lea       .L_2__STRING.0(%rip), %rdi                    #162.18
..LN870:
        movl      $1, %eax                                      #162.18
..LN871:
        addss     %xmm5, %xmm3                                  #162.18
..LN872:
        cvtss2sd  %xmm3, %xmm3                                  #162.18
..LN873:
        movaps    %xmm3, %xmm0                                  #162.18
..___tag_value_check.208:
..LN874:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #162.18
..___tag_value_check.209:
..LN875:
	.loc    1  162  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #162.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN876:
        popq      %rbp                                          #162.18
	.cfi_def_cfa_offset 8
..LN877:
        ret                                                     #162.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN878:
                                # LOE rbx r12 r13 r14 r15
..B5.33:                        # Preds ..B5.14
                                # Execution count [5.10e-02]: Infreq
..LN879:
	.loc    1  161  is_stmt 1
        lea       .L_2__STRING.0(%rip), %rdi                    #161.18
..LN880:
        movl      $1, %eax                                      #161.18
..LN881:
        addss     %xmm3, %xmm2                                  #161.18
..LN882:
        cvtss2sd  %xmm2, %xmm2                                  #161.18
..LN883:
        movaps    %xmm2, %xmm0                                  #161.18
..___tag_value_check.216:
..LN884:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #161.18
..___tag_value_check.217:
..LN885:
	.loc    1  161  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #161.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN886:
        popq      %rbp                                          #161.18
	.cfi_def_cfa_offset 8
..LN887:
        ret                                                     #161.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN888:
                                # LOE rbx r12 r13 r14 r15
..B5.34:                        # Preds ..B5.12
                                # Execution count [5.10e-02]: Infreq
..LN889:
	.loc    1  159  is_stmt 1
        cvtss2sd  %xmm1, %xmm1                                  #159.18
..LN890:
        lea       .L_2__STRING.0(%rip), %rdi                    #159.18
..LN891:
        movl      $1, %eax                                      #159.18
..LN892:
        movaps    %xmm1, %xmm0                                  #159.18
..___tag_value_check.224:
..LN893:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #159.18
..___tag_value_check.225:
..LN894:
	.loc    1  159  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #159.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN895:
        popq      %rbp                                          #159.18
	.cfi_def_cfa_offset 8
..LN896:
        ret                                                     #159.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN897:
                                # LOE rbx r12 r13 r14 r15
..B5.35:                        # Preds ..B5.11
                                # Execution count [5.10e-02]: Infreq
..LN898:
	.loc    1  158  is_stmt 1
        pxor      %xmm0, %xmm0                                  #158.18
..LN899:
        lea       .L_2__STRING.0(%rip), %rdi                    #158.18
..LN900:
        cvtss2sd  %xmm8, %xmm0                                  #158.18
..LN901:
        movl      $1, %eax                                      #158.18
..___tag_value_check.232:
..LN902:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #158.18
..___tag_value_check.233:
..LN903:
	.loc    1  158  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #158.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN904:
        popq      %rbp                                          #158.18
	.cfi_def_cfa_offset 8
..LN905:
        ret                                                     #158.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN906:
                                # LOE rbx r12 r13 r14 r15
..B5.36:                        # Preds ..B5.10
                                # Execution count [5.10e-02]: Infreq
..LN907:
	.loc    1  157  is_stmt 1
        pxor      %xmm0, %xmm0                                  #157.18
..LN908:
        lea       .L_2__STRING.0(%rip), %rdi                    #157.18
..LN909:
        cvtss2sd  %xmm6, %xmm0                                  #157.18
..LN910:
        movl      $1, %eax                                      #157.18
..___tag_value_check.240:
..LN911:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #157.18
..___tag_value_check.241:
..LN912:
	.loc    1  157  epilogue_begin  is_stmt 1
        addq      $48, %rsp                                     #157.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN913:
        popq      %rbp                                          #157.18
	.cfi_def_cfa_offset 8
..LN914:
        ret                                                     #157.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN915:
                                # LOE rbx r12 r13 r14 r15
..B5.37:                        # Preds ..B5.9
                                # Execution count [5.10e-02]: Infreq
..LN916:
	.loc    1  156  is_stmt 1
        cvtss2sd  %xmm5, %xmm5                                  #156.17
..LN917:
        lea       .L_2__STRING.0(%rip), %rdi                    #156.17
..LN918:
        movl      $1, %eax                                      #156.17
..LN919:
        movaps    %xmm5, %xmm0                                  #156.17
..LN920:
        movss     %xmm3, (%rsp)                                 #156.17[spill]
..___tag_value_check.248:
..LN921:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #156.17
..___tag_value_check.249:
..LN922:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.48:                        # Preds ..B5.37
                                # Execution count [5.10e-02]: Infreq
..LN923:
        movss     (%rsp), %xmm3                                 #[spill]
..LN924:
        jmp       ..B5.22       # Prob 100%                     #
..LN925:
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.38:                        # Preds ..B5.8
                                # Execution count [5.10e-02]: Infreq
..LN926:
	.loc    1  127  is_stmt 1
        movaps    %xmm7, %xmm1                                  #127.13
..LN927:
	.loc    1  155  is_stmt 1
        lea       .L_2__STRING.0(%rip), %rdi                    #155.17
..LN928:
	.loc    1  127  is_stmt 1
        movhlps   %xmm7, %xmm1                                  #127.13
..LN929:
	.loc    1  155  is_stmt 1
        movl      $1, %eax                                      #155.17
..LN930:
        movss     %xmm3, (%rsp)                                 #155.17[spill]
..LN931:
	.loc    1  127  is_stmt 1
        addps     %xmm1, %xmm7                                  #127.13
..LN932:
        movaps    %xmm7, %xmm2                                  #127.13
..LN933:
        shufps    $245, %xmm7, %xmm2                            #127.13
..LN934:
        addss     %xmm2, %xmm7                                  #127.13
..LN935:
	.loc    1  155  is_stmt 1
        cvtss2sd  %xmm7, %xmm7                                  #155.17
..LN936:
        movaps    %xmm7, %xmm0                                  #155.17
..___tag_value_check.250:
..LN937:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #155.17
..___tag_value_check.251:
..LN938:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.47:                        # Preds ..B5.38
                                # Execution count [5.10e-02]: Infreq
..LN939:
        movss     (%rsp), %xmm3                                 #[spill]
..LN940:
        jmp       ..B5.21       # Prob 100%                     #
..LN941:
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.39:                        # Preds ..B5.7
                                # Execution count [5.10e-02]: Infreq
..LN942:
	.loc    1  154  is_stmt 1
        cvtss2sd  %xmm4, %xmm4                                  #154.17
..LN943:
        lea       .L_2__STRING.0(%rip), %rdi                    #154.17
..LN944:
        movl      $1, %eax                                      #154.17
..LN945:
        movaps    %xmm4, %xmm0                                  #154.17
..LN946:
        movss     %xmm6, 8(%rsp)                                #154.17[spill]
..LN947:
        movss     %xmm2, 16(%rsp)                               #154.17[spill]
..LN948:
        movss     %xmm3, (%rsp)                                 #154.17[spill]
..___tag_value_check.252:
..LN949:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #154.17
..___tag_value_check.253:
..LN950:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.46:                        # Preds ..B5.39
                                # Execution count [5.10e-02]: Infreq
..LN951:
        movss     (%rsp), %xmm3                                 #[spill]
..LN952:
        movss     16(%rsp), %xmm2                               #[spill]
..LN953:
        movss     8(%rsp), %xmm6                                #[spill]
..LN954:
        jmp       ..B5.20       # Prob 100%                     #
..LN955:
                                # LOE rbx r12 r13 r14 r15 ebp xmm2 xmm3 xmm6
..B5.40:                        # Preds ..B5.6
                                # Execution count [5.10e-02]: Infreq
..LN956:
	.loc    1  153  is_stmt 1
        pxor      %xmm0, %xmm0                                  #153.17
..LN957:
        lea       .L_2__STRING.0(%rip), %rdi                    #153.17
..LN958:
        cvtss2sd  %xmm3, %xmm0                                  #153.17
..LN959:
        movl      $1, %eax                                      #153.17
..LN960:
        movss     %xmm6, 8(%rsp)                                #153.17[spill]
..LN961:
        movss     %xmm8, 24(%rsp)                               #153.17[spill]
..LN962:
        movss     %xmm1, 32(%rsp)                               #153.17[spill]
..LN963:
        movss     %xmm2, 16(%rsp)                               #153.17[spill]
..LN964:
        movss     %xmm3, (%rsp)                                 #153.17[spill]
..___tag_value_check.254:
..LN965:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #153.17
..___tag_value_check.255:
..LN966:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.45:                        # Preds ..B5.40
                                # Execution count [5.10e-02]: Infreq
..LN967:
        movss     (%rsp), %xmm3                                 #[spill]
..LN968:
        movss     16(%rsp), %xmm2                               #[spill]
..LN969:
        movss     32(%rsp), %xmm1                               #[spill]
..LN970:
        movss     24(%rsp), %xmm8                               #[spill]
..LN971:
        movss     8(%rsp), %xmm6                                #[spill]
..LN972:
        jmp       ..B5.19       # Prob 100%                     #
..LN973:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.41:                        # Preds ..B5.5
                                # Execution count [5.10e-02]: Infreq
..LN974:
	.loc    1  152  is_stmt 1
        pxor      %xmm0, %xmm0                                  #152.17
..LN975:
        lea       .L_2__STRING.0(%rip), %rdi                    #152.17
..LN976:
        cvtss2sd  %xmm2, %xmm0                                  #152.17
..LN977:
        movl      $1, %eax                                      #152.17
..LN978:
        movss     %xmm6, 8(%rsp)                                #152.17[spill]
..LN979:
        movss     %xmm8, 24(%rsp)                               #152.17[spill]
..LN980:
        movss     %xmm1, 32(%rsp)                               #152.17[spill]
..LN981:
        movss     %xmm2, 16(%rsp)                               #152.17[spill]
..LN982:
        movss     %xmm3, (%rsp)                                 #152.17[spill]
..___tag_value_check.256:
..LN983:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #152.17
..___tag_value_check.257:
..LN984:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.44:                        # Preds ..B5.41
                                # Execution count [5.10e-02]: Infreq
..LN985:
        movss     (%rsp), %xmm3                                 #[spill]
..LN986:
        movss     16(%rsp), %xmm2                               #[spill]
..LN987:
        movss     32(%rsp), %xmm1                               #[spill]
..LN988:
        movss     24(%rsp), %xmm8                               #[spill]
..LN989:
        movss     8(%rsp), %xmm6                                #[spill]
..LN990:
        jmp       ..B5.18       # Prob 100%                     #
        .align    16,0x90
..LN991:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..LN992:
	.cfi_endproc
# mark_end;
	.type	check,@function
	.size	check,.-check
..LNcheck.993:
.LNcheck:
	.data
# -- End  check
	.text
.L_2__routine_start_s2275_5:
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
..___tag_value_s2275.262:
..L263:
                                                        #255.1
..LN994:
	.loc    1  255  is_stmt 1
        pushq     %r12                                          #255.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN995:
        pushq     %r13                                          #255.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN996:
        pushq     %r14                                          #255.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN997:
        pushq     %r15                                          #255.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN998:
        pushq     %rbx                                          #255.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN999:
        pushq     %rbp                                          #255.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1000:
        subq      $40, %rsp                                     #255.1
	.cfi_def_cfa_offset 96
..LN1001:
	.loc    1  262  prologue_end  is_stmt 1
        lea       .L_2__STRING.6(%rip), %rdi                    #262.2
..___tag_value_s2275.278:
..LN1002:
#       init(char *)
        call      init@PLT                                      #262.2
..___tag_value_s2275.279:
..LN1003:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.2:                         # Preds ..B6.1
                                # Execution count [1.00e+00]
..LN1004:
	.loc    1  263  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #263.12
..LN1005:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.16:                        # Preds ..B6.2
                                # Execution count [1.00e+00]
..LN1006:
        movq      %rax, (%rsp)                                  #263.12[spill]
..LN1007:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.3:                         # Preds ..B6.16
                                # Execution count [1.22e+03]
..LN1008:
	.loc    1  272  is_stmt 1
        movq      b@GOTPCREL(%rip), %r11                        #272.36
..LN1009:
	.loc    1  265  is_stmt 1
        xorl      %edi, %edi                                    #265.2
..LN1010:
	.loc    1  272  is_stmt 1
        movq      a@GOTPCREL(%rip), %r10                        #272.36
..LN1011:
        movl      %edi, %r13d                                   #272.3
..LN1012:
        movq      e@GOTPCREL(%rip), %r8                         #272.3
..LN1013:
        movq      aa@GOTPCREL(%rip), %r9                        #272.36
..LN1014:
        movq      %r9, %r14                                     #272.3
..LN1015:
        movq      bb@GOTPCREL(%rip), %rsi                       #272.36
..LN1016:
        movq      %rsi, %r15                                    #272.3
..LN1017:
        movq      cc@GOTPCREL(%rip), %rax                       #272.36
..LN1018:
        movq      %rax, %rbp                                    #272.3
..LN1019:
        movq      c@GOTPCREL(%rip), %rdx                        #272.36
..LN1020:
        movq      %rdx, %r12                                    #272.3
..LN1021:
        movq      d@GOTPCREL(%rip), %rcx                        #272.36
..LN1022:
        movq      %rcx, %rbx                                    #272.3
..LN1023:
        movq      %r8, 8(%rsp)                                  #272.3[spill]
..LN1024:
        movq      %r10, 16(%rsp)                                #272.3[spill]
..LN1025:
        movq      %r11, 24(%rsp)                                #272.3[spill]
..LN1026:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.4:                         # Preds ..B6.9 ..B6.3
                                # Execution count [1.99e+05]
..L280:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1027:
	.loc    1  265  is_stmt 1
..LN1028:
	.loc    1  267  is_stmt 1
        xorl      %r8d, %r8d                                    #267.4
        .align    16,0x90
..LN1029:
                                # LOE rbx rbp r8 r12 r14 r15 r13d
..B6.5:                         # Preds ..B6.5 ..B6.4
                                # Execution count [6.43e+09]
..L281:
                # optimization report
                # LOOP WAS INTERCHANGED
                # 1 LOOPS WERE COLLAPSED TO FORM THIS LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # LOOP WAS UNROLLED BY 4
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 4.500000
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1030:
	.loc    1  268  is_stmt 1
        movups    (%r15,%r8,4), %xmm0                           #268.27
..LN1031:
        movups    16(%r15,%r8,4), %xmm1                         #268.27
..LN1032:
        movups    32(%r15,%r8,4), %xmm2                         #268.27
..LN1033:
        movups    48(%r15,%r8,4), %xmm3                         #268.27
..LN1034:
        mulps     (%rbp,%r8,4), %xmm0                           #268.38
..LN1035:
        mulps     16(%rbp,%r8,4), %xmm1                         #268.38
..LN1036:
        mulps     32(%rbp,%r8,4), %xmm2                         #268.38
..LN1037:
        addps     (%r14,%r8,4), %xmm0                           #268.38
..LN1038:
        mulps     48(%rbp,%r8,4), %xmm3                         #268.38
..LN1039:
        addps     16(%r14,%r8,4), %xmm1                         #268.38
..LN1040:
        addps     32(%r14,%r8,4), %xmm2                         #268.38
..LN1041:
        addps     48(%r14,%r8,4), %xmm3                         #268.38
..LN1042:
        movups    %xmm0, (%r14,%r8,4)                           #268.5
..LN1043:
        movups    %xmm1, 16(%r14,%r8,4)                         #268.5
..LN1044:
        movups    %xmm2, 32(%r14,%r8,4)                         #268.5
..LN1045:
        movups    %xmm3, 48(%r14,%r8,4)                         #268.5
..LN1046:
	.loc    1  267  is_stmt 1
        addq      $16, %r8                                      #267.4
..LN1047:
        cmpq      $32400, %r8                                   #267.4
..LN1048:
        jb        ..B6.5        # Prob 99%                      #267.4
..LN1049:
                                # LOE rbx rbp r8 r12 r14 r15 r13d
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.99e+05]
..LN1050:
	.loc    1  266  is_stmt 1
        movq      16(%rsp), %r10                                #266.3[spill]
..LN1051:
        xorl      %r8d, %r8d                                    #266.3
..LN1052:
        movq      24(%rsp), %r11                                #266.3[spill]
..LN1053:
                                # LOE rbx rbp r8 r10 r11 r12 r14 r15 r13d
..B6.7:                         # Preds ..B6.7 ..B6.6
                                # Execution count [3.57e+07]
..L282:
                # optimization report
                # LOOP WAS DISTRIBUTED, CHUNK 2
                # LOOP WAS UNROLLED BY 2
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 4.175781
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1054:
	.loc    1  270  is_stmt 1
        movups    (%r12,%r8,4), %xmm0                           #270.18
..LN1055:
        movups    16(%r12,%r8,4), %xmm1                         #270.18
..LN1056:
        mulps     (%rbx,%r8,4), %xmm0                           #270.25
..LN1057:
        mulps     16(%rbx,%r8,4), %xmm1                         #270.25
..LN1058:
        addps     (%r11,%r8,4), %xmm0                           #270.25
..LN1059:
        addps     16(%r11,%r8,4), %xmm1                         #270.25
..LN1060:
        movups    %xmm0, (%r10,%r8,4)                           #270.4
..LN1061:
        movups    %xmm1, 16(%r10,%r8,4)                         #270.4
..LN1062:
	.loc    1  266  is_stmt 1
        addq      $8, %r8                                       #266.3
..LN1063:
        cmpq      $176, %r8                                     #266.3
..LN1064:
        jb        ..B6.7        # Prob 99%                      #266.3
..LN1065:
                                # LOE rbx rbp r8 r10 r11 r12 r14 r15 r13d
..B6.8:                         # Preds ..B6.7
                                # Execution count [1.99e+05]
..L284:
                # optimization report
                # LOOP WAS DISTRIBUTED, CHUNK 2
                # LOOP WAS COMPLETELY UNROLLED
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 2.250000
                # LOOP HAS ONE VECTOR ITERATION
                # VECTOR LENGTH 4
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1066:
	.loc    1  270  is_stmt 1
        movups    704(%r12), %xmm0                              #270.18
..LN1067:
	.loc    1  272  is_stmt 1
        movq      %r12, %rdx                                    #272.3
..LN1068:
        pushq     %rbp                                          #272.3
	.cfi_def_cfa_offset 104
..LN1069:
	.loc    1  270  is_stmt 1
        mulps     704(%rbx), %xmm0                              #270.25
..LN1070:
	.loc    1  272  is_stmt 1
        movq      %rbx, %rcx                                    #272.3
..LN1071:
        pushq     %r15                                          #272.3
	.cfi_def_cfa_offset 112
..LN1072:
	.loc    1  270  is_stmt 1
        movq      40(%rsp), %rsi                                #270.25[spill]
..LN1073:
	.loc    1  272  is_stmt 1
        movq      %r14, %r9                                     #272.3
..LN1074:
	.loc    1  270  is_stmt 1
        movq      32(%rsp), %rdi                                #270.4[spill]
..LN1075:
	.loc    1  272  is_stmt 1
        movq      24(%rsp), %r8                                 #272.3[spill]
..LN1076:
	.loc    1  270  is_stmt 1
        addps     704(%rsi), %xmm0                              #270.25
..LN1077:
        movups    %xmm0, 704(%rdi)                              #270.4
..LN1078:
	.loc    1  272  is_stmt 1
        pxor      %xmm0, %xmm0                                  #272.3
..___tag_value_s2275.286:
..LN1079:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #272.3
..___tag_value_s2275.287:
..LN1080:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.17:                        # Preds ..B6.8
                                # Execution count [1.99e+05]
..LN1081:
        addq      $16, %rsp                                     #272.3
	.cfi_def_cfa_offset 96
..LN1082:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.9:                         # Preds ..B6.17
                                # Execution count [1.99e+05]
..LN1083:
	.loc    1  265  is_stmt 1
        incl      %r13d                                         #265.2
..LN1084:
        cmpl      $200000, %r13d                                #265.2
..LN1085:
        jb        ..B6.4        # Prob 99%                      #265.2
..LN1086:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.10:                        # Preds ..B6.9
                                # Execution count [1.00e+00]
..LN1087:
	.loc    1  274  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #274.10
..LN1088:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.11:                        # Preds ..B6.10
                                # Execution count [1.00e+00]
..LN1089:
	.loc    1  276  is_stmt 1
        subq      (%rsp), %rax                                  #276.2[spill]
..LN1090:
        pxor      %xmm0, %xmm0                                  #276.2
..LN1091:
        cvtsi2sdq %rax, %xmm0                                   #276.2
..LN1092:
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #276.2
..LN1093:
        lea       .L_2__STRING.7(%rip), %rdi                    #276.2
..LN1094:
        movl      $1, %eax                                      #276.2
..___tag_value_s2275.289:
..LN1095:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #276.2
..___tag_value_s2275.290:
..LN1096:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.12:                        # Preds ..B6.11
                                # Execution count [1.00e+00]
..LN1097:
	.loc    1  277  is_stmt 1
        movl      $11, %edi                                     #277.2
..___tag_value_s2275.291:
..LN1098:
#       check(int)
        call      check@PLT                                     #277.2
..___tag_value_s2275.292:
..LN1099:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.13:                        # Preds ..B6.12
                                # Execution count [1.00e+00]
..LN1100:
	.loc    1  278  is_stmt 1
        xorl      %eax, %eax                                    #278.9
..LN1101:
	.loc    1  278  epilogue_begin  is_stmt 1
        addq      $40, %rsp                                     #278.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1102:
        popq      %rbp                                          #278.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1103:
        popq      %rbx                                          #278.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1104:
        popq      %r15                                          #278.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1105:
        popq      %r14                                          #278.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1106:
        popq      %r13                                          #278.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1107:
        popq      %r12                                          #278.9
	.cfi_def_cfa_offset 8
..LN1108:
        ret                                                     #278.9
        .align    16,0x90
..LN1109:
                                # LOE
..LN1110:
	.cfi_endproc
# mark_end;
	.type	s2275,@function
	.size	s2275,.-s2275
..LNs2275.1111:
.LNs2275:
	.data
# -- End  s2275
	.text
.L_2__routine_start_s112_6:
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
..___tag_value_s112.310:
..L311:
                                                        #337.1
..LN1112:
	.loc    1  337  is_stmt 1
        pushq     %r12                                          #337.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1113:
        pushq     %r13                                          #337.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1114:
        pushq     %r14                                          #337.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1115:
        pushq     %r15                                          #337.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1116:
        pushq     %rbx                                          #337.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1117:
        pushq     %rbp                                          #337.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1118:
        subq      $40, %rsp                                     #337.1
	.cfi_def_cfa_offset 96
..LN1119:
	.loc    1  345  prologue_end  is_stmt 1
        lea       .L_2__STRING.2(%rip), %rdi                    #345.2
..___tag_value_s112.326:
..LN1120:
#       init(char *)
        call      init@PLT                                      #345.2
..___tag_value_s112.327:
..LN1121:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.2:                         # Preds ..B7.1
                                # Execution count [1.00e+00]
..LN1122:
	.loc    1  346  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #346.12
..LN1123:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B7.14:                        # Preds ..B7.2
                                # Execution count [1.00e+00]
..LN1124:
        movq      %rax, (%rsp)                                  #346.12[spill]
..LN1125:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.3:                         # Preds ..B7.14
                                # Execution count [1.00e+00]
..LN1126:
	.loc    1  353  is_stmt 1
        movq      c@GOTPCREL(%rip), %r11                        #353.3
..LN1127:
	.loc    1  348  is_stmt 1
        xorl      %ecx, %ecx                                    #348.2
..LN1128:
	.loc    1  353  is_stmt 1
        movq      d@GOTPCREL(%rip), %r10                        #353.3
..LN1129:
        movl      %ecx, %r12d                                   #353.3
..LN1130:
        movq      e@GOTPCREL(%rip), %r8                         #353.3
..LN1131:
	.loc    1  350  is_stmt 1
        movq      a@GOTPCREL(%rip), %rdi                        #350.3
..LN1132:
	.loc    1  353  is_stmt 1
        movq      %rdi, %r13                                    #353.3
..LN1133:
	.loc    1  350  is_stmt 1
        movq      b@GOTPCREL(%rip), %rsi                        #350.3
..LN1134:
	.loc    1  353  is_stmt 1
        movq      %rsi, %r14                                    #353.3
..LN1135:
        movq      aa@GOTPCREL(%rip), %r9                        #353.3
..LN1136:
        movq      %r9, %r15                                     #353.3
..LN1137:
        movq      bb@GOTPCREL(%rip), %rdx                       #353.3
..LN1138:
        movq      %rdx, %rbp                                    #353.3
..LN1139:
        movq      cc@GOTPCREL(%rip), %rax                       #353.3
..LN1140:
        movq      %rax, %rbx                                    #353.3
..LN1141:
        movq      %r8, 24(%rsp)                                 #353.3[spill]
..LN1142:
        movq      %r10, 16(%rsp)                                #353.3[spill]
..LN1143:
        movq      %r11, 8(%rsp)                                 #353.3[spill]
..LN1144:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.4:                         # Preds ..B7.7 ..B7.3
                                # Execution count [1.99e+05]
..L328:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN1145:
	.loc    1  348  is_stmt 1
..LN1146:
	.loc    1  350  is_stmt 1
        xorl      %r10d, %r10d                                  #350.3
..LN1147:
        xorl      %r8d, %r8d                                    #350.3
        .align    16,0x90
..LN1148:
                                # LOE rbx rbp r8 r13 r14 r15 r10d r12d
..B7.5:                         # Preds ..B7.5 ..B7.4
                                # Execution count [3.17e+09]
..L329:
                # optimization report
                # LOOP WAS UNROLLED BY 6
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.224487
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
..LN1149:
	.loc    1  351  is_stmt 1
        movss     127992(%r8,%r13), %xmm0                       #351.13
..LN1150:
	.loc    1  350  is_stmt 1
        incl      %r10d                                         #350.3
..LN1151:
	.loc    1  351  is_stmt 1
        movss     127988(%r8,%r13), %xmm1                       #351.13
..LN1152:
        addss     127992(%r8,%r14), %xmm0                       #351.20
..LN1153:
        addss     127988(%r8,%r14), %xmm1                       #351.20
..LN1154:
        movss     %xmm0, 127996(%r8,%r13)                       #351.4
..LN1155:
        movss     %xmm1, 127992(%r8,%r13)                       #351.4
..LN1156:
	.loc    1  350  is_stmt 1
        addq      $-8, %r8                                      #350.3
..LN1157:
        cmpl      $15999, %r10d                                 #350.3
..LN1158:
        jb        ..B7.5        # Prob 99%                      #350.3
..LN1159:
                                # LOE rbx rbp r8 r13 r14 r15 r10d r12d
..B7.6:                         # Preds ..B7.5
                                # Execution count [1.99e+05]
..L332:
                # optimization report
                # REMAINDER LOOP
                # LOOP WAS UNROLLED BY 4
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.224487
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
..LN1160:
	.loc    1  351  is_stmt 1
        movss     (%r13), %xmm0                                 #351.13
..LN1161:
	.loc    1  353  is_stmt 1
        movq      %r13, %rdi                                    #353.3
..LN1162:
        pushq     %rbx                                          #353.3
	.cfi_def_cfa_offset 104
..LN1163:
        pushq     %rbp                                          #353.3
	.cfi_def_cfa_offset 112
..LN1164:
        movq      %r14, %rsi                                    #353.3
..LN1165:
        movq      %r15, %r9                                     #353.3
..LN1166:
        movq      24(%rsp), %rdx                                #353.3[spill]
..LN1167:
        movq      32(%rsp), %rcx                                #353.3[spill]
..LN1168:
        movq      40(%rsp), %r8                                 #353.3[spill]
..LN1169:
	.loc    1  351  is_stmt 1
        addss     (%r14), %xmm0                                 #351.20
..LN1170:
        movss     %xmm0, 4(%r13)                                #351.4
..LN1171:
	.loc    1  353  is_stmt 1
        pxor      %xmm0, %xmm0                                  #353.3
..___tag_value_s112.333:
..LN1172:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #353.3
..___tag_value_s112.334:
..LN1173:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.15:                        # Preds ..B7.6
                                # Execution count [1.99e+05]
..LN1174:
        addq      $16, %rsp                                     #353.3
	.cfi_def_cfa_offset 96
..LN1175:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.7:                         # Preds ..B7.15
                                # Execution count [1.99e+05]
..LN1176:
	.loc    1  348  is_stmt 1
        incl      %r12d                                         #348.2
..LN1177:
        cmpl      $200000, %r12d                                #348.2
..LN1178:
        jb        ..B7.4        # Prob 99%                      #348.2
..LN1179:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.8:                         # Preds ..B7.7
                                # Execution count [1.00e+00]
..LN1180:
	.loc    1  355  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #355.10
..LN1181:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B7.9:                         # Preds ..B7.8
                                # Execution count [1.00e+00]
..LN1182:
	.loc    1  357  is_stmt 1
        subq      (%rsp), %rax                                  #357.2[spill]
..LN1183:
        pxor      %xmm0, %xmm0                                  #357.2
..LN1184:
        cvtsi2sdq %rax, %xmm0                                   #357.2
..LN1185:
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #357.2
..LN1186:
        lea       .L_2__STRING.11(%rip), %rdi                   #357.2
..LN1187:
        movl      $1, %eax                                      #357.2
..___tag_value_s112.336:
..LN1188:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #357.2
..___tag_value_s112.337:
..LN1189:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.10:                        # Preds ..B7.9
                                # Execution count [1.00e+00]
..LN1190:
	.loc    1  358  is_stmt 1
        movl      $1, %edi                                      #358.2
..___tag_value_s112.338:
..LN1191:
#       check(int)
        call      check@PLT                                     #358.2
..___tag_value_s112.339:
..LN1192:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.11:                        # Preds ..B7.10
                                # Execution count [1.00e+00]
..LN1193:
	.loc    1  359  is_stmt 1
        xorl      %eax, %eax                                    #359.9
..LN1194:
	.loc    1  359  epilogue_begin  is_stmt 1
        addq      $40, %rsp                                     #359.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1195:
        popq      %rbp                                          #359.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1196:
        popq      %rbx                                          #359.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1197:
        popq      %r15                                          #359.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1198:
        popq      %r14                                          #359.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1199:
        popq      %r13                                          #359.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1200:
        popq      %r12                                          #359.9
	.cfi_def_cfa_offset 8
..LN1201:
        ret                                                     #359.9
        .align    16,0x90
..LN1202:
                                # LOE
..LN1203:
	.cfi_endproc
# mark_end;
	.type	s112,@function
	.size	s112,.-s112
..LNs112.1204:
.LNs112:
	.data
# -- End  s112
	.text
.L_2__routine_start_s312_7:
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
..___tag_value_s312.357:
..L358:
                                                        #281.1
..LN1205:
	.loc    1  281  is_stmt 1
        pushq     %r12                                          #281.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1206:
        pushq     %r13                                          #281.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1207:
        pushq     %r14                                          #281.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1208:
        pushq     %r15                                          #281.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1209:
        pushq     %rbx                                          #281.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1210:
        pushq     %rbp                                          #281.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1211:
        subq      $40, %rsp                                     #281.1
	.cfi_def_cfa_offset 96
..LN1212:
	.loc    1  289  prologue_end  is_stmt 1
        lea       .L_2__STRING.1(%rip), %rdi                    #289.2
..___tag_value_s312.373:
..LN1213:
#       init(char *)
        call      init@PLT                                      #289.2
..___tag_value_s312.374:
..LN1214:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.2:                         # Preds ..B8.1
                                # Execution count [1.00e+00]
..LN1215:
	.loc    1  290  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #290.12
..LN1216:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.14:                        # Preds ..B8.2
                                # Execution count [1.00e+00]
..LN1217:
        movq      %rax, (%rsp)                                  #290.12[spill]
..LN1218:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.3:                         # Preds ..B8.14
                                # Execution count [1.00e+00]
..LN1219:
	.loc    1  298  is_stmt 1
        movq      b@GOTPCREL(%rip), %r11                        #298.3
..LN1220:
	.loc    1  293  is_stmt 1
        xorl      %ecx, %ecx                                    #293.2
..LN1221:
	.loc    1  298  is_stmt 1
        movq      c@GOTPCREL(%rip), %r10                        #298.3
..LN1222:
        movl      %ecx, %r12d                                   #298.3
..LN1223:
        movq      d@GOTPCREL(%rip), %rsi                        #298.3
..LN1224:
	.loc    1  295  is_stmt 1
        movq      a@GOTPCREL(%rip), %rdi                        #295.3
..LN1225:
	.loc    1  298  is_stmt 1
        movq      %rdi, %r13                                    #298.3
..LN1226:
        movq      e@GOTPCREL(%rip), %r8                         #298.3
..LN1227:
        movq      %r8, %r14                                     #298.3
..LN1228:
        movq      aa@GOTPCREL(%rip), %r9                        #298.3
..LN1229:
        movq      %r9, %r15                                     #298.3
..LN1230:
        movq      bb@GOTPCREL(%rip), %rdx                       #298.3
..LN1231:
        movq      %rdx, %rbp                                    #298.3
..LN1232:
        movq      cc@GOTPCREL(%rip), %rax                       #298.3
..LN1233:
        movq      %rax, %rbx                                    #298.3
..LN1234:
        movq      %rsi, 16(%rsp)                                #298.3[spill]
..LN1235:
        movq      %r10, 24(%rsp)                                #298.3[spill]
..LN1236:
        movq      %r11, 8(%rsp)                                 #298.3[spill]
..LN1237:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.4:                         # Preds ..B8.7 ..B8.3
                                # Execution count [1.99e+05]
..L375:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1238:
	.loc    1  293  is_stmt 1
..LN1239:
	.loc    1  292  is_stmt 1
        movups    .L_2il0floatpacket.3(%rip), %xmm0             #292.2
..LN1240:
	.loc    1  295  is_stmt 1
        xorl      %esi, %esi                                    #295.3
..LN1241:
                                # LOE rbx rbp rsi r13 r14 r15 r12d xmm0
..B8.5:                         # Preds ..B8.5 ..B8.4
                                # Execution count [6.35e+09]
..L376:
                # optimization report
                # LOOP WAS UNROLLED BY 4
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 3.332031
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 1.250000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1242:
	.loc    1  296  is_stmt 1
        mulps     (%r13,%rsi,4), %xmm0                          #296.4
..LN1243:
        mulps     16(%r13,%rsi,4), %xmm0                        #296.4
..LN1244:
        mulps     32(%r13,%rsi,4), %xmm0                        #296.4
..LN1245:
        mulps     48(%r13,%rsi,4), %xmm0                        #296.4
..LN1246:
	.loc    1  295  is_stmt 1
        addq      $16, %rsi                                     #295.3
..LN1247:
        cmpq      $32000, %rsi                                  #295.3
..LN1248:
        jb        ..B8.5        # Prob 99%                      #295.3
..LN1249:
                                # LOE rbx rbp rsi r13 r14 r15 r12d xmm0
..B8.6:                         # Preds ..B8.5
                                # Execution count [1.99e+05]
..LN1250:
	.loc    1  292  is_stmt 1
        movaps    %xmm0, %xmm1                                  #292.2
..LN1251:
	.loc    1  298  is_stmt 1
        movq      %r13, %rdi                                    #298.3
..LN1252:
	.loc    1  292  is_stmt 1
        movhlps   %xmm0, %xmm1                                  #292.2
..LN1253:
	.loc    1  298  is_stmt 1
        movq      %r14, %r8                                     #298.3
..LN1254:
	.loc    1  292  is_stmt 1
        mulps     %xmm1, %xmm0                                  #292.2
..LN1255:
	.loc    1  298  is_stmt 1
        movq      %r15, %r9                                     #298.3
..LN1256:
	.loc    1  292  is_stmt 1
        movaps    %xmm0, %xmm2                                  #292.2
..LN1257:
        shufps    $245, %xmm0, %xmm2                            #292.2
..LN1258:
        mulss     %xmm2, %xmm0                                  #292.2
..LN1259:
	.loc    1  298  is_stmt 1
        pushq     %rbx                                          #298.3
	.cfi_def_cfa_offset 104
..LN1260:
        pushq     %rbp                                          #298.3
	.cfi_def_cfa_offset 112
..LN1261:
        movq      24(%rsp), %rsi                                #298.3[spill]
..LN1262:
        movq      40(%rsp), %rdx                                #298.3[spill]
..LN1263:
        movq      32(%rsp), %rcx                                #298.3[spill]
..LN1264:
	.loc    1  292  is_stmt 1
        movss     %xmm0, 48(%rsp)                               #292.2[spill]
..___tag_value_s312.379:
..LN1265:
	.loc    1  298  is_stmt 1
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #298.3
..___tag_value_s312.380:
..LN1266:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.15:                        # Preds ..B8.6
                                # Execution count [1.99e+05]
..LN1267:
        addq      $16, %rsp                                     #298.3
	.cfi_def_cfa_offset 96
..LN1268:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.7:                         # Preds ..B8.15
                                # Execution count [1.99e+05]
..LN1269:
	.loc    1  293  is_stmt 1
        incl      %r12d                                         #293.2
..LN1270:
        cmpl      $200000, %r12d                                #293.2
..LN1271:
        jb        ..B8.4        # Prob 99%                      #293.2
..LN1272:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.8:                         # Preds ..B8.7
                                # Execution count [1.00e+00]
..LN1273:
	.loc    1  300  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #300.10
..LN1274:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.9:                         # Preds ..B8.8
                                # Execution count [1.00e+00]
..LN1275:
	.loc    1  302  is_stmt 1
        subq      (%rsp), %rax                                  #302.2[spill]
..LN1276:
        pxor      %xmm0, %xmm0                                  #302.2
..LN1277:
        cvtsi2sdq %rax, %xmm0                                   #302.2
..LN1278:
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #302.2
..LN1279:
        lea       .L_2__STRING.8(%rip), %rdi                    #302.2
..LN1280:
        movl      $1, %eax                                      #302.2
..___tag_value_s312.382:
..LN1281:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #302.2
..___tag_value_s312.383:
..LN1282:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.10:                        # Preds ..B8.9
                                # Execution count [1.00e+00]
..LN1283:
	.loc    1  303  is_stmt 1
        movq      temp@GOTPCREL(%rip), %rax                     #303.2
..LN1284:
	.loc    1  304  is_stmt 1
        movl      $-1, %edi                                     #304.2
..LN1285:
	.loc    1  303  is_stmt 1
        movss     32(%rsp), %xmm0                               #303.2[spill]
..LN1286:
        movss     %xmm0, (%rax)                                 #303.2
..___tag_value_s312.384:
..LN1287:
	.loc    1  304  is_stmt 1
#       check(int)
        call      check@PLT                                     #304.2
..___tag_value_s312.385:
..LN1288:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.11:                        # Preds ..B8.10
                                # Execution count [1.00e+00]
..LN1289:
	.loc    1  305  is_stmt 1
        xorl      %eax, %eax                                    #305.9
..LN1290:
	.loc    1  305  epilogue_begin  is_stmt 1
        addq      $40, %rsp                                     #305.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1291:
        popq      %rbp                                          #305.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1292:
        popq      %rbx                                          #305.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1293:
        popq      %r15                                          #305.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1294:
        popq      %r14                                          #305.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1295:
        popq      %r13                                          #305.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1296:
        popq      %r12                                          #305.9
	.cfi_def_cfa_offset 8
..LN1297:
        ret                                                     #305.9
        .align    16,0x90
..LN1298:
                                # LOE
..LN1299:
	.cfi_endproc
# mark_end;
	.type	s312,@function
	.size	s312,.-s312
..LNs312.1300:
.LNs312:
	.data
# -- End  s312
	.text
.L_2__routine_start_s317_8:
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
..___tag_value_s317.403:
..L404:
                                                        #308.1
..LN1301:
	.loc    1  308  is_stmt 1
        pushq     %r12                                          #308.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1302:
        pushq     %r13                                          #308.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1303:
        pushq     %r14                                          #308.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1304:
        pushq     %r15                                          #308.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1305:
        pushq     %rbx                                          #308.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1306:
        pushq     %rbp                                          #308.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1307:
        subq      $40, %rsp                                     #308.1
	.cfi_def_cfa_offset 96
..LN1308:
	.loc    1  318  prologue_end  is_stmt 1
        lea       .L_2__STRING.9(%rip), %rdi                    #318.2
..___tag_value_s317.419:
..LN1309:
#       init(char *)
        call      init@PLT                                      #318.2
..___tag_value_s317.420:
..LN1310:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.2:                         # Preds ..B9.1
                                # Execution count [1.00e+00]
..LN1311:
	.loc    1  319  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #319.12
..LN1312:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.14:                        # Preds ..B9.2
                                # Execution count [1.00e+00]
..LN1313:
        movq      %rax, (%rsp)                                  #319.12[spill]
..LN1314:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.3:                         # Preds ..B9.14
                                # Execution count [4.86e+02]
..LN1315:
	.loc    1  327  is_stmt 1
        movq      a@GOTPCREL(%rip), %r11                        #327.3
..LN1316:
	.loc    1  322  is_stmt 1
        xorl      %ecx, %ecx                                    #322.2
..LN1317:
	.loc    1  327  is_stmt 1
        movq      c@GOTPCREL(%rip), %r10                        #327.3
..LN1318:
        movl      %ecx, %r13d                                   #327.3
..LN1319:
        movq      d@GOTPCREL(%rip), %rdi                        #327.3
..LN1320:
        movq      b@GOTPCREL(%rip), %rsi                        #327.3
..LN1321:
        movq      %rsi, %r14                                    #327.3
..LN1322:
        movq      e@GOTPCREL(%rip), %r8                         #327.3
..LN1323:
        movq      %r8, %r15                                     #327.3
..LN1324:
        movq      aa@GOTPCREL(%rip), %r9                        #327.3
..LN1325:
        movq      %r9, %rbp                                     #327.3
..LN1326:
        movq      bb@GOTPCREL(%rip), %rdx                       #327.3
..LN1327:
        movq      %rdx, %r12                                    #327.3
..LN1328:
        movq      cc@GOTPCREL(%rip), %rax                       #327.3
..LN1329:
        movq      %rax, %rbx                                    #327.3
..LN1330:
        movq      %rdi, 16(%rsp)                                #327.3[spill]
..LN1331:
        movq      %r10, 24(%rsp)                                #327.3[spill]
..LN1332:
        movq      %r11, 8(%rsp)                                 #327.3[spill]
..LN1333:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.4:                         # Preds ..B9.7 ..B9.3
                                # Execution count [3.97e+05]
..L421:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1334:
	.loc    1  322  is_stmt 1
..LN1335:
	.loc    1  321  is_stmt 1
        movups    .L_2il0floatpacket.3(%rip), %xmm0             #321.2
..LN1336:
	.loc    1  324  is_stmt 1
        xorl      %edi, %edi                                    #324.3
..LN1337:
        movups    .L_2il0floatpacket.4(%rip), %xmm1             #324.3
..LN1338:
                                # LOE rbx rbp r12 r14 r15 edi r13d xmm0 xmm1
..B9.5:                         # Preds ..B9.5 ..B9.4
                                # Execution count [6.36e+09]
..L422:
                # optimization report
                # LOOP WAS UNROLLED BY 4
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 2.664062
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 1.250000
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1339:
	.loc    1  325  is_stmt 1
        mulps     %xmm1, %xmm0                                  #325.4
..LN1340:
	.loc    1  324  is_stmt 1
        addl      $16, %edi                                     #324.3
..LN1341:
	.loc    1  325  is_stmt 1
        mulps     %xmm1, %xmm0                                  #325.4
..LN1342:
        mulps     %xmm1, %xmm0                                  #325.4
..LN1343:
        mulps     %xmm1, %xmm0                                  #325.4
..LN1344:
	.loc    1  324  is_stmt 1
        cmpl      $16000, %edi                                  #324.3
..LN1345:
        jb        ..B9.5        # Prob 99%                      #324.3
..LN1346:
                                # LOE rbx rbp r12 r14 r15 edi r13d xmm0 xmm1
..B9.6:                         # Preds ..B9.5
                                # Execution count [3.97e+05]
..LN1347:
	.loc    1  321  is_stmt 1
        movaps    %xmm0, %xmm1                                  #321.2
..LN1348:
	.loc    1  327  is_stmt 1
        movq      %r14, %rsi                                    #327.3
..LN1349:
	.loc    1  321  is_stmt 1
        movhlps   %xmm0, %xmm1                                  #321.2
..LN1350:
	.loc    1  327  is_stmt 1
        movq      %r15, %r8                                     #327.3
..LN1351:
	.loc    1  321  is_stmt 1
        mulps     %xmm1, %xmm0                                  #321.2
..LN1352:
	.loc    1  327  is_stmt 1
        movq      %rbp, %r9                                     #327.3
..LN1353:
	.loc    1  321  is_stmt 1
        movaps    %xmm0, %xmm2                                  #321.2
..LN1354:
        shufps    $245, %xmm0, %xmm2                            #321.2
..LN1355:
        mulss     %xmm2, %xmm0                                  #321.2
..LN1356:
	.loc    1  327  is_stmt 1
        pushq     %rbx                                          #327.3
	.cfi_def_cfa_offset 104
..LN1357:
        pushq     %r12                                          #327.3
	.cfi_def_cfa_offset 112
..LN1358:
        movq      24(%rsp), %rdi                                #327.3[spill]
..LN1359:
        movq      40(%rsp), %rdx                                #327.3[spill]
..LN1360:
        movq      32(%rsp), %rcx                                #327.3[spill]
..LN1361:
	.loc    1  321  is_stmt 1
        movss     %xmm0, 48(%rsp)                               #321.2[spill]
..___tag_value_s317.425:
..LN1362:
	.loc    1  327  is_stmt 1
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #327.3
..___tag_value_s317.426:
..LN1363:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.15:                        # Preds ..B9.6
                                # Execution count [3.97e+05]
..LN1364:
        addq      $16, %rsp                                     #327.3
	.cfi_def_cfa_offset 96
..LN1365:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.7:                         # Preds ..B9.15
                                # Execution count [3.97e+05]
..LN1366:
	.loc    1  322  is_stmt 1
        incl      %r13d                                         #322.2
..LN1367:
        cmpl      $400000, %r13d                                #322.2
..LN1368:
        jb        ..B9.4        # Prob 99%                      #322.2
..LN1369:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.8:                         # Preds ..B9.7
                                # Execution count [1.00e+00]
..LN1370:
	.loc    1  329  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #329.10
..LN1371:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.9:                         # Preds ..B9.8
                                # Execution count [1.00e+00]
..LN1372:
	.loc    1  331  is_stmt 1
        subq      (%rsp), %rax                                  #331.2[spill]
..LN1373:
        pxor      %xmm0, %xmm0                                  #331.2
..LN1374:
        cvtsi2sdq %rax, %xmm0                                   #331.2
..LN1375:
        mulsd     .L_2il0floatpacket.0(%rip), %xmm0             #331.2
..LN1376:
        lea       .L_2__STRING.10(%rip), %rdi                   #331.2
..LN1377:
        movl      $1, %eax                                      #331.2
..___tag_value_s317.428:
..LN1378:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #331.2
..___tag_value_s317.429:
..LN1379:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.10:                        # Preds ..B9.9
                                # Execution count [1.00e+00]
..LN1380:
	.loc    1  332  is_stmt 1
        movq      temp@GOTPCREL(%rip), %rax                     #332.2
..LN1381:
	.loc    1  333  is_stmt 1
        movl      $-1, %edi                                     #333.2
..LN1382:
	.loc    1  332  is_stmt 1
        movss     32(%rsp), %xmm0                               #332.2[spill]
..LN1383:
        movss     %xmm0, (%rax)                                 #332.2
..___tag_value_s317.430:
..LN1384:
	.loc    1  333  is_stmt 1
#       check(int)
        call      check@PLT                                     #333.2
..___tag_value_s317.431:
..LN1385:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.11:                        # Preds ..B9.10
                                # Execution count [1.00e+00]
..LN1386:
	.loc    1  334  is_stmt 1
        xorl      %eax, %eax                                    #334.9
..LN1387:
	.loc    1  334  epilogue_begin  is_stmt 1
        addq      $40, %rsp                                     #334.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1388:
        popq      %rbp                                          #334.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1389:
        popq      %rbx                                          #334.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1390:
        popq      %r15                                          #334.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1391:
        popq      %r14                                          #334.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1392:
        popq      %r13                                          #334.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1393:
        popq      %r12                                          #334.9
	.cfi_def_cfa_offset 8
..LN1394:
        ret                                                     #334.9
        .align    16,0x90
..LN1395:
                                # LOE
..LN1396:
	.cfi_endproc
# mark_end;
	.type	s317,@function
	.size	s317,.-s317
..LNs317.1397:
.LNs317:
	.data
# -- End  s317
	.text
.L_2__routine_start_set1d_9:
# -- Begin  set1d
	.text
# mark_begin;
       .align    16,0x90
	.globl set1d
# --- set1d(float *, float, int)
set1d:
# parameter 1(arr): %rdi
# parameter 2(value): %xmm0
# parameter 3(stride): %esi
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set1d.449:
..L450:
                                                        #78.1
..LN1398:
	.loc    1  78  is_stmt 1
        movslq    %esi, %rcx                                    #78.1
..LN1399:
	.loc    1  79  prologue_end  is_stmt 1
        cmpl      $-1, %esi                                     #79.6
..LN1400:
        jne       ..B10.18      # Prob 66%                      #79.6
..LN1401:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.2:                        # Preds ..B10.1
                                # Execution count [3.33e-01]
..LN1402:
	.loc    1  80  is_stmt 1
        movq      %rdi, %rdx                                    #80.3
..LN1403:
        andq      $15, %rdx                                     #80.3
..LN1404:
        testl     %edx, %edx                                    #80.3
..LN1405:
        je        ..B10.7       # Prob 50%                      #80.3
..LN1406:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B10.3:                        # Preds ..B10.2
                                # Execution count [3.33e-01]
..LN1407:
        testb     $3, %dl                                       #80.3
..LN1408:
        jne       ..B10.41      # Prob 10%                      #80.3
..LN1409:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B10.4:                        # Preds ..B10.3
                                # Execution count [3.32e-01]
..LN1410:
        negl      %edx                                          #80.3
..LN1411:
        xorl      %ecx, %ecx                                    #80.3
..LN1412:
        addl      $16, %edx                                     #80.3
..LN1413:
        xorl      %eax, %eax                                    #80.3
..LN1414:
        shrl      $2, %edx                                      #80.3
..LN1415:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B10.5:                        # Preds ..B10.5 ..B10.4
                                # Execution count [1.07e+04]
..L452:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN1416:
	.loc    1  81  is_stmt 1
        incl      %ecx                                          #81.29
..LN1417:
        pxor      %xmm0, %xmm0                                  #81.29
..LN1418:
        cvtsi2ss  %ecx, %xmm0                                   #81.29
..LN1419:
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #81.29
..LN1420:
        divss     %xmm0, %xmm1                                  #81.29
..LN1421:
        movss     %xmm1, (%rdi,%rax,4)                          #81.4
..LN1422:
        incq      %rax                                          #81.29
..LN1423:
	.loc    1  80  is_stmt 1
        cmpl      %edx, %ecx                                    #80.3
..LN1424:
        jb        ..B10.5       # Prob 99%                      #80.3
..LN1425:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B10.7:                        # Preds ..B10.5 ..B10.2
                                # Execution count [3.32e-01]
..LN1426:
        movl      %edx, %esi                                    #80.3
..LN1427:
	.loc    1  81  is_stmt 1
        lea       1(%rdx), %ecx                                 #81.29
..LN1428:
	.loc    1  80  is_stmt 1
        negl      %esi                                          #80.3
..LN1429:
	.loc    1  81  is_stmt 1
        lea       2(%rdx), %r9d                                 #81.29
..LN1430:
	.loc    1  80  is_stmt 1
        andl      $15, %esi                                     #80.3
..LN1431:
	.loc    1  81  is_stmt 1
        lea       3(%rdx), %r10d                                #81.29
..LN1432:
	.loc    1  80  is_stmt 1
        negl      %esi                                          #80.3
..LN1433:
	.loc    1  81  is_stmt 1
        lea       4(%rdx), %r11d                                #81.29
..LN1434:
        movl      $4, %eax                                      #81.29
..LN1435:
        movd      %ecx, %xmm1                                   #81.29
..LN1436:
        movd      %r9d, %xmm2                                   #81.29
..LN1437:
        movd      %r10d, %xmm4                                  #81.29
..LN1438:
        movd      %r11d, %xmm3                                  #81.29
..LN1439:
	.loc    1  80  is_stmt 1
        lea       32000(%rsi), %r8d                             #80.3
..LN1440:
	.loc    1  81  is_stmt 1
        punpcklqdq %xmm2, %xmm1                                 #81.29
..LN1441:
        movd      %eax, %xmm0                                   #81.29
..LN1442:
        punpcklqdq %xmm3, %xmm4                                 #81.29
..LN1443:
	.loc    1  80  is_stmt 1
        movl      %r8d, %eax                                    #80.3
..LN1444:
	.loc    1  81  is_stmt 1
        pshufd    $0, %xmm0, %xmm0                              #81.29
..LN1445:
        shufps    $136, %xmm4, %xmm1                            #81.29
..LN1446:
	.loc    1  80  is_stmt 1
        movl      %edx, %edx                                    #80.3
        .align    16,0x90
..LN1447:
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B10.8:                        # Preds ..B10.8 ..B10.7
                                # Execution count [1.07e+04]
..L453:
                # optimization report
                # LOOP WAS UNROLLED BY 4
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 3.552734
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.078125
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1448:
	.loc    1  81  is_stmt 1
        cvtdq2ps  %xmm1, %xmm2                                  #81.29
..LN1449:
        paddd     %xmm0, %xmm1                                  #81.29
..LN1450:
        cvtdq2ps  %xmm1, %xmm4                                  #81.29
..LN1451:
        rcpps     %xmm2, %xmm3                                  #81.29
..LN1452:
        rcpps     %xmm4, %xmm5                                  #81.29
..LN1453:
        mulps     %xmm3, %xmm2                                  #81.29
..LN1454:
        mulps     %xmm5, %xmm4                                  #81.29
..LN1455:
        mulps     %xmm3, %xmm2                                  #81.29
..LN1456:
        addps     %xmm3, %xmm3                                  #81.29
..LN1457:
        mulps     %xmm5, %xmm4                                  #81.29
..LN1458:
        addps     %xmm5, %xmm5                                  #81.29
..LN1459:
        subps     %xmm2, %xmm3                                  #81.29
..LN1460:
        subps     %xmm4, %xmm5                                  #81.29
..LN1461:
        paddd     %xmm0, %xmm1                                  #81.29
..LN1462:
        cvtdq2ps  %xmm1, %xmm6                                  #81.29
..LN1463:
        paddd     %xmm0, %xmm1                                  #81.29
..LN1464:
        cvtdq2ps  %xmm1, %xmm8                                  #81.29
..LN1465:
        rcpps     %xmm6, %xmm7                                  #81.29
..LN1466:
        rcpps     %xmm8, %xmm9                                  #81.29
..LN1467:
        mulps     %xmm7, %xmm6                                  #81.29
..LN1468:
        mulps     %xmm9, %xmm8                                  #81.29
..LN1469:
        mulps     %xmm7, %xmm6                                  #81.29
..LN1470:
        addps     %xmm7, %xmm7                                  #81.29
..LN1471:
        mulps     %xmm9, %xmm8                                  #81.29
..LN1472:
        addps     %xmm9, %xmm9                                  #81.29
..LN1473:
        subps     %xmm6, %xmm7                                  #81.29
..LN1474:
        subps     %xmm8, %xmm9                                  #81.29
..LN1475:
        movups    %xmm3, (%rdi,%rdx,4)                          #81.4
..LN1476:
        paddd     %xmm0, %xmm1                                  #81.29
..LN1477:
        movups    %xmm5, 16(%rdi,%rdx,4)                        #81.4
..LN1478:
        movups    %xmm7, 32(%rdi,%rdx,4)                        #81.4
..LN1479:
        movups    %xmm9, 48(%rdi,%rdx,4)                        #81.4
..LN1480:
	.loc    1  80  is_stmt 1
        addq      $16, %rdx                                     #80.3
..LN1481:
        cmpq      %rax, %rdx                                    #80.3
..LN1482:
        jb        ..B10.8       # Prob 99%                      #80.3
..LN1483:
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B10.9:                        # Preds ..B10.8
                                # Execution count [3.00e-01]
..LN1484:
        lea       32001(%rsi), %r9d                             #80.3
..LN1485:
        cmpl      $32000, %r9d                                  #80.3
..LN1486:
        ja        ..B10.40      # Prob 50%                      #80.3
..LN1487:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm0
..B10.10:                       # Preds ..B10.9
                                # Execution count [3.16e-01]
..LN1488:
        movl      %r8d, %edx                                    #80.3
..LN1489:
        negl      %edx                                          #80.3
..LN1490:
        addl      $32000, %edx                                  #80.3
..LN1491:
        cmpl      $4, %edx                                      #80.3
..LN1492:
        jb        ..B10.42      # Prob 10%                      #80.3
..LN1493:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx esi r8d r9d xmm0
..B10.11:                       # Preds ..B10.10
                                # Execution count [3.32e-01]
..LN1494:
	.loc    1  81  is_stmt 1
        movd      %r9d, %xmm1                                   #81.29
..LN1495:
        lea       32002(%rsi), %r10d                            #81.29
..LN1496:
	.loc    1  80  is_stmt 1
        movl      %edx, %ecx                                    #80.3
..LN1497:
	.loc    1  81  is_stmt 1
        lea       32003(%rsi), %r11d                            #81.29
..LN1498:
        addl      $32004, %esi                                  #81.29
..LN1499:
	.loc    1  80  is_stmt 1
        andl      $-4, %ecx                                     #80.3
..LN1500:
	.loc    1  81  is_stmt 1
        movd      %r10d, %xmm2                                  #81.29
..LN1501:
        movd      %r11d, %xmm4                                  #81.29
..LN1502:
        movd      %esi, %xmm3                                   #81.29
..LN1503:
	.loc    1  80  is_stmt 1
        xorl      %esi, %esi                                    #80.3
..LN1504:
	.loc    1  81  is_stmt 1
        punpcklqdq %xmm2, %xmm1                                 #81.29
..LN1505:
        punpcklqdq %xmm3, %xmm4                                 #81.29
..LN1506:
        shufps    $136, %xmm4, %xmm1                            #81.29
..LN1507:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B10.12:                       # Preds ..B10.12 ..B10.11
                                # Execution count [1.07e+04]
..L454:
                # optimization report
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 2.173828
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.281250
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1508:
	.loc    1  80  is_stmt 1
..LN1509:
	.loc    1  81  is_stmt 1
        cvtdq2ps  %xmm1, %xmm2                                  #81.29
..LN1510:
        rcpps     %xmm2, %xmm3                                  #81.29
..LN1511:
        mulps     %xmm3, %xmm2                                  #81.29
..LN1512:
	.loc    1  80  is_stmt 1
        addl      $4, %esi                                      #80.3
..LN1513:
	.loc    1  81  is_stmt 1
        mulps     %xmm3, %xmm2                                  #81.29
..LN1514:
        addps     %xmm3, %xmm3                                  #81.29
..LN1515:
        paddd     %xmm0, %xmm1                                  #81.29
..LN1516:
        subps     %xmm2, %xmm3                                  #81.29
..LN1517:
        movups    %xmm3, (%rdi,%rax,4)                          #81.4
..LN1518:
	.loc    1  80  is_stmt 1
        addq      $4, %rax                                      #80.3
..LN1519:
        cmpl      %ecx, %esi                                    #80.3
..LN1520:
        jb        ..B10.12      # Prob 99%                      #80.3
..LN1521:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B10.14:                       # Preds ..B10.12 ..B10.42 ..B10.41
                                # Execution count [3.33e-01]
..LN1522:
        addl      %ecx, %r8d                                    #80.3
..LN1523:
        movslq    %r8d, %rax                                    #80.3
..LN1524:
        cmpl      %edx, %ecx                                    #80.3
..LN1525:
        jae       ..B10.40      # Prob 0%                       #80.3
..LN1526:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.16:                       # Preds ..B10.14 ..B10.16
                                # Execution count [1.07e+04]
..L455:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 2.173828
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.281250
..LN1527:
	.loc    1  81  is_stmt 1
        incl      %r8d                                          #81.29
..LN1528:
        pxor      %xmm0, %xmm0                                  #81.29
..LN1529:
        cvtsi2ss  %r8d, %xmm0                                   #81.29
..LN1530:
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #81.29
..LN1531:
	.loc    1  80  is_stmt 1
        incl      %ecx                                          #80.3
..LN1532:
	.loc    1  81  is_stmt 1
        divss     %xmm0, %xmm1                                  #81.29
..LN1533:
        movss     %xmm1, (%rdi,%rax,4)                          #81.4
..LN1534:
	.loc    1  80  is_stmt 1
        incq      %rax                                          #80.3
..LN1535:
        cmpl      %edx, %ecx                                    #80.3
..LN1536:
        jb        ..B10.16      # Prob 99%                      #80.3
..LN1537:
        jmp       ..B10.40      # Prob 100%                     #80.3
..LN1538:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.18:                       # Preds ..B10.1
                                # Execution count [6.67e-01]
..LN1539:
	.loc    1  79  is_stmt 1
        cmpl      $-2, %esi                                     #79.6
..LN1540:
        jne       ..B10.35      # Prob 50%                      #79.6
..LN1541:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.19:                       # Preds ..B10.18
                                # Execution count [3.33e-01]
..LN1542:
	.loc    1  84  is_stmt 1
        movq      %rdi, %rax                                    #84.3
..LN1543:
        andq      $15, %rax                                     #84.3
..LN1544:
        testl     %eax, %eax                                    #84.3
..LN1545:
        je        ..B10.24      # Prob 50%                      #84.3
..LN1546:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.20:                       # Preds ..B10.19
                                # Execution count [3.33e-01]
..LN1547:
        testb     $3, %al                                       #84.3
..LN1548:
        jne       ..B10.43      # Prob 10%                      #84.3
..LN1549:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.21:                       # Preds ..B10.20
                                # Execution count [3.33e-01]
..LN1550:
        negl      %eax                                          #84.3
..LN1551:
        xorl      %ecx, %ecx                                    #84.3
..LN1552:
        addl      $16, %eax                                     #84.3
..LN1553:
        xorl      %edx, %edx                                    #84.3
..LN1554:
        shrl      $2, %eax                                      #84.3
..LN1555:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B10.22:                       # Preds ..B10.22 ..B10.21
                                # Execution count [1.07e+04]
..L456:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN1556:
	.loc    1  85  is_stmt 1
        incl      %ecx                                          #85.30
..LN1557:
        pxor      %xmm0, %xmm0                                  #85.38
..LN1558:
        movl      %ecx, %esi                                    #85.38
..LN1559:
        imull     %ecx, %esi                                    #85.38
..LN1560:
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #85.38
..LN1561:
        cvtsi2ss  %esi, %xmm0                                   #85.38
..LN1562:
        divss     %xmm0, %xmm1                                  #85.38
..LN1563:
        movss     %xmm1, (%rdi,%rdx,4)                          #85.4
..LN1564:
        incq      %rdx                                          #85.30
..LN1565:
	.loc    1  84  is_stmt 1
        cmpl      %eax, %ecx                                    #84.3
..LN1566:
        jb        ..B10.22      # Prob 99%                      #84.3
..LN1567:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B10.24:                       # Preds ..B10.22 ..B10.19
                                # Execution count [3.33e-01]
..LN1568:
        movl      %eax, %esi                                    #84.3
..LN1569:
	.loc    1  85  is_stmt 1
        movl      $4, %edx                                      #85.30
..LN1570:
	.loc    1  84  is_stmt 1
        negl      %esi                                          #84.3
..LN1571:
	.loc    1  85  is_stmt 1
        lea       1(%rax), %ecx                                 #85.30
..LN1572:
	.loc    1  84  is_stmt 1
        andl      $15, %esi                                     #84.3
..LN1573:
	.loc    1  85  is_stmt 1
        lea       2(%rax), %r9d                                 #85.30
..LN1574:
	.loc    1  84  is_stmt 1
        negl      %esi                                          #84.3
..LN1575:
	.loc    1  85  is_stmt 1
        lea       3(%rax), %r10d                                #85.30
..LN1576:
        movd      %edx, %xmm0                                   #85.30
..LN1577:
        lea       4(%rax), %r11d                                #85.30
..LN1578:
        pshufd    $0, %xmm0, %xmm2                              #85.30
..LN1579:
        movd      %ecx, %xmm0                                   #85.30
..LN1580:
        movd      %r9d, %xmm1                                   #85.30
..LN1581:
        movd      %r10d, %xmm4                                  #85.30
..LN1582:
	.loc    1  84  is_stmt 1
        lea       32000(%rsi), %r8d                             #84.3
..LN1583:
	.loc    1  85  is_stmt 1
        movd      %r11d, %xmm3                                  #85.30
..LN1584:
	.loc    1  84  is_stmt 1
        movl      %r8d, %edx                                    #84.3
..LN1585:
	.loc    1  85  is_stmt 1
        punpcklqdq %xmm1, %xmm0                                 #85.30
..LN1586:
        punpcklqdq %xmm3, %xmm4                                 #85.30
..LN1587:
        shufps    $136, %xmm4, %xmm0                            #85.30
..LN1588:
	.loc    1  84  is_stmt 1
        movl      %eax, %eax                                    #84.3
..LN1589:
	.loc    1  85  is_stmt 1
        movdqu    .L_2il0floatpacket.5(%rip), %xmm1             #85.38
..LN1590:
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B10.25:                       # Preds ..B10.25 ..B10.24
                                # Execution count [1.07e+04]
..L457:
                # optimization report
                # LOOP WAS UNROLLED BY 4
                # LOOP WAS VECTORIZED
                # VECTORIZATION SPEEDUP COEFFECIENT 3.396484
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.078125
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1591:
	.loc    1  84  is_stmt 1
..LN1592:
	.loc    1  85  is_stmt 1
        movaps    %xmm0, %xmm3                                  #85.38
..LN1593:
        movaps    %xmm0, %xmm4                                  #85.38
..LN1594:
        psrlq     $32, %xmm3                                    #85.38
..LN1595:
        pmuludq   %xmm0, %xmm4                                  #85.38
..LN1596:
        paddd     %xmm2, %xmm0                                  #85.30
..LN1597:
        pmuludq   %xmm3, %xmm3                                  #85.38
..LN1598:
        pand      %xmm1, %xmm4                                  #85.38
..LN1599:
        psllq     $32, %xmm3                                    #85.38
..LN1600:
        por       %xmm3, %xmm4                                  #85.38
..LN1601:
        movaps    %xmm0, %xmm8                                  #85.38
..LN1602:
        cvtdq2ps  %xmm4, %xmm5                                  #85.38
..LN1603:
        pmuludq   %xmm0, %xmm8                                  #85.38
..LN1604:
        rcpps     %xmm5, %xmm6                                  #85.38
..LN1605:
        movaps    %xmm0, %xmm7                                  #85.38
..LN1606:
        paddd     %xmm2, %xmm0                                  #85.30
..LN1607:
        movaps    %xmm0, %xmm12                                 #85.38
..LN1608:
        movaps    %xmm0, %xmm11                                 #85.38
..LN1609:
        pmuludq   %xmm0, %xmm12                                 #85.38
..LN1610:
        paddd     %xmm2, %xmm0                                  #85.30
..LN1611:
        mulps     %xmm6, %xmm5                                  #85.38
..LN1612:
        movaps    %xmm0, %xmm15                                 #85.38
..LN1613:
        psrlq     $32, %xmm7                                    #85.38
..LN1614:
        psrlq     $32, %xmm11                                   #85.38
..LN1615:
        psrlq     $32, %xmm15                                   #85.38
..LN1616:
        movaps    %xmm0, %xmm3                                  #85.38
..LN1617:
        pand      %xmm1, %xmm8                                  #85.38
..LN1618:
        pmuludq   %xmm7, %xmm7                                  #85.38
..LN1619:
        pand      %xmm1, %xmm12                                 #85.38
..LN1620:
        mulps     %xmm6, %xmm5                                  #85.38
..LN1621:
        addps     %xmm6, %xmm6                                  #85.38
..LN1622:
        pmuludq   %xmm11, %xmm11                                #85.38
..LN1623:
        pmuludq   %xmm0, %xmm3                                  #85.38
..LN1624:
        pmuludq   %xmm15, %xmm15                                #85.38
..LN1625:
        subps     %xmm5, %xmm6                                  #85.38
..LN1626:
        psllq     $32, %xmm7                                    #85.38
..LN1627:
        psllq     $32, %xmm11                                   #85.38
..LN1628:
        pand      %xmm1, %xmm3                                  #85.38
..LN1629:
        psllq     $32, %xmm15                                   #85.38
..LN1630:
        por       %xmm7, %xmm8                                  #85.38
..LN1631:
        por       %xmm11, %xmm12                                #85.38
..LN1632:
        por       %xmm15, %xmm3                                 #85.38
..LN1633:
        paddd     %xmm2, %xmm0                                  #85.30
..LN1634:
        cvtdq2ps  %xmm8, %xmm9                                  #85.38
..LN1635:
        cvtdq2ps  %xmm12, %xmm13                                #85.38
..LN1636:
        cvtdq2ps  %xmm3, %xmm4                                  #85.38
..LN1637:
        rcpps     %xmm9, %xmm10                                 #85.38
..LN1638:
        rcpps     %xmm13, %xmm14                                #85.38
..LN1639:
        rcpps     %xmm4, %xmm5                                  #85.38
..LN1640:
        mulps     %xmm10, %xmm9                                 #85.38
..LN1641:
        mulps     %xmm14, %xmm13                                #85.38
..LN1642:
        mulps     %xmm5, %xmm4                                  #85.38
..LN1643:
        mulps     %xmm10, %xmm9                                 #85.38
..LN1644:
        addps     %xmm10, %xmm10                                #85.38
..LN1645:
        mulps     %xmm14, %xmm13                                #85.38
..LN1646:
        addps     %xmm14, %xmm14                                #85.38
..LN1647:
        mulps     %xmm5, %xmm4                                  #85.38
..LN1648:
        addps     %xmm5, %xmm5                                  #85.38
..LN1649:
        subps     %xmm9, %xmm10                                 #85.38
..LN1650:
        subps     %xmm13, %xmm14                                #85.38
..LN1651:
        subps     %xmm4, %xmm5                                  #85.38
..LN1652:
        movups    %xmm6, (%rdi,%rax,4)                          #85.4
..LN1653:
        movups    %xmm10, 16(%rdi,%rax,4)                       #85.4
..LN1654:
        movups    %xmm14, 32(%rdi,%rax,4)                       #85.4
..LN1655:
        movups    %xmm5, 48(%rdi,%rax,4)                        #85.4
..LN1656:
	.loc    1  84  is_stmt 1
        addq      $16, %rax                                     #84.3
..LN1657:
        cmpq      %rdx, %rax                                    #84.3
..LN1658:
        jb        ..B10.25      # Prob 99%                      #84.3
..LN1659:
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B10.26:                       # Preds ..B10.25
                                # Execution count [3.00e-01]
..LN1660:
        lea       32001(%rsi), %r9d                             #84.3
..LN1661:
        cmpl      $32000, %r9d                                  #84.3
..LN1662:
        ja        ..B10.40      # Prob 50%                      #84.3
..LN1663:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm1 xmm2
..B10.27:                       # Preds ..B10.26
                                # Execution count [3.16e-01]
..LN1664:
        movl      %r8d, %eax                                    #84.3
..LN1665:
        negl      %eax                                          #84.3
..LN1666:
        addl      $32000, %eax                                  #84.3
..LN1667:
        cmpl      $4, %eax                                      #84.3
..LN1668:
        jb        ..B10.44      # Prob 10%                      #84.3
..LN1669:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax esi r8d r9d xmm1 xmm2
..B10.28:                       # Preds ..B10.27
                                # Execution count [3.33e-01]
..LN1670:
	.loc    1  85  is_stmt 1
        movd      %r9d, %xmm0                                   #85.30
..LN1671:
        lea       32002(%rsi), %r10d                            #85.30
..LN1672:
	.loc    1  84  is_stmt 1
        movl      %eax, %ecx                                    #84.3
..LN1673:
	.loc    1  85  is_stmt 1
        lea       32003(%rsi), %r11d                            #85.30
..LN1674:
        addl      $32004, %esi                                  #85.30
..LN1675:
	.loc    1  84  is_stmt 1
        andl      $-4, %ecx                                     #84.3
..LN1676:
	.loc    1  85  is_stmt 1
        movd      %r10d, %xmm3                                  #85.30
..LN1677:
        movd      %r11d, %xmm5                                  #85.30
..LN1678:
        movd      %esi, %xmm4                                   #85.30
..LN1679:
	.loc    1  84  is_stmt 1
        xorl      %esi, %esi                                    #84.3
..LN1680:
	.loc    1  85  is_stmt 1
        punpcklqdq %xmm3, %xmm0                                 #85.30
..LN1681:
        punpcklqdq %xmm4, %xmm5                                 #85.30
..LN1682:
        shufps    $136, %xmm5, %xmm0                            #85.30
        .align    16,0x90
..LN1683:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B10.29:                       # Preds ..B10.29 ..B10.28
                                # Execution count [1.07e+04]
..L458:
                # optimization report
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 2.125000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.281250
                # MAIN VECTOR TYPE: 32-bits floating point
..LN1684:
	.loc    1  84  is_stmt 1
..LN1685:
	.loc    1  85  is_stmt 1
        movaps    %xmm0, %xmm3                                  #85.38
..LN1686:
        movaps    %xmm0, %xmm4                                  #85.38
..LN1687:
        psrlq     $32, %xmm3                                    #85.38
..LN1688:
	.loc    1  84  is_stmt 1
        addl      $4, %esi                                      #84.3
..LN1689:
	.loc    1  85  is_stmt 1
        pmuludq   %xmm0, %xmm4                                  #85.38
..LN1690:
        paddd     %xmm2, %xmm0                                  #85.30
..LN1691:
        pmuludq   %xmm3, %xmm3                                  #85.38
..LN1692:
        pand      %xmm1, %xmm4                                  #85.38
..LN1693:
        psllq     $32, %xmm3                                    #85.38
..LN1694:
        por       %xmm3, %xmm4                                  #85.38
..LN1695:
        cvtdq2ps  %xmm4, %xmm5                                  #85.38
..LN1696:
        rcpps     %xmm5, %xmm6                                  #85.38
..LN1697:
        mulps     %xmm6, %xmm5                                  #85.38
..LN1698:
        mulps     %xmm6, %xmm5                                  #85.38
..LN1699:
        addps     %xmm6, %xmm6                                  #85.38
..LN1700:
        subps     %xmm5, %xmm6                                  #85.38
..LN1701:
        movups    %xmm6, (%rdi,%rdx,4)                          #85.4
..LN1702:
	.loc    1  84  is_stmt 1
        addq      $4, %rdx                                      #84.3
..LN1703:
        cmpl      %ecx, %esi                                    #84.3
..LN1704:
        jb        ..B10.29      # Prob 99%                      #84.3
..LN1705:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B10.31:                       # Preds ..B10.29 ..B10.44 ..B10.43
                                # Execution count [3.33e-01]
..LN1706:
        addl      %ecx, %r8d                                    #84.3
..LN1707:
        movslq    %r8d, %rdx                                    #84.3
..LN1708:
        cmpl      %eax, %ecx                                    #84.3
..LN1709:
        jae       ..B10.40      # Prob 0%                       #84.3
..LN1710:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.33:                       # Preds ..B10.31 ..B10.33
                                # Execution count [1.07e+04]
..L459:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 2.125000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.281250
..LN1711:
	.loc    1  85  is_stmt 1
        incl      %r8d                                          #85.38
..LN1712:
        pxor      %xmm0, %xmm0                                  #85.38
..LN1713:
        movl      %r8d, %esi                                    #85.38
..LN1714:
	.loc    1  84  is_stmt 1
        incl      %ecx                                          #84.3
..LN1715:
	.loc    1  85  is_stmt 1
        imull     %r8d, %esi                                    #85.38
..LN1716:
        movss     .L_2il0floatpacket.2(%rip), %xmm1             #85.38
..LN1717:
        cvtsi2ss  %esi, %xmm0                                   #85.38
..LN1718:
        divss     %xmm0, %xmm1                                  #85.38
..LN1719:
        movss     %xmm1, (%rdi,%rdx,4)                          #85.4
..LN1720:
	.loc    1  84  is_stmt 1
        incq      %rdx                                          #84.3
..LN1721:
        cmpl      %eax, %ecx                                    #84.3
..LN1722:
        jb        ..B10.33      # Prob 99%                      #84.3
..LN1723:
        jmp       ..B10.40      # Prob 100%                     #84.3
..LN1724:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.35:                       # Preds ..B10.18
                                # Execution count [0.00e+00]
..LN1725:
	.loc    1  88  is_stmt 1
        testl     %esi, %esi                                    #88.3
..LN1726:
        jne       ..B10.37      # Prob 50%                      #88.3
..LN1727:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.36:                       # Preds ..B10.35
                                # Execution count [3.33e-01]
..LN1728:
	.loc    1  89  is_stmt 1
        movss     %xmm0, (%rdi)                                 #89.4
..LN1729:
        jmp       ..B10.40      # Prob 100%                     #89.4
..LN1730:
                                # LOE rbx rbp r12 r13 r14 r15
..B10.37:                       # Preds ..B10.35
                                # Execution count [3.33e-01]
..LN1731:
	.loc    1  88  is_stmt 1
        xorl      %r8d, %r8d                                    #88.3
..LN1732:
        lea       31999(%rcx), %rax                             #88.23
..LN1733:
        cmpq      $-1, %rcx                                     #88.23
..LN1734:
        je        ..B10.49      # Prob 2%                       #88.23
..LN1735:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B10.50:                       # Preds ..B10.37
                                # Execution count [3.33e-01]
..LN1736:
        movslq    %eax, %rdx                                    #88.23
..LN1737:
        cmpq      %rax, %rdx                                    #88.23
..LN1738:
        jne       ..B10.49      # Prob 2%                       #88.23
..LN1739:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B10.48:                       # Preds ..B10.50
                                # Execution count [3.33e-01]
..LN1740:
        cltd                                                    #88.23
..LN1741:
        idivl     %esi                                          #88.23
..LN1742:
        movslq    %eax, %rax                                    #88.23
..LN1743:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
..B10.47:                       # Preds ..B10.49 ..B10.48
                                # Execution count [3.33e-01]
..LN1744:
        movl      %eax, %edx                                    #88.23
..LN1745:
	.loc    1  89  is_stmt 1
        xorl      %eax, %eax                                    #89.4
..LN1746:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B10.38:                       # Preds ..B10.38 ..B10.47
                                # Execution count [1.85e+00]
..L460:
                # optimization report
                # MULTIVERSIONED FOR ASSUMED DEPENDENCIES IN STRIDES, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.459961
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.042969
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1747:
	.loc    1  88  is_stmt 1
        incl      %r8d                                          #88.3
..LN1748:
	.loc    1  89  is_stmt 1
        movss     %xmm0, (%rdi,%rax,4)                          #89.4
..LN1749:
	.loc    1  88  is_stmt 1
        addq      %rcx, %rax                                    #88.3
..LN1750:
        cmpl      %edx, %r8d                                    #88.3
..LN1751:
        jl        ..B10.38      # Prob 82%                      #88.3
..LN1752:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B10.40:                       # Preds ..B10.38 ..B10.33 ..B10.16 ..B10.31 ..B10.9
                                #       ..B10.14 ..B10.26 ..B10.36
                                # Execution count [1.00e+00]
..LN1753:
	.loc    1  92  is_stmt 1
        xorl      %eax, %eax                                    #92.9
..LN1754:
	.loc    1  92  epilogue_begin  is_stmt 1
        ret                                                     #92.9
..LN1755:
                                # LOE
..B10.41:                       # Preds ..B10.3
                                # Execution count [3.33e-02]: Infreq
..LN1756:
	.loc    1  80  is_stmt 1
        xorl      %r8d, %r8d                                    #80.3
..LN1757:
        movl      $32000, %edx                                  #80.3
..LN1758:
        xorl      %ecx, %ecx                                    #80.3
..LN1759:
        jmp       ..B10.14      # Prob 100%                     #80.3
..LN1760:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.42:                       # Preds ..B10.10
                                # Execution count [3.33e-02]: Infreq
..LN1761:
        xorl      %ecx, %ecx                                    #80.3
..LN1762:
        jmp       ..B10.14      # Prob 100%                     #80.3
..LN1763:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.43:                       # Preds ..B10.20
                                # Execution count [3.33e-02]: Infreq
..LN1764:
	.loc    1  84  is_stmt 1
        xorl      %r8d, %r8d                                    #84.3
..LN1765:
        movl      $32000, %eax                                  #84.3
..LN1766:
        xorl      %ecx, %ecx                                    #84.3
..LN1767:
        jmp       ..B10.31      # Prob 100%                     #84.3
..LN1768:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.44:                       # Preds ..B10.27
                                # Execution count [3.33e-02]: Infreq
..LN1769:
        xorl      %ecx, %ecx                                    #84.3
..LN1770:
        jmp       ..B10.31      # Prob 100%                     #84.3
..LN1771:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.49:                       # Preds ..B10.37 ..B10.50
                                # Execution count [3.33e-01]: Infreq
..LN1772:
	.loc    1  88  is_stmt 1
        cqto                                                    #88.23
..LN1773:
        idivq     %rcx                                          #88.23
..LN1774:
        jmp       ..B10.47      # Prob 100%                     #88.23
        .align    16,0x90
..LN1775:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
..LN1776:
	.cfi_endproc
# mark_end;
	.type	set1d,@function
	.size	set1d,.-set1d
..LNset1d.1777:
.LNset1d:
	.data
# -- End  set1d
	.text
.L_2__routine_start_init_10:
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(char *)
init:
# parameter 1(name): %rdi
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.466:
..L467:
                                                        #174.1
..LN1778:
	.loc    1  174  is_stmt 1
        pushq     %rsi                                          #174.1
	.cfi_def_cfa_offset 16
..LN1779:
	.loc    1  185  prologue_end  is_stmt 1
        lea       .L_2__STRING.3(%rip), %rsi                    #185.7
..LN1780:
	.loc    1  174  is_stmt 1
        movq      %rdi, %rcx                                    #174.1
..L470:                                                         #185.7
..LN1781:
	.loc    1  185  is_stmt 1
        movb      (%rdi), %dl                                   #185.7
..LN1782:
        cmpb      (%rsi), %dl                                   #185.7
..LN1783:
        jne       ..L472        # Prob 50%                      #185.7
..LN1784:
        testb     %dl, %dl                                      #185.7
..LN1785:
        je        ..L471        # Prob 50%                      #185.7
..LN1786:
        movb      1(%rdi), %dl                                  #185.7
..LN1787:
        cmpb      1(%rsi), %dl                                  #185.7
..LN1788:
        jne       ..L472        # Prob 50%                      #185.7
..LN1789:
        addq      $2, %rdi                                      #185.7
..LN1790:
        addq      $2, %rsi                                      #185.7
..LN1791:
        testb     %dl, %dl                                      #185.7
..LN1792:
        jne       ..L470        # Prob 50%                      #185.7
..L471:                                                         #
..LN1793:
        xorl      %eax, %eax                                    #185.7
..LN1794:
        jmp       ..L473        # Prob 100%                     #185.7
..L472:                                                         #
..LN1795:
        sbbl      %eax, %eax                                    #185.7
..LN1796:
        orl       $1, %eax                                      #185.7
..L473:                                                         #
..LN1797:
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B11.14:                       # Preds ..B11.1
                                # Execution count [1.00e+00]
..LN1798:
        testl     %eax, %eax                                    #185.7
..LN1799:
        je        ..B11.7       # Prob 22%                      #185.7
..LN1800:
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B11.2:                        # Preds ..B11.14
                                # Execution count [7.80e-01]
..LN1801:
	.loc    1  190  is_stmt 1
        movq      %rcx, %rdi                                    #190.14
..LN1802:
        lea       .L_2__STRING.2(%rip), %rsi                    #190.14
..L474:                                                         #190.14
..LN1803:
        movb      (%rdi), %dl                                   #190.14
..LN1804:
        cmpb      (%rsi), %dl                                   #190.14
..LN1805:
        jne       ..L476        # Prob 50%                      #190.14
..LN1806:
        testb     %dl, %dl                                      #190.14
..LN1807:
        je        ..L475        # Prob 50%                      #190.14
..LN1808:
        movb      1(%rdi), %dl                                  #190.14
..LN1809:
        cmpb      1(%rsi), %dl                                  #190.14
..LN1810:
        jne       ..L476        # Prob 50%                      #190.14
..LN1811:
        addq      $2, %rdi                                      #190.14
..LN1812:
        addq      $2, %rsi                                      #190.14
..LN1813:
        testb     %dl, %dl                                      #190.14
..LN1814:
        jne       ..L474        # Prob 50%                      #190.14
..L475:                                                         #
..LN1815:
        xorl      %eax, %eax                                    #190.14
..LN1816:
        jmp       ..L477        # Prob 100%                     #190.14
..L476:                                                         #
..LN1817:
        sbbl      %eax, %eax                                    #190.14
..LN1818:
        orl       $1, %eax                                      #190.14
..L477:                                                         #
..LN1819:
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B11.15:                       # Preds ..B11.2
                                # Execution count [7.80e-01]
..LN1820:
        testl     %eax, %eax                                    #190.14
..LN1821:
        je        ..B11.5       # Prob 22%                      #190.14
..LN1822:
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B11.3:                        # Preds ..B11.15
                                # Execution count [6.08e-01]
..LN1823:
	.loc    1  193  is_stmt 1
        movq      %rcx, %rdi                                    #193.14
..LN1824:
        lea       .L_2__STRING.1(%rip), %rsi                    #193.14
..L478:                                                         #193.14
..LN1825:
        movb      (%rdi), %dl                                   #193.14
..LN1826:
        cmpb      (%rsi), %dl                                   #193.14
..LN1827:
        jne       ..L480        # Prob 50%                      #193.14
..LN1828:
        testb     %dl, %dl                                      #193.14
..LN1829:
        je        ..L479        # Prob 50%                      #193.14
..LN1830:
        movb      1(%rdi), %dl                                  #193.14
..LN1831:
        cmpb      1(%rsi), %dl                                  #193.14
..LN1832:
        jne       ..L480        # Prob 50%                      #193.14
..LN1833:
        addq      $2, %rdi                                      #193.14
..LN1834:
        addq      $2, %rsi                                      #193.14
..LN1835:
        testb     %dl, %dl                                      #193.14
..LN1836:
        jne       ..L478        # Prob 50%                      #193.14
..L479:                                                         #
..LN1837:
        xorl      %eax, %eax                                    #193.14
..LN1838:
        jmp       ..L481        # Prob 100%                     #193.14
..L480:                                                         #
..LN1839:
        sbbl      %eax, %eax                                    #193.14
..LN1840:
        orl       $1, %eax                                      #193.14
..L481:                                                         #
..LN1841:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B11.16:                       # Preds ..B11.3
                                # Execution count [6.08e-01]
..LN1842:
        testl     %eax, %eax                                    #193.14
..LN1843:
        jne       ..B11.11      # Prob 78%                      #193.14
..LN1844:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.4:                        # Preds ..B11.16
                                # Execution count [1.34e-01]
..LN1845:
	.loc    1  194  is_stmt 1
        movss     .L_2il0floatpacket.7(%rip), %xmm0             #194.3
..LN1846:
        movl      $1, %esi                                      #194.3
..LN1847:
        movq      a@GOTPCREL(%rip), %rdi                        #194.3
..___tag_value_init.482:
..LN1848:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #194.3
..___tag_value_init.483:
..LN1849:
        jmp       ..B11.11      # Prob 100%                     #194.3
..LN1850:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.5:                        # Preds ..B11.15
                                # Execution count [1.72e-01]
..LN1851:
	.loc    1  191  is_stmt 1
        movss     .L_2il0floatpacket.2(%rip), %xmm0             #191.3
..LN1852:
        movl      $1, %esi                                      #191.3
..LN1853:
        movq      a@GOTPCREL(%rip), %rdi                        #191.3
..___tag_value_init.484:
..LN1854:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #191.3
..___tag_value_init.485:
..LN1855:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.6:                        # Preds ..B11.5
                                # Execution count [1.72e-01]
..LN1856:
	.loc    1  192  is_stmt 1
        movl      $-2, %esi                                     #192.3
..LN1857:
        pxor      %xmm0, %xmm0                                  #192.3
..LN1858:
        movq      b@GOTPCREL(%rip), %rdi                        #192.3
..___tag_value_init.486:
..LN1859:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #192.3
..___tag_value_init.487:
..LN1860:
        jmp       ..B11.11      # Prob 100%                     #192.3
..LN1861:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.7:                        # Preds ..B11.14
                                # Execution count [2.20e-01]
..LN1862:
	.loc    1  186  is_stmt 1
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #186.3
..LN1863:
        movl      $1, %esi                                      #186.3
..LN1864:
        movq      a@GOTPCREL(%rip), %rdi                        #186.3
..___tag_value_init.488:
..LN1865:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #186.3
..___tag_value_init.489:
..LN1866:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.8:                        # Preds ..B11.7
                                # Execution count [2.20e-01]
..LN1867:
	.loc    1  187  is_stmt 1
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #187.3
..LN1868:
        movl      $1, %esi                                      #187.3
..LN1869:
        movq      b@GOTPCREL(%rip), %rdi                        #187.3
..___tag_value_init.490:
..LN1870:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #187.3
..___tag_value_init.491:
..LN1871:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.9:                        # Preds ..B11.8
                                # Execution count [2.20e-01]
..LN1872:
	.loc    1  188  is_stmt 1
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #188.3
..LN1873:
        movl      $1, %esi                                      #188.3
..LN1874:
        movq      c@GOTPCREL(%rip), %rdi                        #188.3
..___tag_value_init.492:
..LN1875:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #188.3
..___tag_value_init.493:
..LN1876:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.10:                       # Preds ..B11.9
                                # Execution count [2.20e-01]
..LN1877:
	.loc    1  189  is_stmt 1
        movss     .L_2il0floatpacket.6(%rip), %xmm0             #189.3
..LN1878:
        movl      $1, %esi                                      #189.3
..LN1879:
        movq      d@GOTPCREL(%rip), %rdi                        #189.3
..___tag_value_init.494:
..LN1880:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #189.3
..___tag_value_init.495:
..LN1881:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.11:                       # Preds ..B11.10 ..B11.6 ..B11.4 ..B11.16
                                # Execution count [1.00e+00]
..LN1882:
	.loc    1  197  is_stmt 1
        xorl      %eax, %eax                                    #197.9
..LN1883:
	.loc    1  197  epilogue_begin  is_stmt 1
        popq      %rcx                                          #197.9
	.cfi_def_cfa_offset 8
..LN1884:
        ret                                                     #197.9
        .align    16,0x90
..LN1885:
                                # LOE
..LN1886:
	.cfi_endproc
# mark_end;
	.type	init,@function
	.size	init,.-init
..LNinit.1887:
.LNinit:
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
	.section .debug_opt_report, ""
..L500:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	44
	.long	..L501 - ..L500
	.long	48
	.long	..L502 - ..L500
	.long	746
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L40
	.long	28
	.long	4
	.quad	..L57
	.long	28
	.long	23
	.quad	..L71
	.long	28
	.long	42
	.quad	..L72
	.long	28
	.long	61
	.quad	..L73
	.long	28
	.long	80
	.quad	..L74
	.long	28
	.long	94
	.quad	..L75
	.long	28
	.long	106
	.quad	..L76
	.long	28
	.long	125
	.quad	..L77
	.long	28
	.long	144
	.quad	..L78
	.long	28
	.long	163
	.quad	..L79
	.long	28
	.long	177
	.quad	..L80
	.long	28
	.long	189
	.quad	..L81
	.long	28
	.long	208
	.quad	..L82
	.long	28
	.long	227
	.quad	..L102
	.long	28
	.long	246
	.quad	..L103
	.long	28
	.long	260
	.quad	..L104
	.long	28
	.long	274
	.quad	..L105
	.long	28
	.long	286
	.quad	..L106
	.long	28
	.long	305
	.quad	..L107
	.long	28
	.long	324
	.quad	..L108
	.long	28
	.long	343
	.quad	..L144
	.long	28
	.long	359
	.quad	..L145
	.long	28
	.long	378
	.quad	..L280
	.long	28
	.long	397
	.quad	..L281
	.long	28
	.long	411
	.quad	..L282
	.long	28
	.long	430
	.quad	..L284
	.long	28
	.long	449
	.quad	..L328
	.long	28
	.long	468
	.quad	..L329
	.long	28
	.long	485
	.quad	..L332
	.long	28
	.long	504
	.quad	..L375
	.long	28
	.long	523
	.quad	..L376
	.long	28
	.long	537
	.quad	..L421
	.long	28
	.long	556
	.quad	..L422
	.long	28
	.long	570
	.quad	..L452
	.long	28
	.long	589
	.quad	..L453
	.long	28
	.long	601
	.quad	..L454
	.long	28
	.long	620
	.quad	..L455
	.long	28
	.long	639
	.quad	..L456
	.long	28
	.long	658
	.quad	..L457
	.long	28
	.long	670
	.quad	..L458
	.long	28
	.long	689
	.quad	..L459
	.long	28
	.long	708
	.quad	..L460
	.long	28
	.long	727
..L501:
	.long	1769238639
	.long	1635412333
	.long	1852795252
	.long	1885696607
	.long	1601466991
	.long	1936876918
	.long	7237481
	.long	1769238639
	.long	1635412333
	.long	1852795252
	.long	1885696607
	.long	7631471
..L502:
	.long	42209283
	.long	-2139090926
	.long	-2055176064
	.long	-2139062144
	.long	-2032234100
	.long	302092741
	.long	-2139062256
	.long	-2139062144
	.long	-1937735552
	.long	-981032991
	.long	269615504
	.long	-2139062144
	.long	-2139062144
	.long	-913538944
	.long	-1717205272
	.long	-2146430463
	.long	-2139062144
	.long	-2139062139
	.long	-219575168
	.long	43443398
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269158344
	.long	-2139062144
	.long	-2139062144
	.long	269616256
	.long	-2139062144
	.long	-2139060864
	.long	-394231168
	.long	-1599764011
	.long	-2146430462
	.long	-2139062144
	.long	-2139062144
	.long	-21987190
	.long	44090567
	.long	-2139090926
	.long	-2139062144
	.long	-2004844416
	.long	-939609984
	.long	218276036
	.long	-2139062256
	.long	-2139062144
	.long	-931102592
	.long	-2146432249
	.long	-2139062144
	.long	-2139062144
	.long	-2146430460
	.long	-2139062144
	.long	-2139062139
	.long	-746553214
	.long	44082569
	.long	-2139090926
	.long	-2139062144
	.long	-1971289984
	.long	-939683712
	.long	302162116
	.long	-2139062256
	.long	-2139062144
	.long	-2138537856
	.long	-993526384
	.long	269288096
	.long	-2139062144
	.long	-2139062144
	.long	130580608
	.long	-2136993779
	.long	-2139059072
	.long	-2139062144
	.long	269158344
	.long	-1937735520
	.long	-2122219392
	.long	269616256
	.long	-1937735520
	.long	-2122218112
	.long	-2138930560
	.long	-1734031204
	.long	-1609559550
	.long	-2138275712
	.long	-2138996352
	.long	-746552694
	.long	43828423
	.long	-2136993774
	.long	-2139059072
	.long	-2004844159
	.long	-942440320
	.long	251829444
	.long	-2139054064
	.long	-2122284908
	.long	-1333755775
	.long	306217089
	.long	-2139062256
	.long	-2139062144
	.long	-2138931072
	.long	-2054636824
	.long	269615779
	.long	-2139045744
	.long	-2139060864
	.long	-931102080
	.long	-1585084231
	.long	-2146431742
	.long	-2139062144
	.long	-2139062144
	.long	302499968
	.long	-2134867696
	.long	-2138472308
	.long	-2138931072
	.long	-2054633344
	.long	269615744
	.long	-1803517824
	.long	-2139060864
	.long	-394231168
	.long	-2138732350
	.long	-2146430462
	.long	-1064009600
	.long	-2139062144
	.long	-2004844406
	.long	41977288
	.long	-2139090928
	.long	-2139062144
	.long	-2139062144
	.long	-2139061840
	.long	-2146430463
	.long	-2139062144
	.long	-2139062131
	.long	-1292268416
	.long	41977222
	.long	-2004873198
	.long	-1988067200
	.long	-2139062144
	.long	-2035091060
	.long	218267781
	.long	-2139062256
	.long	-2139062144
	.long	-931102592
	.long	-2146430457
	.long	-2139062144
	.long	-2139062135
	.long	-1429176190
	.long	43959688
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269617096
	.long	-2139062144
	.long	-2139059840
	.long	-1602190720
	.long	-1631221611
	.long	-2146432254
	.long	-2139062144
	.long	-2139062144
	.long	-2146430460
	.long	-2139062144
	.long	-2139062135
	.long	-1311211390
	.long	43435400
	.long	-2139090926
	.long	-2139062144
	.long	-1971289984
	.long	-930756480
	.long	302160548
	.long	-2139062256
	.long	-2139062144
	.long	-2138537856
	.long	-1530362424
	.long	269157018
	.long	-2139062144
	.long	-2139062144
	.long	269616256
	.long	-2139062144
	.long	-2139059840
	.long	-662666624
	.long	-1765439316
	.long	-2146430462
	.long	-2139062144
	.long	-2139062144
	.long	-2071953270
	.long	43689160
	.long	-2139090926
	.long	-2139062144
	.long	-2004844416
	.long	-930840448
	.long	302160548
	.long	-1199538160
	.long	-2138734462
	.long	-1937735552
	.long	-456722975
	.word	2708
	.section .note.GNU-stack, ""
	.global X#
	.global Y#
	.global Z#
	.global U#
	.global V#
	.global array#
	.global x#
	.global temp#
	.global temp_int#
	.global a#
	.global b#
	.global c#
	.global d#
	.global e#
	.global aa#
	.global bb#
	.global cc#
	.global tt#
	.global indx#
	.global xx#
	.global yy#
// -- Begin DWARF2 SEGMENT .debug_info
	.section .debug_info
.debug_info_seg:
	.align 1
	.4byte 0x00000a73
	.2byte 0x0004
	.4byte .debug_abbrev_seg
	.byte 0x08
//	DW_TAG_compile_unit:
	.byte 0x01
//	DW_AT_comp_dir:
	.4byte .debug_str
//	DW_AT_name:
	.4byte .debug_str+0x21
//	DW_AT_producer:
	.4byte .debug_str+0x27
	.4byte .debug_str+0x93
//	DW_AT_language:
	.byte 0x01
//	DW_AT_use_UTF8:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN0
//	DW_AT_high_pc:
	.8byte ..LNinit.1887-..LN0
	.byte 0x01
//	DW_AT_stmt_list:
	.4byte .debug_line_seg
//	DW_TAG_base_type:
	.byte 0x02
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte 0x00746e69
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x192
	.4byte .debug_str+0x192
//	DW_AT_low_pc:
	.8byte ..L450
//	DW_AT_high_pc:
	.8byte ..LNset1d.1777-..L450
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007c3
//	DW_AT_name:
	.4byte 0x00727261
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_name:
	.4byte .debug_str+0x127
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x12d
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x50
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1416
//	DW_AT_high_pc:
	.8byte ..LN1534
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x50
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x54
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1556
//	DW_AT_high_pc:
	.8byte ..LN1720
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x54
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x58
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1728
//	DW_AT_high_pc:
	.8byte ..LNset1d.1777
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x58
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x5f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x121
	.4byte .debug_str+0x121
//	DW_AT_low_pc:
	.8byte ..L69
//	DW_AT_high_pc:
	.8byte ..LNset2d.408-..L69
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x5f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007c8
//	DW_AT_name:
	.4byte 0x00727261
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x5f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_name:
	.4byte .debug_str+0x127
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x5f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x12d
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x65
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN297
//	DW_AT_high_pc:
	.8byte ..LNset2d.408
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x65
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN305
//	DW_AT_high_pc:
	.8byte ..LN379
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x6b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN199
//	DW_AT_high_pc:
	.8byte ..LN399
//	DW_TAG_variable:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0x6b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x5901
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x6c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN199
//	DW_AT_high_pc:
	.8byte ..LN287
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x6c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x71
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN180
//	DW_AT_high_pc:
	.8byte ..LN197
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x71
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x72
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN183
//	DW_AT_high_pc:
	.8byte ..LN191
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x72
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x09
//	DW_AT_decl_line:
	.byte 0x7a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x139
	.4byte .debug_str+0x139
//	DW_AT_low_pc:
	.8byte ..L139
//	DW_AT_high_pc:
	.8byte ..LNcheck.993-..L139
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x13f
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x144
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6301
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x149
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6401
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x14e
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6501
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x7f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x153
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x80
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x158
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x88
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x15d
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6701
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x89
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x163
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x8a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x169
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x93
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x16f
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x81
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN640
//	DW_AT_high_pc:
	.8byte ..LN657
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x81
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN689
//	DW_AT_high_pc:
	.8byte ..LN703
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x8b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN689
//	DW_AT_high_pc:
	.8byte ..LN703
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x8c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x94
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN693
//	DW_AT_high_pc:
	.8byte ..LN704
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x94
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0xad
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x198
	.4byte .debug_str+0x198
//	DW_AT_low_pc:
	.8byte ..L467
//	DW_AT_high_pc:
	.8byte ..LNinit.1887-..L467
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xad
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007d7
//	DW_AT_name:
	.4byte .debug_str+0x13f
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xaf
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00796e61
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a2
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a7
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xb2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00656e6f
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xb3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x006f7774
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb4
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1ac
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb5
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1b2
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb6
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1b7
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1bc
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0c
//	DW_AT_decl_line:
	.byte 0xc8
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00746573
	.4byte 0x00746573
//	DW_AT_low_pc:
	.8byte ..L32
//	DW_AT_high_pc:
	.8byte ..LNset.172-..L32
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xc8
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000793
//	DW_AT_name:
	.2byte 0x7069
	.byte 0x00
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xc8
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007c3
//	DW_AT_name:
	.2byte 0x3173
	.byte 0x00
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xc8
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007c3
//	DW_AT_name:
	.2byte 0x3273
	.byte 0x00
//	DW_AT_location:
	.2byte 0x5101
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xcb
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN86
//	DW_AT_high_pc:
	.8byte ..LN116
//	DW_TAG_variable:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0xcb
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x5101
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xdd
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN151
//	DW_AT_high_pc:
	.8byte ..LN159
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xdd
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0xe7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x134
	.4byte .debug_str+0x134
//	DW_AT_low_pc:
	.8byte ..L89
//	DW_AT_high_pc:
	.8byte ..LNs242.634-..L89
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xe7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_name:
	.2byte 0x3173
	.byte 0x00
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xe7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_name:
	.2byte 0x3273
	.byte 0x00
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xd7
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xf6
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfc
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x106
//	DW_AT_type:
	.4byte 0x000007b5
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xf2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN421
//	DW_AT_high_pc:
	.8byte ..LNs242.634
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xf2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xf3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN421
//	DW_AT_high_pc:
	.8byte ..LN595
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xf3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0xfe
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x178
	.4byte .debug_str+0x178
//	DW_AT_low_pc:
	.8byte ..L263
//	DW_AT_high_pc:
	.8byte ..LNs2275.1111-..L263
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0103
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xd7
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0103
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xf6
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0103
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfc
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0103
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x106
//	DW_AT_type:
	.4byte 0x000007b5
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0109
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1008
//	DW_AT_high_pc:
	.8byte ..LN1083
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x0109
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x010a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1011
//	DW_AT_high_pc:
	.8byte ..LN1083
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x010a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x010b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1030
//	DW_AT_high_pc:
	.8byte ..LN1078
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x010b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x0118
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x183
	.4byte .debug_str+0x183
//	DW_AT_low_pc:
	.8byte ..L358
//	DW_AT_high_pc:
	.8byte ..LNs312.1300-..L358
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x011e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xd7
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x011e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xf6
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x011e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfc
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x011e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x106
//	DW_AT_type:
	.4byte 0x000007b5
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x188
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0125
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1219
//	DW_AT_high_pc:
	.8byte ..LN1269
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x0125
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0127
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1219
//	DW_AT_high_pc:
	.8byte ..LN1269
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x0127
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x0133
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x18d
	.4byte .debug_str+0x18d
//	DW_AT_low_pc:
	.8byte ..L404
//	DW_AT_high_pc:
	.8byte ..LNs317.1397-..L404
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x013b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xd7
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x013b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xf6
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x013b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfc
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x013b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x106
//	DW_AT_type:
	.4byte 0x000007b5
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x0141
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0071
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0142
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1315
//	DW_AT_high_pc:
	.8byte ..LN1366
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x0142
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0144
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1315
//	DW_AT_high_pc:
	.8byte ..LN1366
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x0144
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x5501
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x0150
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x17e
	.4byte .debug_str+0x17e
//	DW_AT_low_pc:
	.8byte ..L311
//	DW_AT_high_pc:
	.8byte ..LNs112.1204-..L311
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0156
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xd7
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0156
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xf6
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0156
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfc
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0156
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x106
//	DW_AT_type:
	.4byte 0x000007b5
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1126
//	DW_AT_high_pc:
	.8byte ..LN1176
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x015c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_lexical_block:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1126
//	DW_AT_high_pc:
	.8byte ..LN1176
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x015e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x14
//	DW_AT_decl_line:
	.2byte 0x016a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0xd2
	.4byte .debug_str+0xd2
//	DW_AT_frame_base:
	.2byte 0x7702
	.byte 0x00
//	DW_AT_low_pc:
	.8byte ..L3
//	DW_AT_high_pc:
	.8byte ..LNmain.67-..L3
	.byte 0x01
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x016b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xd7
//	DW_AT_type:
	.4byte 0x00000798
//	DW_AT_location:
	.2byte 0x5301
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x016b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xf6
//	DW_AT_type:
	.4byte 0x00000798
//	DW_AT_location:
	.2byte 0x5001
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x016b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfc
//	DW_AT_type:
	.4byte 0x00000798
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x016b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x106
//	DW_AT_type:
	.4byte 0x000007b5
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x016e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x7069
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000793
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x016f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3173
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x016f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3273
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x04
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_typedef:
	.byte 0x16
//	DW_AT_decl_line:
	.byte 0x3b
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0xdf
//	DW_AT_type:
	.4byte 0x000007a3
//	DW_TAG_typedef:
	.byte 0x16
//	DW_AT_decl_line:
	.byte 0x87
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0xe7
//	DW_AT_type:
	.4byte 0x000007ae
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0xf1
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x114
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x11b
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x000007cd
//	DW_TAG_array_type:
	.byte 0x18
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.2byte 0x02d0
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x000007dc
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x01
//	DW_AT_encoding:
	.byte 0x06
//	DW_AT_name:
	.4byte .debug_str+0x19d
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0058
//	DW_AT_type:
	.4byte 0x000007f7
//	DW_AT_location:
	.2byte 0x0309
	.8byte X
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0059
//	DW_AT_type:
	.4byte 0x00000818
//	DW_AT_location:
	.2byte 0x0309
	.8byte Y
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x005a
//	DW_AT_type:
	.4byte 0x00000839
//	DW_AT_location:
	.2byte 0x0309
	.8byte Z
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0055
//	DW_AT_type:
	.4byte 0x0000085a
//	DW_AT_location:
	.2byte 0x0309
	.8byte U
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0056
//	DW_AT_type:
	.4byte 0x0000087b
//	DW_AT_location:
	.2byte 0x0309
	.8byte V
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1d
//	DW_AT_decl_line:
	.byte 0x3a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x172
//	DW_AT_type:
	.4byte 0x0000089e
//	DW_AT_location:
	.2byte 0x0309
	.8byte array
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001fa40
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7e8f
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x3c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0078
//	DW_AT_type:
	.4byte 0x000008bf
//	DW_AT_location:
	.2byte 0x0309
	.8byte x
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1d
//	DW_AT_decl_line:
	.byte 0x3d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c2
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_location:
	.2byte 0x0309
	.8byte temp
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x1d
//	DW_AT_decl_line:
	.byte 0x3e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c7
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x0309
	.8byte temp_int
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x41
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0061
//	DW_AT_type:
	.4byte 0x0000090c
//	DW_AT_location:
	.2byte 0x0309
	.8byte a
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x41
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0062
//	DW_AT_type:
	.4byte 0x0000092d
//	DW_AT_location:
	.2byte 0x0309
	.8byte b
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x41
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0063
//	DW_AT_type:
	.4byte 0x0000094e
//	DW_AT_location:
	.2byte 0x0309
	.8byte c
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x41
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0064
//	DW_AT_type:
	.4byte 0x0000096f
//	DW_AT_location:
	.2byte 0x0309
	.8byte d
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x41
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0065
//	DW_AT_type:
	.4byte 0x00000990
//	DW_AT_location:
	.2byte 0x0309
	.8byte e
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x42
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6161
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000009b2
//	DW_AT_location:
	.2byte 0x0309
	.8byte aa
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001fa40
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x42
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6262
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000009d5
//	DW_AT_location:
	.2byte 0x0309
	.8byte bb
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001fa40
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x42
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6363
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000009f8
//	DW_AT_location:
	.2byte 0x0309
	.8byte cc
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001fa40
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x42
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x7474
	.byte 0x00
//	DW_AT_type:
	.4byte 0x00000a1b
//	DW_AT_location:
	.2byte 0x0309
	.8byte tt
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x000007bc
//	DW_AT_byte_size:
	.4byte 0x0001fa40
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1d
//	DW_AT_decl_line:
	.byte 0x45
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1d0
//	DW_AT_type:
	.4byte 0x00000a3f
//	DW_AT_location:
	.2byte 0x0309
	.8byte indx
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_byte_size:
	.4byte 0x0001f400
//	DW_TAG_subrange_type:
	.byte 0x1c
//	DW_AT_upper_bound:
	.2byte 0x7cff
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x48
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x7878
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000007c3
//	DW_AT_location:
	.2byte 0x0309
	.8byte xx
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x49
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x7979
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000007c3
//	DW_AT_location:
	.2byte 0x0309
	.8byte yy
//	DW_AT_external:
	.byte 0x01
	.byte 0x00
// -- Begin DWARF2 SEGMENT .debug_line
	.section .debug_line
.debug_line_seg:
	.align 1
// -- Begin DWARF2 SEGMENT .debug_abbrev
	.section .debug_abbrev
.debug_abbrev_seg:
	.align 1
	.byte 0x01
	.byte 0x11
	.byte 0x01
	.byte 0x1b
	.byte 0x0e
	.byte 0x03
	.byte 0x0e
	.byte 0x25
	.byte 0x0e
	.2byte 0x7681
	.byte 0x0e
	.byte 0x13
	.byte 0x0b
	.byte 0x53
	.byte 0x0c
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x6a
	.byte 0x0c
	.byte 0x10
	.byte 0x17
	.2byte 0x0000
	.byte 0x02
	.byte 0x24
	.byte 0x00
	.byte 0x0b
	.byte 0x0b
	.byte 0x3e
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.2byte 0x0000
	.byte 0x03
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x27
	.byte 0x0c
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x04
	.byte 0x05
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x08
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x05
	.byte 0x05
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x0e
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x06
	.byte 0x0b
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x01
	.2byte 0x0000
	.byte 0x07
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x08
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x09
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x27
	.byte 0x0c
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x0a
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x0b
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0c
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x27
	.byte 0x0c
	.byte 0x03
	.byte 0x08
	.2byte 0x4087
	.byte 0x08
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x0d
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x0e
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0f
	.byte 0x0b
	.byte 0x01
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x01
	.2byte 0x0000
	.byte 0x10
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x11
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x12
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x13
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x14
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x05
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x40
	.byte 0x18
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x6a
	.byte 0x0c
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x15
	.byte 0x0f
	.byte 0x00
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x16
	.byte 0x16
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x17
	.byte 0x24
	.byte 0x00
	.byte 0x0b
	.byte 0x0b
	.byte 0x3e
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.2byte 0x0000
	.byte 0x18
	.byte 0x01
	.byte 0x01
	.byte 0x49
	.byte 0x13
	.byte 0x0b
	.byte 0x05
	.2byte 0x0000
	.byte 0x19
	.byte 0x21
	.byte 0x00
	.byte 0x2f
	.byte 0x0b
	.2byte 0x0000
	.byte 0x1a
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x1b
	.byte 0x01
	.byte 0x01
	.byte 0x49
	.byte 0x13
	.byte 0x0b
	.byte 0x06
	.2byte 0x0000
	.byte 0x1c
	.byte 0x21
	.byte 0x00
	.byte 0x2f
	.byte 0x05
	.2byte 0x0000
	.byte 0x1d
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x00
// -- Begin DWARF2 SEGMENT .debug_frame
	.section .debug_frame
.debug_frame_seg:
	.align 1
// -- Begin DWARF2 SEGMENT .debug_str
	.section .debug_str,"MS",@progbits,1
.debug_str_seg:
	.align 1
	.8byte 0x6e612f656d6f682f
	.8byte 0x74656d2f74656b69
	.8byte 0x6c69706d6f635f61
	.8byte 0x31747365742f7265
	.byte 0x00
	.4byte 0x2e637374
	.2byte 0x0063
	.8byte 0x2952286c65746e49
	.8byte 0x6c65746e49204320
	.8byte 0x4320343620295228
	.8byte 0x2072656c69706d6f
	.8byte 0x6c70706120726f66
	.8byte 0x736e6f6974616369
	.8byte 0x676e696e6e757220
	.8byte 0x65746e49206e6f20
	.8byte 0x2c3436202952286c
	.8byte 0x6e6f697372655620
	.8byte 0x2e312e302e373120
	.8byte 0x6c69754220323331
	.8byte 0x3031363130322064
	.4byte 0x000a3530
	.8byte 0x2d20747361664f2d
	.8byte 0x203939633d647473
	.8byte 0x6c6e692d6f6e662d
	.8byte 0x636e75662d656e69
	.8byte 0x672d20736e6f6974
	.8byte 0x2d20636970662d20
	.8byte 0x637374206f2d2053
	.4byte 0x6363695f
	.2byte 0x732e
	.byte 0x00
	.4byte 0x6e69616d
	.byte 0x00
	.8byte 0x00745f7472617473
	.8byte 0x00745f6b636f6c63
	.8byte 0x5f6b636f6c635f5f
	.2byte 0x0074
	.4byte 0x676e6f6c
	.byte 0x00
	.4byte 0x5f646e65
	.2byte 0x0074
	.8byte 0x69645f6b636f6c63
	.2byte 0x0066
	.8byte 0x69645f6b636f6c63
	.4byte 0x65735f66
	.2byte 0x0063
	.4byte 0x62756f64
	.2byte 0x656c
	.byte 0x00
	.4byte 0x616f6c66
	.2byte 0x0074
	.4byte 0x32746573
	.2byte 0x0064
	.4byte 0x756c6176
	.2byte 0x0065
	.4byte 0x69727473
	.2byte 0x6564
	.byte 0x00
	.4byte 0x32343273
	.byte 0x00
	.4byte 0x63656863
	.2byte 0x006b
	.4byte 0x656d616e
	.byte 0x00
	.4byte 0x616d7573
	.byte 0x00
	.4byte 0x626d7573
	.byte 0x00
	.4byte 0x636d7573
	.byte 0x00
	.4byte 0x646d7573
	.byte 0x00
	.4byte 0x656d7573
	.byte 0x00
	.4byte 0x616d7573
	.2byte 0x0061
	.4byte 0x626d7573
	.2byte 0x0062
	.4byte 0x636d7573
	.2byte 0x0063
	.8byte 0x79617272616d7573
	.byte 0x00
	.4byte 0x37323273
	.2byte 0x0035
	.4byte 0x32313173
	.byte 0x00
	.4byte 0x32313373
	.byte 0x00
	.4byte 0x646f7270
	.byte 0x00
	.4byte 0x37313373
	.byte 0x00
	.4byte 0x31746573
	.2byte 0x0064
	.4byte 0x74696e69
	.byte 0x00
	.4byte 0x72616863
	.byte 0x00
	.4byte 0x6f72657a
	.byte 0x00
	.4byte 0x666c6168
	.byte 0x00
	.4byte 0x6c616d73
	.2byte 0x006c
	.4byte 0x74696e75
	.byte 0x00
	.4byte 0x63617266
	.byte 0x00
	.4byte 0x63617266
	.2byte 0x0032
	.4byte 0x706d6574
	.byte 0x00
	.8byte 0x746e695f706d6574
	.byte 0x00
	.4byte 0x78646e69
	.byte 0x00
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 1
	.section .text
.LNDBG_TXe:
# End
