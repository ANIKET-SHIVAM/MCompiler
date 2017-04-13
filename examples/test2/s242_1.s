	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "-Ofast -std=c99 -fno-inline-functions -g -fpic -c -S -masm=intel -o s242_1.s -ffunction-sections";
	.intel_syntax noprefix
	.file "s242.c"
	.section .text.main, "xa"
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.section .text.main, "xa"
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
                                                          #339.11
..LN0:
	.file   1 "tsc.c"
	.loc    1  339  is_stmt 1
        push      rbp                                           #339.11
	.cfi_def_cfa_offset 16
..LN1:
        mov       rbp, rsp                                      #339.11
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        and       rsp, -128                                     #339.11
..LN3:
        push      rbx                                           #339.11
..LN4:
        sub       rsp, 120                                      #339.11
..LN5:
        xor       esi, esi                                      #339.11
..LN6:
        mov       edi, 3                                        #339.11
..LN7:
        call      __intel_new_feature_proc_init@PLT             #339.11
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
..LN8:
                                # LOE r12 r13 r14 r15
..B1.19:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
..LN9:
        stmxcsr   DWORD PTR [rsp]                               #339.11
..LN10:
	.loc    1  343  prologue_end  is_stmt 1
        mov       edi, 16                                       #343.20
..LN11:
        mov       esi, 128000                                   #343.20
..LN12:
	.loc    1  339  is_stmt 1
        or        DWORD PTR [rsp], 32832                        #339.11
..LN13:
        ldmxcsr   DWORD PTR [rsp]                               #339.11
..LN14:
	.loc    1  343  is_stmt 1
#       memalign(size_t, size_t)
        call      memalign@PLT                                  #343.20
..LN15:
                                # LOE rax r12 r13 r14 r15
..B1.2:                         # Preds ..B1.19
                                # Execution count [1.00e+00]
..LN16:
	.loc    1  345  is_stmt 1
        mov       rdi, rax                                      #345.2
..LN17:
        lea       rsi, QWORD PTR [rsp]                          #345.2
..LN18:
        lea       rdx, QWORD PTR [4+rsp]                        #345.2
..___tag_value_main.9:
..LN19:
#       set(int *, float *, float *)
        call      set@PLT                                       #345.2
..___tag_value_main.10:
..LN20:
                                # LOE r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
..LN21:
	.loc    1  346  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_0(%rip)] #346.2
..LN22:
        call      puts@PLT                                      #346.2
..LN23:
                                # LOE r12 r13 r14 r15
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
..LN24:
	.loc    1  348  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #348.12
..LN25:
                                # LOE rax r12 r13 r14 r15
..B1.20:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
..LN26:
        mov       rbx, rax                                      #348.12
..LN27:
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.20
                                # Execution count [1.00e+00]
..LN28:
	.loc    1  350  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_1(%rip)] #350.2
..LN29:
        call      puts@PLT                                      #350.2
..LN30:
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
..LN31:
	.loc    1  351  is_stmt 1
        pxor      xmm0, xmm0                                    #351.2
..LN32:
        pxor      xmm1, xmm1                                    #351.2
..LN33:
        cvtss2sd  xmm0, DWORD PTR [rsp]                         #351.2
..LN34:
        cvtss2sd  xmm1, DWORD PTR [4+rsp]                       #351.2
..___tag_value_main.11:
..LN35:
#       s242()
        call      s242@PLT                                      #351.2
..___tag_value_main.12:
..LN36:
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
..___tag_value_main.13:
..LN37:
	.loc    1  352  is_stmt 1
#       s2275()
        call      s2275@PLT                                     #352.2
..___tag_value_main.14:
..LN38:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
..LN39:
	.loc    1  355  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_2(%rip)] #355.2
..LN40:
        call      puts@PLT                                      #355.2
..LN41:
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
..___tag_value_main.15:
..LN42:
	.loc    1  356  is_stmt 1
#       s112()
        call      s112@PLT                                      #356.2
..___tag_value_main.16:
..LN43:
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
..LN44:
	.loc    1  359  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_3(%rip)] #359.2
..LN45:
        call      puts@PLT                                      #359.2
..LN46:
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
..___tag_value_main.17:
..LN47:
	.loc    1  360  is_stmt 1
#       s312()
        call      s312@PLT                                      #360.2
..___tag_value_main.18:
..LN48:
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
..___tag_value_main.19:
..LN49:
	.loc    1  361  is_stmt 1
#       s317()
        call      s317@PLT                                      #361.2
..___tag_value_main.20:
..LN50:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
..LN51:
	.loc    1  363  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #363.10
..LN52:
                                # LOE rax rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
..LN53:
	.loc    1  365  is_stmt 1
        sub       rax, rbx                                      #365.2
..LN54:
        pxor      xmm0, xmm0                                    #365.2
..LN55:
        cvtsi2sd  xmm0, rax                                     #365.2
..LN56:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]  #365.2
..LN57:
        lea       rdi, QWORD PTR [.L_2__STRING.15(%rip)]        #365.2
..LN58:
        mov       eax, 1                                        #365.2
..___tag_value_main.21:
..LN59:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #365.2
..___tag_value_main.22:
..LN60:
                                # LOE r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.00e+00]
..LN61:
	.loc    1  367  is_stmt 1
        xor       eax, eax                                      #367.9
..LN62:
	.loc    1  367  epilogue_begin  is_stmt 1
        add       rsp, 120                                      #367.9
	.cfi_restore 3
..LN63:
        pop       rbx                                           #367.9
..LN64:
        mov       rsp, rbp                                      #367.9
..LN65:
        pop       rbp                                           #367.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN66:
        ret                                                     #367.9
        .align    16,0x90
..LN67:
                                # LOE
..LN68:
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.69:
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
	.section .text.set, "xa"
..TXTST1:
.L_2__routine_start_set_1:
# -- Begin  set
	.section .text.set, "xa"
# mark_begin;
       .align    16,0x90
	.globl set
# --- set(int *, float *, float *)
set:
# parameter 1(ip): rdi
# parameter 2(s1): rsi
# parameter 3(s2): rdx
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set.31:
..L32:
                                                         #200.40
..LN70:
	.loc    1  200  is_stmt 1
        push      r15                                           #200.40
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
..LN71:
        push      rbx                                           #200.40
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
..LN72:
        push      rbp                                           #200.40
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
..LN73:
	.loc    1  200  prologue_end  is_stmt 1
        mov       rbx, rsi                                      #200.40
..LN74:
        mov       rbp, rdi                                      #200.40
..LN75:
	.loc    1  201  is_stmt 1
        mov       edi, 16                                       #201.16
..LN76:
        mov       esi, 128000                                   #201.16
..LN77:
	.loc    1  200  is_stmt 1
        mov       r15, rdx                                      #200.40
..LN78:
	.loc    1  201  is_stmt 1
#       memalign(size_t, size_t)
        call      memalign@PLT                                  #201.16
..LN79:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
..LN80:
        mov       rdx, QWORD PTR [xx@GOTPCREL(%rip)]            #201.2
..LN81:
	.loc    1  202  is_stmt 1
        mov       edi, 10                                       #202.2
..LN82:
	.loc    1  201  is_stmt 1
        mov       QWORD PTR [rdx], rax                          #201.2
..LN83:
	.loc    1  202  is_stmt 1
        call      putchar@PLT                                   #202.2
..LN84:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2
                                # Execution count [1.00e+00]
..LN85:
	.loc    1  203  is_stmt 1
        xor       edx, edx                                      #203.2
..LN86:
        xor       eax, eax                                      #203.2
        .align    16,0x90
..LN87:
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
..LN88:
	.loc    1  204  is_stmt 1
        movsxd    rax, eax                                      #204.3
..LN89:
	.loc    1  203  is_stmt 1
        inc       edx                                           #203.2
..LN90:
	.loc    1  204  is_stmt 1
        lea       ecx, DWORD PTR [4+rax]                        #204.14
..LN91:
	.loc    1  205  is_stmt 1
        lea       esi, DWORD PTR [2+rax]                        #205.16
..LN92:
	.loc    1  207  is_stmt 1
        lea       edi, DWORD PTR [3+rax]                        #207.16
..LN93:
	.loc    1  204  is_stmt 1
        mov       DWORD PTR [rbp+rax*4], ecx                    #204.3
..LN94:
	.loc    1  208  is_stmt 1
        lea       r8d, DWORD PTR [1+rax]                        #208.16
..LN95:
	.loc    1  205  is_stmt 1
        mov       DWORD PTR [4+rbp+rax*4], esi                  #205.3
..LN96:
	.loc    1  204  is_stmt 1
        lea       r9d, DWORD PTR [9+rax]                        #204.14
..LN97:
	.loc    1  206  is_stmt 1
        mov       DWORD PTR [8+rbp+rax*4], eax                  #206.3
..LN98:
	.loc    1  205  is_stmt 1
        lea       r10d, DWORD PTR [7+rax]                       #205.16
..LN99:
	.loc    1  207  is_stmt 1
        mov       DWORD PTR [12+rbp+rax*4], edi                 #207.3
..LN100:
	.loc    1  204  is_stmt 1
        lea       r11d, DWORD PTR [5+rax]                       #204.3
..LN101:
	.loc    1  208  is_stmt 1
        mov       DWORD PTR [16+rbp+rax*4], r8d                 #208.3
..LN102:
	.loc    1  207  is_stmt 1
        lea       ecx, DWORD PTR [8+rax]                        #207.16
..LN103:
	.loc    1  204  is_stmt 1
        mov       DWORD PTR [20+rbp+rax*4], r9d                 #204.3
..LN104:
	.loc    1  208  is_stmt 1
        lea       esi, DWORD PTR [6+rax]                        #208.16
..LN105:
	.loc    1  205  is_stmt 1
        mov       DWORD PTR [24+rbp+rax*4], r10d                #205.3
..LN106:
	.loc    1  206  is_stmt 1
        mov       DWORD PTR [28+rbp+rax*4], r11d                #206.3
..LN107:
	.loc    1  207  is_stmt 1
        mov       DWORD PTR [32+rbp+rax*4], ecx                 #207.3
..LN108:
	.loc    1  208  is_stmt 1
        mov       DWORD PTR [36+rbp+rax*4], esi                 #208.3
..LN109:
	.loc    1  203  is_stmt 1
        add       eax, 10                                       #203.2
..LN110:
        cmp       edx, 3200                                     #203.2
..LN111:
        jb        ..B2.4        # Prob 99%                      #203.2
..LN112:
                                # LOE rbx rbp r12 r13 r14 r15 eax edx
..B2.5:                         # Preds ..B2.4
                                # Execution count [1.00e+00]
..LN113:
	.loc    1  212  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #212.2
..LN114:
        mov       esi, 1                                        #212.2
..LN115:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]             #212.2
..___tag_value_set.41:
..LN116:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #212.2
..___tag_value_set.42:
..LN117:
                                # LOE rbx r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [1.00e+00]
..LN118:
	.loc    1  213  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #213.2
..LN119:
        mov       esi, 1                                        #213.2
..LN120:
        mov       rdi, QWORD PTR [b@GOTPCREL(%rip)]             #213.2
..___tag_value_set.43:
..LN121:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #213.2
..___tag_value_set.44:
..LN122:
                                # LOE rbx r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [1.00e+00]
..LN123:
	.loc    1  214  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #214.2
..LN124:
        mov       esi, 1                                        #214.2
..LN125:
        mov       rdi, QWORD PTR [c@GOTPCREL(%rip)]             #214.2
..___tag_value_set.45:
..LN126:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #214.2
..___tag_value_set.46:
..LN127:
                                # LOE rbx r12 r13 r14 r15
..B2.8:                         # Preds ..B2.7
                                # Execution count [1.00e+00]
..LN128:
	.loc    1  215  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #215.2
..LN129:
        mov       esi, 1                                        #215.2
..LN130:
        mov       rdi, QWORD PTR [d@GOTPCREL(%rip)]             #215.2
..___tag_value_set.47:
..LN131:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #215.2
..___tag_value_set.48:
..LN132:
                                # LOE rbx r12 r13 r14 r15
..B2.9:                         # Preds ..B2.8
                                # Execution count [1.00e+00]
..LN133:
	.loc    1  216  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #216.2
..LN134:
        mov       esi, 1                                        #216.2
..LN135:
        mov       rdi, QWORD PTR [e@GOTPCREL(%rip)]             #216.2
..___tag_value_set.49:
..LN136:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #216.2
..___tag_value_set.50:
..LN137:
                                # LOE rbx r12 r13 r14 r15
..B2.10:                        # Preds ..B2.9
                                # Execution count [1.00e+00]
..LN138:
	.loc    1  217  is_stmt 1
        mov       esi, -1                                       #217.2
..LN139:
        pxor      xmm0, xmm0                                    #217.2
..LN140:
        mov       rdi, QWORD PTR [aa@GOTPCREL(%rip)]            #217.2
..___tag_value_set.51:
..LN141:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #217.2
..___tag_value_set.52:
..LN142:
                                # LOE rbx r12 r13 r14 r15
..B2.11:                        # Preds ..B2.10
                                # Execution count [1.00e+00]
..LN143:
	.loc    1  218  is_stmt 1
        mov       esi, -1                                       #218.2
..LN144:
        pxor      xmm0, xmm0                                    #218.2
..LN145:
        mov       rdi, QWORD PTR [bb@GOTPCREL(%rip)]            #218.2
..___tag_value_set.53:
..LN146:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #218.2
..___tag_value_set.54:
..LN147:
                                # LOE rbx r12 r13 r14 r15
..B2.12:                        # Preds ..B2.11
                                # Execution count [1.00e+00]
..LN148:
	.loc    1  219  is_stmt 1
        mov       esi, -1                                       #219.2
..LN149:
        pxor      xmm0, xmm0                                    #219.2
..LN150:
        mov       rdi, QWORD PTR [cc@GOTPCREL(%rip)]            #219.2
..___tag_value_set.55:
..LN151:
#       set2d(float (*)[180], float, int)
        call      set2d@PLT                                     #219.2
..___tag_value_set.56:
..LN152:
                                # LOE rbx r12 r13 r14 r15
..B2.13:                        # Preds ..B2.12
                                # Execution count [1.00e+00]
..LN153:
	.loc    1  222  is_stmt 1
        mov       rax, QWORD PTR [indx@GOTPCREL(%rip)]          #222.3
..LN154:
	.loc    1  221  is_stmt 1
        xor       edx, edx                                      #221.2
..LN155:
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
..LN156:
	.loc    1  222  is_stmt 1
        mov       ecx, edx                                      #222.3
..LN157:
        inc       ecx                                           #222.16
..LN158:
        and       ecx, 3                                        #222.21
..LN159:
        inc       ecx                                           #222.23
..LN160:
        mov       DWORD PTR [rax+rdx*4], ecx                    #222.3
..LN161:
	.loc    1  221  is_stmt 1
        inc       rdx                                           #221.2
..LN162:
        cmp       rdx, 32000                                    #221.2
..LN163:
        jb        ..B2.14       # Prob 99%                      #221.2
..LN164:
                                # LOE rax rdx rbx r12 r13 r14 r15
..B2.15:                        # Preds ..B2.14
                                # Execution count [1.00e+00]
..LN165:
	.loc    1  224  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #224.3
..LN166:
        movss     DWORD PTR [rbx], xmm0                         #224.3
..LN167:
	.loc    1  225  is_stmt 1
        mov       DWORD PTR [r15], 1073741824                   #225.3
	.cfi_restore 6
..LN168:
	.loc    1  227  epilogue_begin  is_stmt 1
        pop       rbp                                           #227.1
	.cfi_def_cfa_offset 24
	.cfi_restore 3
..LN169:
        pop       rbx                                           #227.1
	.cfi_def_cfa_offset 16
	.cfi_restore 15
..LN170:
        pop       r15                                           #227.1
	.cfi_def_cfa_offset 8
..LN171:
        ret                                                     #227.1
        .align    16,0x90
..LN172:
                                # LOE
..LN173:
	.cfi_endproc
# mark_end;
	.type	set,@function
	.size	set,.-set
..LNset.174:
.LNset:
	.data
# -- End  set
	.section .text.set2d, "xa"
..TXTST2:
.L_2__routine_start_set2d_2:
# -- Begin  set2d
	.section .text.set2d, "xa"
# mark_begin;
       .align    16,0x90
	.globl set2d
# --- set2d(float (*)[180], float, int)
set2d:
# parameter 1(arr): rdi
# parameter 2(value): xmm0
# parameter 3(stride): esi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set2d.68:
..L69:
                                                         #96.1
..LN175:
	.loc    1  96  is_stmt 1
        movsxd    rsi, esi                                      #96.1
..LN176:
	.loc    1  100  prologue_end  is_stmt 1
        cmp       rsi, -1                                       #100.6
..LN177:
        je        ..B3.28       # Prob 33%                      #100.6
..LN178:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.2:                         # Preds ..B3.1
                                # Execution count [6.67e-01]
..LN179:
        cmp       rsi, -2                                       #100.6
..LN180:
        je        ..B3.8        # Prob 50%                      #100.6
..LN181:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.3:                         # Preds ..B3.2
                                # Execution count [3.33e-01]
..LN182:
	.loc    1  113  is_stmt 1
        xor       eax, eax                                      #113.14
..LN183:
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
..LN184:
..LN185:
	.loc    1  114  is_stmt 1
        xor       edx, edx                                      #114.15
..LN186:
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
..LN187:
..LN188:
	.loc    1  115  is_stmt 1
        movss     DWORD PTR [rdi+rdx*4], xmm0                   #115.5
..LN189:
	.loc    1  114  is_stmt 1
        add       rdx, rsi                                      #114.30
..LN190:
        cmp       rdx, 180                                      #114.24
..LN191:
        jl        ..B3.5        # Prob 82%                      #114.24
..LN192:
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.6:                         # Preds ..B3.5
                                # Execution count [6.00e+01]
..LN193:
	.loc    1  113  is_stmt 1
        inc       eax                                           #113.29
..LN194:
        add       rdi, 720                                      #113.29
..LN195:
        cmp       eax, 180                                      #113.23
..LN196:
        jl        ..B3.4        # Prob 99%                      #113.23
..LN197:
        jmp       ..B3.48       # Prob 100%                     #113.23
..LN198:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm0
..B3.8:                         # Preds ..B3.2
                                # Execution count [3.34e-01]
..LN199:
	.loc    1  107  is_stmt 1
        xor       r9d, r9d                                      #107.3
..LN200:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B3.9:                         # Preds ..B3.26 ..B3.8
                                # Execution count [6.00e+01]
..L73:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN201:
	.loc    1  109  is_stmt 1
        movsxd    r9, r9d                                       #109.5
..LN202:
        imul      r8, r9, 720                                   #109.5
..LN203:
        add       r8, rdi                                       #109.5
..LN204:
	.loc    1  108  is_stmt 1
        mov       rax, r8                                       #108.4
..LN205:
        and       rax, 15                                       #108.4
..LN206:
        test      eax, eax                                      #108.4
..LN207:
        je        ..B3.14       # Prob 50%                      #108.4
..LN208:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B3.10:                        # Preds ..B3.9
                                # Execution count [6.00e+01]
..LN209:
	.loc    1  109  is_stmt 1
        inc       r9d                                           #109.34
..LN210:
	.loc    1  108  is_stmt 1
        test      al, 3                                         #108.4
..LN211:
        jne       ..B3.49       # Prob 10%                      #108.4
..LN212:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax r9d
..B3.11:                        # Preds ..B3.10
                                # Execution count [6.00e+01]
..LN213:
	.loc    1  109  is_stmt 1
        mov       esi, r9d                                      #109.42
..LN214:
        pxor      xmm1, xmm1                                    #109.42
..LN215:
        imul      esi, r9d                                      #109.42
..LN216:
	.loc    1  108  is_stmt 1
        neg       eax                                           #108.4
..LN217:
	.loc    1  109  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #109.42
..LN218:
        cvtsi2ss  xmm1, esi                                     #109.42
..LN219:
	.loc    1  108  is_stmt 1
        add       eax, 16                                       #108.4
..LN220:
        xor       ecx, ecx                                      #108.4
..LN221:
        shr       eax, 2                                        #108.4
..LN222:
        mov       edx, eax                                      #108.4
..LN223:
	.loc    1  109  is_stmt 1
        divss     xmm0, xmm1                                    #109.42
..LN224:
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B3.12:                        # Preds ..B3.12 ..B3.11
                                # Execution count [1.08e+04]
..L74:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN225:
	.loc    1  108  is_stmt 1
..LN226:
	.loc    1  109  is_stmt 1
        movss     DWORD PTR [r8+rcx*4], xmm0                    #109.5
..LN227:
	.loc    1  108  is_stmt 1
        inc       rcx                                           #108.4
..LN228:
        cmp       rcx, rdx                                      #108.4
..LN229:
        jb        ..B3.12       # Prob 99%                      #108.4
..LN230:
        jmp       ..B3.15       # Prob 100%                     #108.4
..LN231:
                                # LOE rdx rcx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B3.14:                        # Preds ..B3.9
                                # Execution count [3.00e+01]
..LN232:
	.loc    1  109  is_stmt 1
        inc       r9d                                           #109.34
..LN233:
        pxor      xmm1, xmm1                                    #109.42
..LN234:
        mov       ecx, r9d                                      #109.42
..LN235:
	.loc    1  108  is_stmt 1
        xor       edx, edx                                      #108.4
..LN236:
	.loc    1  109  is_stmt 1
        imul      ecx, r9d                                      #109.42
..LN237:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #109.42
..LN238:
        cvtsi2ss  xmm1, ecx                                     #109.42
..LN239:
        divss     xmm0, xmm1                                    #109.42
..LN240:
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 eax r9d xmm0
..B3.15:                        # Preds ..B3.12 ..B3.14
                                # Execution count [6.00e+01]
..LN241:
	.loc    1  108  is_stmt 1
        neg       eax                                           #108.4
..LN242:
        add       eax, 4                                        #108.4
..LN243:
        and       eax, 7                                        #108.4
..LN244:
        neg       eax                                           #108.4
..LN245:
	.loc    1  109  is_stmt 1
        shufps    xmm0, xmm0, 0                                 #109.42
..LN246:
	.loc    1  108  is_stmt 1
        lea       ecx, DWORD PTR [180+rax]                      #108.4
..LN247:
        mov       esi, ecx                                      #108.4
..LN248:
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
..LN249:
	.loc    1  109  is_stmt 1
        movups    XMMWORD PTR [r8+rdx*4], xmm0                  #109.5
..LN250:
        movups    XMMWORD PTR [16+r8+rdx*4], xmm0               #109.5
..LN251:
	.loc    1  108  is_stmt 1
        add       rdx, 8                                        #108.4
..LN252:
        cmp       rdx, rsi                                      #108.4
..LN253:
        jb        ..B3.16       # Prob 99%                      #108.4
..LN254:
                                # LOE rdx rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.17:                        # Preds ..B3.16
                                # Execution count [6.00e+01]
..LN255:
        add       eax, 181                                      #108.4
..LN256:
        cmp       eax, 180                                      #108.4
..LN257:
        ja        ..B3.26       # Prob 50%                      #108.4
..LN258:
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 ecx r9d xmm0
..B3.18:                        # Preds ..B3.17
                                # Execution count [6.00e+01]
..LN259:
        mov       eax, ecx                                      #108.4
..LN260:
        neg       eax                                           #108.4
..LN261:
        add       eax, 180                                      #108.4
..LN262:
        cmp       eax, 4                                        #108.4
..LN263:
        jb        ..B3.50       # Prob 10%                      #108.4
..LN264:
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax ecx r9d xmm0
..B3.19:                        # Preds ..B3.18
                                # Execution count [6.00e+01]
..LN265:
        mov       edx, eax                                      #108.4
..LN266:
        xor       r10d, r10d                                    #108.4
..LN267:
        and       edx, -4                                       #108.4
..LN268:
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
..LN269:
        add       r10d, 4                                       #108.4
..LN270:
	.loc    1  109  is_stmt 1
        movups    XMMWORD PTR [r8+rsi*4], xmm0                  #109.5
..LN271:
	.loc    1  108  is_stmt 1
        add       rsi, 4                                        #108.4
..LN272:
        cmp       r10d, edx                                     #108.4
..LN273:
        jb        ..B3.20       # Prob 99%                      #108.4
..LN274:
                                # LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 eax edx ecx r9d r10d xmm0
..B3.22:                        # Preds ..B3.20 ..B3.50 ..B3.49
                                # Execution count [6.00e+01]
..LN275:
        add       ecx, edx                                      #108.4
..LN276:
        movsxd    rcx, ecx                                      #108.4
..LN277:
        cmp       edx, eax                                      #108.4
..LN278:
        jae       ..B3.26       # Prob 0%                       #108.4
..LN279:
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d
..B3.23:                        # Preds ..B3.22
                                # Execution count [6.00e+01]
..LN280:
	.loc    1  109  is_stmt 1
        mov       esi, r9d                                      #109.42
..LN281:
        pxor      xmm1, xmm1                                    #109.42
..LN282:
        imul      esi, r9d                                      #109.42
..LN283:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #109.42
..LN284:
        cvtsi2ss  xmm1, esi                                     #109.42
..LN285:
        divss     xmm0, xmm1                                    #109.42
..LN286:
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
..LN287:
	.loc    1  108  is_stmt 1
        inc       edx                                           #108.4
..LN288:
	.loc    1  109  is_stmt 1
        movss     DWORD PTR [r8+rcx*4], xmm0                    #109.5
..LN289:
	.loc    1  108  is_stmt 1
        inc       rcx                                           #108.4
..LN290:
        cmp       edx, eax                                      #108.4
..LN291:
        jb        ..B3.24       # Prob 99%                      #108.4
..LN292:
                                # LOE rcx rbx rbp rdi r8 r12 r13 r14 r15 eax edx r9d xmm0
..B3.26:                        # Preds ..B3.24 ..B3.17 ..B3.22
                                # Execution count [6.00e+01]
..LN293:
	.loc    1  107  is_stmt 1
        cmp       r9d, 180                                      #107.3
..LN294:
        jb        ..B3.9        # Prob 99%                      #107.3
..LN295:
        jmp       ..B3.48       # Prob 100%                     #107.3
..LN296:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r9d
..B3.28:                        # Preds ..B3.1
                                # Execution count [3.34e-01]
..LN297:
	.loc    1  101  is_stmt 1
        xor       r8d, r8d                                      #101.3
..LN298:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B3.29:                        # Preds ..B3.46 ..B3.28
                                # Execution count [6.00e+01]
..L78:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN299:
	.loc    1  102  is_stmt 1
        mov       rdx, rdi                                      #102.4
..LN300:
        and       rdx, 15                                       #102.4
..LN301:
        test      edx, edx                                      #102.4
..LN302:
        je        ..B3.34       # Prob 50%                      #102.4
..LN303:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B3.30:                        # Preds ..B3.29
                                # Execution count [6.00e+01]
..LN304:
        test      dl, 3                                         #102.4
..LN305:
        jne       ..B3.51       # Prob 10%                      #102.4
..LN306:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx r8d
..B3.31:                        # Preds ..B3.30
                                # Execution count [6.00e+01]
..LN307:
	.loc    1  103  is_stmt 1
        pxor      xmm1, xmm1                                    #103.33
..LN308:
        lea       esi, DWORD PTR [1+r8]                         #103.33
..LN309:
        cvtsi2ss  xmm1, esi                                     #103.33
..LN310:
	.loc    1  102  is_stmt 1
        neg       edx                                           #102.4
..LN311:
        xor       ecx, ecx                                      #102.4
..LN312:
        add       edx, 16                                       #102.4
..LN313:
        shr       edx, 2                                        #102.4
..LN314:
	.loc    1  103  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #103.33
..LN315:
	.loc    1  102  is_stmt 1
        mov       eax, edx                                      #102.4
..LN316:
	.loc    1  103  is_stmt 1
        divss     xmm0, xmm1                                    #103.33
..LN317:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.32:                        # Preds ..B3.32 ..B3.31
                                # Execution count [1.08e+04]
..L79:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN318:
	.loc    1  102  is_stmt 1
..LN319:
	.loc    1  103  is_stmt 1
        movss     DWORD PTR [rdi+rcx*4], xmm0                   #103.5
..LN320:
	.loc    1  102  is_stmt 1
        inc       rcx                                           #102.4
..LN321:
        cmp       rcx, rax                                      #102.4
..LN322:
        jb        ..B3.32       # Prob 99%                      #102.4
..LN323:
        jmp       ..B3.35       # Prob 100%                     #102.4
..LN324:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.34:                        # Preds ..B3.29
                                # Execution count [3.00e+01]
..LN325:
	.loc    1  103  is_stmt 1
        pxor      xmm1, xmm1                                    #103.33
..LN326:
        lea       ecx, DWORD PTR [1+r8]                         #103.33
..LN327:
        cvtsi2ss  xmm1, ecx                                     #103.33
..LN328:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #103.33
..LN329:
	.loc    1  102  is_stmt 1
        xor       eax, eax                                      #102.4
..LN330:
	.loc    1  103  is_stmt 1
        divss     xmm0, xmm1                                    #103.33
..LN331:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B3.35:                        # Preds ..B3.32 ..B3.34
                                # Execution count [6.00e+01]
..LN332:
	.loc    1  102  is_stmt 1
        neg       edx                                           #102.4
..LN333:
        lea       r9, QWORD PTR [rdi+rax*4]                     #102.4
..LN334:
        add       edx, 4                                        #102.4
..LN335:
        and       edx, 7                                        #102.4
..LN336:
        neg       edx                                           #102.4
..LN337:
	.loc    1  103  is_stmt 1
        shufps    xmm0, xmm0, 0                                 #103.33
..LN338:
	.loc    1  102  is_stmt 1
        lea       ecx, DWORD PTR [180+rdx]                      #102.4
..LN339:
        mov       esi, ecx                                      #102.4
..LN340:
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
..LN341:
        add       rax, 8                                        #102.4
..LN342:
	.loc    1  103  is_stmt 1
        movups    XMMWORD PTR [r9], xmm0                        #103.5
..LN343:
        movups    XMMWORD PTR [16+r9], xmm0                     #103.5
..LN344:
	.loc    1  102  is_stmt 1
        add       r9, 32                                        #102.4
..LN345:
        cmp       rax, rsi                                      #102.4
..LN346:
        jb        ..B3.36       # Prob 99%                      #102.4
..LN347:
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d xmm0
..B3.37:                        # Preds ..B3.36
                                # Execution count [6.00e+01]
..LN348:
        add       edx, 181                                      #102.4
..LN349:
        cmp       edx, 180                                      #102.4
..LN350:
        ja        ..B3.46       # Prob 50%                      #102.4
..LN351:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d xmm0
..B3.38:                        # Preds ..B3.37
                                # Execution count [6.00e+01]
..LN352:
        mov       edx, ecx                                      #102.4
..LN353:
        neg       edx                                           #102.4
..LN354:
        add       edx, 180                                      #102.4
..LN355:
        cmp       edx, 4                                        #102.4
..LN356:
        jb        ..B3.52       # Prob 10%                      #102.4
..LN357:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx r8d xmm0
..B3.39:                        # Preds ..B3.38
                                # Execution count [6.00e+01]
..LN358:
        mov       eax, edx                                      #102.4
..LN359:
        xor       r9d, r9d                                      #102.4
..LN360:
        and       eax, -4                                       #102.4
..LN361:
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
..LN362:
        add       r9d, 4                                        #102.4
..LN363:
	.loc    1  103  is_stmt 1
        movups    XMMWORD PTR [rdi+rsi*4], xmm0                 #103.5
..LN364:
	.loc    1  102  is_stmt 1
        add       rsi, 4                                        #102.4
..LN365:
        cmp       r9d, eax                                      #102.4
..LN366:
        jb        ..B3.40       # Prob 99%                      #102.4
..LN367:
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d r9d xmm0
..B3.42:                        # Preds ..B3.40 ..B3.52 ..B3.51
                                # Execution count [6.00e+01]
..LN368:
        add       ecx, eax                                      #102.4
..LN369:
        movsxd    rcx, ecx                                      #102.4
..LN370:
        cmp       eax, edx                                      #102.4
..LN371:
        jae       ..B3.46       # Prob 0%                       #102.4
..LN372:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d
..B3.43:                        # Preds ..B3.42
                                # Execution count [6.00e+01]
..LN373:
	.loc    1  103  is_stmt 1
        pxor      xmm1, xmm1                                    #103.33
..LN374:
        lea       esi, DWORD PTR [1+r8]                         #103.33
..LN375:
        cvtsi2ss  xmm1, esi                                     #103.33
..LN376:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #103.33
..LN377:
        divss     xmm0, xmm1                                    #103.33
..LN378:
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
..LN379:
	.loc    1  102  is_stmt 1
        inc       eax                                           #102.4
..LN380:
	.loc    1  103  is_stmt 1
        movss     DWORD PTR [rdi+rcx*4], xmm0                   #103.5
..LN381:
	.loc    1  102  is_stmt 1
        inc       rcx                                           #102.4
..LN382:
        cmp       eax, edx                                      #102.4
..LN383:
        jb        ..B3.44       # Prob 99%                      #102.4
..LN384:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx r8d xmm0
..B3.46:                        # Preds ..B3.44 ..B3.42 ..B3.37
                                # Execution count [6.00e+01]
..LN385:
	.loc    1  101  is_stmt 1
        inc       r8d                                           #101.3
..LN386:
        add       rdi, 720                                      #101.3
..LN387:
        cmp       r8d, 180                                      #101.3
..LN388:
        jb        ..B3.29       # Prob 99%                      #101.3
..LN389:
                                # LOE rbx rbp rdi r12 r13 r14 r15 r8d
..B3.48:                        # Preds ..B3.46 ..B3.26 ..B3.6
                                # Execution count [1.00e+00]
..LN390:
	.loc    1  119  is_stmt 1
        xor       eax, eax                                      #119.9
..LN391:
	.loc    1  119  epilogue_begin  is_stmt 1
        ret                                                     #119.9
..LN392:
                                # LOE
..B3.49:                        # Preds ..B3.10
                                # Execution count [6.00e+00]: Infreq
..LN393:
	.loc    1  108  is_stmt 1
        xor       ecx, ecx                                      #108.4
..LN394:
        mov       eax, 180                                      #108.4
..LN395:
        xor       edx, edx                                      #108.4
..LN396:
        jmp       ..B3.22       # Prob 100%                     #108.4
..LN397:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B3.50:                        # Preds ..B3.18
                                # Execution count [6.00e+00]: Infreq
..LN398:
        xor       edx, edx                                      #108.4
..LN399:
        jmp       ..B3.22       # Prob 100%                     #108.4
..LN400:
                                # LOE rbx rbp rdi r8 r12 r13 r14 r15 eax edx ecx r9d
..B3.51:                        # Preds ..B3.30
                                # Execution count [6.00e+00]: Infreq
..LN401:
	.loc    1  102  is_stmt 1
        xor       ecx, ecx                                      #102.4
..LN402:
        mov       edx, 180                                      #102.4
..LN403:
        xor       eax, eax                                      #102.4
..LN404:
        jmp       ..B3.42       # Prob 100%                     #102.4
..LN405:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
..B3.52:                        # Preds ..B3.38
                                # Execution count [6.00e+00]: Infreq
..LN406:
        xor       eax, eax                                      #102.4
..LN407:
        jmp       ..B3.42       # Prob 100%                     #102.4
        .align    16,0x90
..LN408:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ecx r8d
..LN409:
	.cfi_endproc
# mark_end;
	.type	set2d,@function
	.size	set2d,.-set2d
..LNset2d.410:
.LNset2d:
	.data
# -- End  set2d
	.section .text.s242, "xa"
..TXTST3:
.L_2__routine_start_s242_3:
# -- Begin  s242
	.section .text.s242, "xa"
# mark_begin;
       .align    16,0x90
	.globl s242
# --- s242()
s242:
# parameter 1(s1): xmm0
# parameter 2(s2): xmm1
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_s242.88:
..L89:
                                                         #3.1
..LN411:
	.file   4 "s242.c"
	.loc    4  3  is_stmt 1
        push      r13                                           #3.1
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
..LN412:
        push      rbx                                           #3.1
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
..LN413:
        sub       rsp, 360                                      #3.1
	.cfi_def_cfa_offset 384
..LN414:
	.loc    4  10  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.3(%rip)]         #10.2
..LN415:
	.loc    4  3  is_stmt 1
        movss     DWORD PTR [48+rsp], xmm1                      #3.1[spill]
..LN416:
        movss     DWORD PTR [40+rsp], xmm0                      #3.1[spill]
..___tag_value_s242.96:
..LN417:
	.loc    4  10  is_stmt 1
#       init(char *)
        call      init@PLT                                      #10.2
..___tag_value_s242.97:
..LN418:
                                # LOE rbp r12 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [1.00e+00]
..LN419:
	.loc    4  11  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #11.12
..LN420:
                                # LOE rax rbp r12 r14 r15
..B4.35:                        # Preds ..B4.2
                                # Execution count [1.00e+00]
..LN421:
        mov       QWORD PTR [rsp], rax                          #11.12[spill]
..LN422:
                                # LOE rbp r12 r14 r15
..B4.3:                         # Preds ..B4.35
                                # Execution count [0.00e+00]
..LN423:
	.loc    4  15  is_stmt 1
        movss     xmm0, DWORD PTR [40+rsp]                      #15.22[spill]
..LN424:
	.loc    4  13  is_stmt 1
        xor       eax, eax                                      #13.2
..LN425:
	.loc    4  17  is_stmt 1
        mov       r10, QWORD PTR [e@GOTPCREL(%rip)]             #17.3
..LN426:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]             #17.3
..LN427:
        mov       r8, QWORD PTR [cc@GOTPCREL(%rip)]             #17.3
..LN428:
	.loc    4  14  is_stmt 1
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]             #14.3
..LN429:
        mov       rdx, QWORD PTR [c@GOTPCREL(%rip)]             #14.3
..LN430:
        mov       rcx, QWORD PTR [d@GOTPCREL(%rip)]             #14.3
..LN431:
        mov       r13, QWORD PTR [a@GOTPCREL(%rip)]             #14.3
..LN432:
	.loc    4  17  is_stmt 1
        mov       rbx, QWORD PTR [bb@GOTPCREL(%rip)]            #17.3
..LN433:
        mov       QWORD PTR [72+rsp], r8                        #17.3[spill]
..LN434:
        mov       QWORD PTR [64+rsp], r9                        #17.3[spill]
..LN435:
        mov       QWORD PTR [56+rsp], r10                       #17.3[spill]
..LN436:
        mov       QWORD PTR [8+rsp], r12                        #17.3[spill]
	.cfi_offset 12, -376
..LN437:
        mov       r12, rcx                                      #17.3
..LN438:
        mov       QWORD PTR [16+rsp], r14                       #17.3[spill]
	.cfi_offset 14, -368
..LN439:
        mov       r14, rdx                                      #17.3
..LN440:
        mov       QWORD PTR [24+rsp], r15                       #17.3[spill]
	.cfi_offset 15, -360
..LN441:
        mov       r15, rsi                                      #17.3
..LN442:
        mov       QWORD PTR [32+rsp], rbp                       #17.3[spill]
	.cfi_offset 6, -352
..LN443:
        mov       ebp, eax                                      #17.3
..LN444:
	.loc    4  15  is_stmt 1
        addss     xmm0, DWORD PTR [48+rsp]                      #15.22[spill]
..LN445:
        movss     DWORD PTR [40+rsp], xmm0                      #15.22[spill]
..LN446:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.4:                         # Preds ..B4.25 ..B4.3
                                # Execution count [0.00e+00]
..L102:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN447:
	.loc    4  13  is_stmt 1
..LN448:
	.loc    4  14  is_stmt 1
        xor       r11d, r11d                                    #14.3
..LN449:
        mov       r8d, 31999                                    #14.3
..LN450:
	.loc    4  15  is_stmt 1
        movss     xmm0, DWORD PTR [40+rsp]                      #15.22[spill]
..LN451:
	.loc    4  14  is_stmt 1
        movss     xmm1, DWORD PTR [40+rsp]                      #14.3[spill]
..LN452:
	.loc    4  15  is_stmt 1
        shufps    xmm0, xmm0, 0                                 #15.22
..LN453:
	.loc    4  14  is_stmt 1
        mov       QWORD PTR [80+rsp], rbx                       #14.3[spill]
..LN454:
        mov       DWORD PTR [48+rsp], ebp                       #14.3[spill]
..LN455:
        xor       ebp, ebp                                      #14.3
..LN456:
                                # LOE r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1
..B4.5:                         # Preds ..B4.23 ..B4.4
                                # Execution count [1.99e+05]
..L103:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # %s was not vectorized: inner loop was already vectorized
..LN457:
        mov       eax, r11d                                     #14.3
..LN458:
        shl       eax, 6                                        #14.3
..LN459:
        mov       r9d, eax                                      #14.3
..LN460:
        neg       r9d                                           #14.3
..LN461:
        lea       r10d, DWORD PTR [64+rax]                      #14.3
..LN462:
        cmp       r10d, 31999                                   #14.3
..LN463:
        cmova     r10d, r8d                                     #14.3
..LN464:
        lea       ebx, DWORD PTR [r9+r10]                       #14.3
..LN465:
        cmp       ebx, 11                                       #14.3
..LN466:
        jb        ..B4.31       # Prob 10%                      #14.3
..LN467:
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r10d r11d xmm0 xmm1
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.99e+05]
..LN468:
        xor       edi, edi                                      #14.3
..LN469:
        lea       r9d, DWORD PTR [5+r9+r10]                     #14.3
..LN470:
	.loc    4  15  is_stmt 1
        mov       r10d, r11d                                    #15.32
..LN471:
	.loc    4  14  is_stmt 1
        and       r9d, 7                                        #14.3
..LN472:
	.loc    4  15  is_stmt 1
        mov       rdx, r10                                      #15.46
..LN473:
	.loc    4  14  is_stmt 1
        neg       r9d                                           #14.3
..LN474:
	.loc    4  15  is_stmt 1
        shl       rdx, 8                                        #15.46
..LN475:
	.loc    4  14  is_stmt 1
        add       r9d, ebx                                      #14.3
..LN476:
	.loc    4  15  is_stmt 1
        lea       rsi, QWORD PTR [r15+rdx]                      #15.32
..LN477:
        lea       rcx, QWORD PTR [r14+rdx]                      #15.39
..LN478:
        add       rdx, r12                                      #15.46
..LN479:
                                # LOE rdx rcx rsi rdi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.7:                         # Preds ..B4.7 ..B4.6
                                # Execution count [6.35e+09]
..L104:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # LOOP WAS STRIPMINED BY 64
                # PEELED LOOP FOR VECTORIZATION
..LN480:
	.loc    4  14  is_stmt 1
..LN481:
	.loc    4  15  is_stmt 1
        movss     xmm2, DWORD PTR [4+rsi+rdi*4]                 #15.32
..LN482:
        addss     xmm2, xmm1                                    #15.32
..LN483:
        addss     xmm2, DWORD PTR [4+rcx+rdi*4]                 #15.39
..LN484:
        addss     xmm2, DWORD PTR [4+rdx+rdi*4]                 #15.46
..LN485:
        movss     DWORD PTR [96+rsp+rdi*4], xmm2                #15.4
..LN486:
	.loc    4  14  is_stmt 1
        inc       rdi                                           #14.3
..LN487:
        cmp       rdi, 3                                        #14.3
..LN488:
        jb        ..B4.7        # Prob 99%                      #14.3
..LN489:
                                # LOE rdx rcx rsi rdi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.8:                         # Preds ..B4.7
                                # Execution count [1.99e+05]
..LN490:
	.loc    4  15  is_stmt 1
        shl       r10, 6                                        #15.32
..LN491:
	.loc    4  14  is_stmt 1
        mov       ecx, 3                                        #14.3
..LN492:
        movsxd    rdx, r9d                                      #14.3
        .align    16,0x90
..LN493:
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
..LN494:
        lea       rsi, QWORD PTR [1+rcx+r10]                    #14.3
..LN495:
	.loc    4  15  is_stmt 1
        movups    xmm2, XMMWORD PTR [r15+rsi*4]                 #15.32
..LN496:
	.loc    4  14  is_stmt 1
        lea       rdi, QWORD PTR [5+rcx+r10]                    #14.3
..LN497:
	.loc    4  15  is_stmt 1
        movups    xmm3, XMMWORD PTR [r15+rdi*4]                 #15.32
..LN498:
        addps     xmm2, xmm0                                    #15.32
..LN499:
        addps     xmm3, xmm0                                    #15.32
..LN500:
        addps     xmm2, XMMWORD PTR [r14+rsi*4]                 #15.39
..LN501:
        addps     xmm3, XMMWORD PTR [r14+rdi*4]                 #15.39
..LN502:
        addps     xmm2, XMMWORD PTR [r12+rsi*4]                 #15.46
..LN503:
        addps     xmm3, XMMWORD PTR [r12+rdi*4]                 #15.46
..LN504:
        movups    XMMWORD PTR [96+rsp+rcx*4], xmm2              #15.4
..LN505:
        movups    XMMWORD PTR [112+rsp+rcx*4], xmm3             #15.4
..LN506:
	.loc    4  14  is_stmt 1
        add       rcx, 8                                        #14.3
..LN507:
        cmp       rcx, rdx                                      #14.3
..LN508:
        jb        ..B4.9        # Prob 99%                      #14.3
..LN509:
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.10:                        # Preds ..B4.9
                                # Execution count [1.79e+05]
..LN510:
        lea       r10d, DWORD PTR [1+r9]                        #14.3
..LN511:
        cmp       r10d, ebx                                     #14.3
..LN512:
        ja        ..B4.20       # Prob 50%                      #14.3
..LN513:
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.11:                        # Preds ..B4.10
                                # Execution count [1.89e+05]
..LN514:
        mov       esi, ebx                                      #14.3
..LN515:
        sub       esi, r9d                                      #14.3
..LN516:
        cmp       esi, 4                                        #14.3
..LN517:
        jb        ..B4.30       # Prob 10%                      #14.3
..LN518:
                                # LOE r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.12:                        # Preds ..B4.11
                                # Execution count [1.99e+05]
..LN519:
        mov       r10d, esi                                     #14.3
..LN520:
	.loc    4  15  is_stmt 1
        lea       edx, DWORD PTR [r9+rax]                       #15.32
..LN521:
	.loc    4  14  is_stmt 1
        and       r10d, -4                                      #14.3
..LN522:
        xor       ecx, ecx                                      #14.3
..LN523:
	.loc    4  15  is_stmt 1
        movsxd    rdx, edx                                      #15.32
..LN524:
	.loc    4  14  is_stmt 1
        movsxd    r10, r10d                                     #14.3
..LN525:
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
..LN526:
        lea       rdi, QWORD PTR [1+rcx+rdx]                    #14.3
..LN527:
	.loc    4  15  is_stmt 1
        movups    xmm2, XMMWORD PTR [r15+rdi*4]                 #15.32
..LN528:
        addps     xmm2, xmm0                                    #15.32
..LN529:
        addps     xmm2, XMMWORD PTR [r14+rdi*4]                 #15.39
..LN530:
        addps     xmm2, XMMWORD PTR [r12+rdi*4]                 #15.46
..LN531:
        mov       edi, ecx                                      #15.4
..LN532:
        add       edi, r9d                                      #15.4
..LN533:
	.loc    4  14  is_stmt 1
        add       rcx, 4                                        #14.3
..LN534:
	.loc    4  15  is_stmt 1
        movsxd    rdi, edi                                      #15.4
..LN535:
        movups    XMMWORD PTR [96+rsp+rdi*4], xmm2              #15.4
..LN536:
	.loc    4  14  is_stmt 1
        cmp       rcx, r10                                      #14.3
..LN537:
        jb        ..B4.13       # Prob 99%                      #14.3
..LN538:
                                # LOE rdx rcx r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.15:                        # Preds ..B4.13 ..B4.30 ..B4.32
                                # Execution count [1.99e+05]
..LN539:
        movsxd    rsi, esi                                      #14.3
..LN540:
        cmp       r10, rsi                                      #14.3
..LN541:
        jae       ..B4.19       # Prob 0%                       #14.3
..LN542:
                                # LOE rsi r10 r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.16:                        # Preds ..B4.15
                                # Execution count [1.99e+05]
..LN543:
	.loc    4  15  is_stmt 1
        add       eax, r9d                                      #15.46
..LN544:
        movsxd    rax, eax                                      #15.32
..LN545:
        lea       rcx, QWORD PTR [r12+rax*4]                    #15.46
..LN546:
        lea       rdx, QWORD PTR [r14+rax*4]                    #15.39
..LN547:
        lea       rax, QWORD PTR [r15+rax*4]                    #15.32
..LN548:
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
..LN549:
	.loc    4  14  is_stmt 1
..LN550:
	.loc    4  15  is_stmt 1
        movss     xmm2, DWORD PTR [4+rax+r10*4]                 #15.32
..LN551:
        mov       edi, r10d                                     #15.4
..LN552:
        add       edi, r9d                                      #15.4
..LN553:
        addss     xmm2, xmm1                                    #15.32
..LN554:
        movsxd    rdi, edi                                      #15.4
..LN555:
        addss     xmm2, DWORD PTR [4+rdx+r10*4]                 #15.39
..LN556:
        addss     xmm2, DWORD PTR [4+rcx+r10*4]                 #15.46
..LN557:
	.loc    4  14  is_stmt 1
        inc       r10                                           #14.3
..LN558:
	.loc    4  15  is_stmt 1
        movss     DWORD PTR [96+rsp+rdi*4], xmm2                #15.4
..LN559:
	.loc    4  14  is_stmt 1
        cmp       r10, rsi                                      #14.3
..LN560:
        jb        ..B4.17       # Prob 99%                      #14.3
..LN561:
                                # LOE rax rdx rcx rsi r10 r12 r13 r14 r15 ebx ebp r8d r9d r11d xmm0 xmm1
..B4.19:                        # Preds ..B4.17 ..B4.15 ..B4.31
                                # Execution count [1.09e+05]
..LN562:
        test      ebx, ebx                                      #14.3
..LN563:
        je        ..B4.23       # Prob 0%                       #14.3
..LN564:
                                # LOE r12 r13 r14 r15 ebx ebp r8d r11d xmm0 xmm1
..B4.20:                        # Preds ..B4.19 ..B4.10
                                # Execution count [1.99e+05]
..LN565:
	.loc    4  15  is_stmt 1
        mov       eax, r11d                                     #15.4
..LN566:
	.loc    4  14  is_stmt 1
        xor       r9d, r9d                                      #14.3
..LN567:
	.loc    4  15  is_stmt 1
        shl       rax, 8                                        #15.4
..LN568:
	.loc    4  14  is_stmt 1
        movsxd    rbx, ebx                                      #14.3
..LN569:
	.loc    4  15  is_stmt 1
        movss     xmm2, DWORD PTR [r13+rax]                     #15.4
..LN570:
        add       rax, r13                                      #15.4
..LN571:
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
..LN572:
	.loc    4  14  is_stmt 1
        addss     xmm2, DWORD PTR [96+rsp+r9*4]                 #14.3
..LN573:
	.loc    4  15  is_stmt 1
        movss     DWORD PTR [4+rax+r9*4], xmm2                  #15.4
..LN574:
	.loc    4  14  is_stmt 1
        inc       r9                                            #14.3
..LN575:
        cmp       r9, rbx                                       #14.3
..LN576:
        jb        ..B4.21       # Prob 99%                      #14.3
..LN577:
                                # LOE rax rbx r9 r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1 xmm2
..B4.23:                        # Preds ..B4.21 ..B4.19
                                # Execution count [6.35e+09]
..LN578:
        inc       r11d                                          #14.3
..LN579:
        cmp       r11d, 500                                     #14.3
..LN580:
        jb        ..B4.5        # Prob 99%                      #14.3
..LN581:
                                # LOE r12 r13 r14 r15 ebp r8d r11d xmm0 xmm1
..B4.24:                        # Preds ..B4.23
                                # Execution count [1.99e+05]
..LN582:
        mov       rbx, QWORD PTR [80+rsp]                       #[spill]
..LN583:
	.loc    4  17  is_stmt 1
        mov       rdi, r13                                      #17.3
..LN584:
        mov       ebp, DWORD PTR [48+rsp]                       #[spill]
..LN585:
        mov       rsi, r15                                      #17.3
..LN586:
        push      QWORD PTR [72+rsp]                            #17.3[spill]
	.cfi_def_cfa_offset 392
..LN587:
        push      rbx                                           #17.3
	.cfi_def_cfa_offset 400
..LN588:
        mov       rdx, r14                                      #17.3
..LN589:
        mov       rcx, r12                                      #17.3
..LN590:
        pxor      xmm0, xmm0                                    #17.3
..LN591:
        mov       r8, QWORD PTR [72+rsp]                        #17.3[spill]
..LN592:
        mov       r9, QWORD PTR [80+rsp]                        #17.3[spill]
..___tag_value_s242.111:
..LN593:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #17.3
..___tag_value_s242.112:
..LN594:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.36:                        # Preds ..B4.24
                                # Execution count [1.99e+05]
..LN595:
        add       rsp, 16                                       #17.3
	.cfi_def_cfa_offset 384
..LN596:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.25:                        # Preds ..B4.36
                                # Execution count [1.99e+05]
..LN597:
	.loc    4  13  is_stmt 1
        inc       ebp                                           #13.2
..LN598:
        cmp       ebp, 200000                                   #13.2
..LN599:
        jb        ..B4.4        # Prob 99%                      #13.2
..LN600:
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.26:                        # Preds ..B4.25
                                # Execution count [1.00e+00]
..LN601:
        mov       r12, QWORD PTR [8+rsp]                        #[spill]
	.cfi_restore 12
..LN602:
        mov       r14, QWORD PTR [16+rsp]                       #[spill]
	.cfi_restore 14
..LN603:
        mov       r15, QWORD PTR [24+rsp]                       #[spill]
	.cfi_restore 15
..LN604:
        mov       rbp, QWORD PTR [32+rsp]                       #[spill]
	.cfi_restore 6
..LN605:
	.loc    4  19  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #19.10
	.cfi_offset 6, -352
	.cfi_offset 12, -376
	.cfi_offset 14, -368
	.cfi_offset 15, -360
..LN606:
                                # LOE rax rbp r12 r14 r15
..B4.27:                        # Preds ..B4.26
                                # Execution count [1.00e+00]
..LN607:
	.loc    4  21  is_stmt 1
        sub       rax, QWORD PTR [rsp]                          #21.2[spill]
..LN608:
        pxor      xmm0, xmm0                                    #21.2
..LN609:
        cvtsi2sd  xmm0, rax                                     #21.2
..LN610:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]  #21.2
..LN611:
        lea       rdi, QWORD PTR [.L_2__STRING.16(%rip)]        #21.2
..LN612:
        mov       eax, 1                                        #21.2
..___tag_value_s242.122:
..LN613:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #21.2
..___tag_value_s242.123:
..LN614:
                                # LOE rbp r12 r14 r15
..B4.28:                        # Preds ..B4.27
                                # Execution count [1.00e+00]
..LN615:
	.loc    4  22  is_stmt 1
        mov       edi, 1                                        #22.2
..___tag_value_s242.124:
..LN616:
#       check(int)
        call      check@PLT                                     #22.2
..___tag_value_s242.125:
..LN617:
                                # LOE rbp r12 r14 r15
..B4.29:                        # Preds ..B4.28
                                # Execution count [1.00e+00]
..LN618:
	.loc    4  23  is_stmt 1
        xor       eax, eax                                      #23.9
..LN619:
	.loc    4  23  epilogue_begin  is_stmt 1
        add       rsp, 360                                      #23.9
	.cfi_def_cfa_offset 24
	.cfi_restore 3
..LN620:
        pop       rbx                                           #23.9
	.cfi_def_cfa_offset 16
	.cfi_restore 13
..LN621:
        pop       r13                                           #23.9
	.cfi_def_cfa_offset 8
..LN622:
        ret                                                     #23.9
	.cfi_def_cfa_offset 384
	.cfi_offset 3, -24
	.cfi_offset 13, -16
..LN623:
                                # LOE
..B4.30:                        # Preds ..B4.11
                                # Execution count [1.99e+04]: Infreq
..LN624:
	.loc    4  14  is_stmt 1
        xor       r10d, r10d                                    #14.3
..LN625:
        jmp       ..B4.15       # Prob 100%                     #14.3
..LN626:
                                # LOE r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..B4.31:                        # Preds ..B4.5
                                # Execution count [1.99e+04]: Infreq
..LN627:
        mov       r9d, ebp                                      #14.3
..LN628:
        cmp       ebx, 1                                        #14.3
..LN629:
        jb        ..B4.19       # Prob 50%                      #14.3
..LN630:
                                # LOE r12 r13 r14 r15 eax ebx ebp r8d r9d r11d xmm0 xmm1
..B4.32:                        # Preds ..B4.31
                                # Execution count [9.93e+03]: Infreq
..LN631:
        mov       esi, ebx                                      #14.3
..LN632:
        xor       r10d, r10d                                    #14.3
..LN633:
        jmp       ..B4.15       # Prob 100%                     #14.3
        .align    16,0x90
..LN634:
                                # LOE r10 r12 r13 r14 r15 eax ebx ebp esi r8d r9d r11d xmm0 xmm1
..LN635:
	.cfi_endproc
# mark_end;
	.type	s242,@function
	.size	s242,.-s242
..LNs242.636:
.LNs242:
	.data
# -- End  s242
	.section .text.check, "xa"
..TXTST4:
.L_2__routine_start_check_4:
# -- Begin  check
	.section .text.check, "xa"
# mark_begin;
       .align    16,0x90
	.globl check
# --- check(int)
check:
# parameter 1(name): edi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check.138:
..L139:
                                                        #122.21
..LN637:
	.loc    1  122  is_stmt 1
        push      rbp                                           #122.21
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
..LN638:
        sub       rsp, 48                                       #122.21
	.cfi_def_cfa_offset 64
..LN639:
        mov       ebp, edi                                      #122.21
..LN640:
	.loc    1  124  prologue_end  is_stmt 1
        pxor      xmm6, xmm6                                    #124.13
..LN641:
	.loc    1  129  is_stmt 1
        xor       r8d, r8d                                      #129.2
..LN642:
	.loc    1  130  is_stmt 1
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]             #130.11
..LN643:
	.loc    1  124  is_stmt 1
        movaps    xmm2, xmm6                                    #124.13
..LN644:
	.loc    1  131  is_stmt 1
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]             #131.11
..LN645:
	.loc    1  125  is_stmt 1
        movaps    xmm3, xmm6                                    #125.13
..LN646:
	.loc    1  132  is_stmt 1
        mov       rcx, QWORD PTR [c@GOTPCREL(%rip)]             #132.11
..LN647:
	.loc    1  126  is_stmt 1
        movaps    xmm4, xmm6                                    #126.13
..LN648:
	.loc    1  133  is_stmt 1
        mov       rdx, QWORD PTR [d@GOTPCREL(%rip)]             #133.11
..LN649:
	.loc    1  127  is_stmt 1
        movaps    xmm7, xmm6                                    #127.13
..LN650:
	.loc    1  134  is_stmt 1
        mov       rax, QWORD PTR [e@GOTPCREL(%rip)]             #134.11
..LN651:
	.loc    1  128  is_stmt 1
        movaps    xmm5, xmm6                                    #128.13
..LN652:
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
..LN653:
	.loc    1  129  is_stmt 1
..LN654:
	.loc    1  130  is_stmt 1
        addps     xmm2, XMMWORD PTR [rdi+r8*4]                  #130.3
..LN655:
	.loc    1  131  is_stmt 1
        addps     xmm3, XMMWORD PTR [rsi+r8*4]                  #131.3
..LN656:
	.loc    1  132  is_stmt 1
        addps     xmm4, XMMWORD PTR [rcx+r8*4]                  #132.3
..LN657:
	.loc    1  133  is_stmt 1
        addps     xmm7, XMMWORD PTR [rdx+r8*4]                  #133.3
..LN658:
	.loc    1  134  is_stmt 1
        addps     xmm5, XMMWORD PTR [rax+r8*4]                  #134.3
..LN659:
	.loc    1  129  is_stmt 1
        add       r8, 4                                         #129.2
..LN660:
        cmp       r8, 32000                                     #129.2
..LN661:
        jb        ..B5.2        # Prob 99%                      #129.2
..LN662:
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.3:                         # Preds ..B5.2
                                # Execution count [1.00e+00]
..LN663:
	.loc    1  128  is_stmt 1
        movaps    xmm0, xmm5                                    #128.13
..LN664:
	.loc    1  126  is_stmt 1
        movaps    xmm8, xmm4                                    #126.13
..LN665:
	.loc    1  125  is_stmt 1
        movaps    xmm10, xmm3                                   #125.13
..LN666:
	.loc    1  124  is_stmt 1
        movaps    xmm12, xmm2                                   #124.13
..LN667:
	.loc    1  128  is_stmt 1
        movhlps   xmm0, xmm5                                    #128.13
..LN668:
	.loc    1  139  is_stmt 1
        xor       r8d, r8d                                      #139.2
..LN669:
	.loc    1  126  is_stmt 1
        movhlps   xmm8, xmm4                                    #126.13
..LN670:
	.loc    1  139  is_stmt 1
        mov       edi, 4                                        #139.2
..LN671:
	.loc    1  125  is_stmt 1
        movhlps   xmm10, xmm3                                   #125.13
..LN672:
	.loc    1  128  is_stmt 1
        addps     xmm5, xmm0                                    #128.13
..LN673:
	.loc    1  126  is_stmt 1
        addps     xmm4, xmm8                                    #126.13
..LN674:
	.loc    1  125  is_stmt 1
        addps     xmm3, xmm10                                   #125.13
..LN675:
	.loc    1  124  is_stmt 1
        movhlps   xmm12, xmm2                                   #124.13
..LN676:
	.loc    1  128  is_stmt 1
        movaps    xmm1, xmm5                                    #128.13
..LN677:
	.loc    1  126  is_stmt 1
        movaps    xmm9, xmm4                                    #126.13
..LN678:
	.loc    1  125  is_stmt 1
        movaps    xmm11, xmm3                                   #125.13
..LN679:
	.loc    1  128  is_stmt 1
        shufps    xmm1, xmm5, 245                               #128.13
..LN680:
	.loc    1  137  is_stmt 1
        pxor      xmm8, xmm8                                    #137.14
..LN681:
	.loc    1  126  is_stmt 1
        shufps    xmm9, xmm4, 245                               #126.13
..LN682:
	.loc    1  147  is_stmt 1
        movaps    xmm0, xmm6                                    #147.17
..LN683:
	.loc    1  125  is_stmt 1
        shufps    xmm11, xmm3, 245                              #125.13
..LN684:
	.loc    1  124  is_stmt 1
        addps     xmm2, xmm12                                   #124.13
..LN685:
	.loc    1  128  is_stmt 1
        addss     xmm5, xmm1                                    #128.13
..LN686:
	.loc    1  126  is_stmt 1
        addss     xmm4, xmm9                                    #126.13
..LN687:
	.loc    1  125  is_stmt 1
        addss     xmm3, xmm11                                   #125.13
..LN688:
	.loc    1  124  is_stmt 1
        movaps    xmm13, xmm2                                   #124.13
..LN689:
	.loc    1  138  is_stmt 1
        movaps    xmm1, xmm6                                    #138.14
..LN690:
	.loc    1  124  is_stmt 1
        shufps    xmm13, xmm2, 245                              #124.13
..LN691:
	.loc    1  141  is_stmt 1
        mov       rsi, QWORD PTR [aa@GOTPCREL(%rip)]            #141.13
..LN692:
	.loc    1  124  is_stmt 1
        addss     xmm2, xmm13                                   #124.13
..LN693:
	.loc    1  142  is_stmt 1
        mov       rcx, QWORD PTR [bb@GOTPCREL(%rip)]            #142.13
..LN694:
	.loc    1  143  is_stmt 1
        mov       rdx, QWORD PTR [cc@GOTPCREL(%rip)]            #143.13
..LN695:
	.loc    1  149  is_stmt 1
        mov       rax, QWORD PTR [array@GOTPCREL(%rip)]         #149.15
..LN696:
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
..LN697:
	.loc    1  139  is_stmt 1
..LN698:
	.loc    1  141  is_stmt 1
        addps     xmm6, XMMWORD PTR [rsi+r8*4]                  #141.4
..LN699:
	.loc    1  142  is_stmt 1
        addps     xmm8, XMMWORD PTR [rcx+r8*4]                  #142.4
..LN700:
	.loc    1  143  is_stmt 1
        addps     xmm1, XMMWORD PTR [rdx+r8*4]                  #143.4
..LN701:
	.loc    1  149  is_stmt 1
        addps     xmm0, XMMWORD PTR [rax+r8*4]                  #149.3
..LN702:
	.loc    1  141  is_stmt 1
        addps     xmm6, XMMWORD PTR [16+rsi+r8*4]               #141.4
..LN703:
	.loc    1  142  is_stmt 1
        addps     xmm8, XMMWORD PTR [16+rcx+r8*4]               #142.4
..LN704:
	.loc    1  143  is_stmt 1
        addps     xmm1, XMMWORD PTR [16+rdx+r8*4]               #143.4
..LN705:
	.loc    1  149  is_stmt 1
        addps     xmm0, XMMWORD PTR [rax+rdi*4]                 #149.3
..LN706:
	.loc    1  139  is_stmt 1
        add       r8, 8                                         #139.2
..LN707:
        add       rdi, 8                                        #139.2
..LN708:
        cmp       r8, 32400                                     #139.2
..LN709:
        jb        ..B5.4        # Prob 99%                      #139.2
..LN710:
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.5:                         # Preds ..B5.4
                                # Execution count [1.00e+00]
..LN711:
	.loc    1  138  is_stmt 1
        movaps    xmm9, xmm1                                    #138.14
..LN712:
	.loc    1  137  is_stmt 1
        movaps    xmm11, xmm8                                   #137.14
..LN713:
	.loc    1  136  is_stmt 1
        movaps    xmm13, xmm6                                   #136.14
..LN714:
	.loc    1  138  is_stmt 1
        movhlps   xmm9, xmm1                                    #138.14
..LN715:
	.loc    1  137  is_stmt 1
        movhlps   xmm11, xmm8                                   #137.14
..LN716:
	.loc    1  138  is_stmt 1
        addps     xmm1, xmm9                                    #138.14
..LN717:
	.loc    1  137  is_stmt 1
        addps     xmm8, xmm11                                   #137.14
..LN718:
	.loc    1  136  is_stmt 1
        movhlps   xmm13, xmm6                                   #136.14
..LN719:
	.loc    1  138  is_stmt 1
        movaps    xmm10, xmm1                                   #138.14
..LN720:
	.loc    1  137  is_stmt 1
        movaps    xmm12, xmm8                                   #137.14
..LN721:
	.loc    1  136  is_stmt 1
        addps     xmm6, xmm13                                   #136.14
..LN722:
        movaps    xmm14, xmm6                                   #136.14
..LN723:
	.loc    1  138  is_stmt 1
        shufps    xmm10, xmm1, 245                              #138.14
..LN724:
	.loc    1  137  is_stmt 1
        shufps    xmm12, xmm8, 245                              #137.14
..LN725:
	.loc    1  138  is_stmt 1
        addss     xmm1, xmm10                                   #138.14
..LN726:
	.loc    1  137  is_stmt 1
        addss     xmm8, xmm12                                   #137.14
..LN727:
	.loc    1  136  is_stmt 1
        shufps    xmm14, xmm6, 245                              #136.14
..LN728:
        addss     xmm6, xmm14                                   #136.14
..LN729:
	.loc    1  152  is_stmt 1
        cmp       ebp, 1                                        #152.14
..LN730:
        je        ..B5.41       # Prob 5%                       #152.14
..LN731:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.6:                         # Preds ..B5.5
                                # Execution count [9.49e-01]
..LN732:
	.loc    1  153  is_stmt 1
        cmp       ebp, 2                                        #153.14
..LN733:
        je        ..B5.40       # Prob 5%                       #153.14
..LN734:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.7:                         # Preds ..B5.6
                                # Execution count [8.98e-01]
..LN735:
	.loc    1  154  is_stmt 1
        cmp       ebp, 3                                        #154.14
..LN736:
        je        ..B5.39       # Prob 5%                       #154.14
..LN737:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.8:                         # Preds ..B5.7
                                # Execution count [8.47e-01]
..LN738:
	.loc    1  155  is_stmt 1
        cmp       ebp, 4                                        #155.14
..LN739:
        je        ..B5.38       # Prob 5%                       #155.14
..LN740:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B5.9:                         # Preds ..B5.8
                                # Execution count [7.96e-01]
..LN741:
	.loc    1  156  is_stmt 1
        cmp       ebp, 5                                        #156.14
..LN742:
        je        ..B5.37       # Prob 5%                       #156.14
..LN743:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.10:                        # Preds ..B5.9
                                # Execution count [7.45e-01]
..LN744:
	.loc    1  157  is_stmt 1
        cmp       ebp, 11                                       #157.14
..LN745:
        je        ..B5.36       # Prob 5%                       #157.14
..LN746:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.11:                        # Preds ..B5.10
                                # Execution count [6.94e-01]
..LN747:
	.loc    1  158  is_stmt 1
        cmp       ebp, 22                                       #158.14
..LN748:
        je        ..B5.35       # Prob 5%                       #158.14
..LN749:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.12:                        # Preds ..B5.11
                                # Execution count [6.43e-01]
..LN750:
	.loc    1  159  is_stmt 1
        cmp       ebp, 33                                       #159.14
..LN751:
        je        ..B5.34       # Prob 5%                       #159.14
..LN752:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.13:                        # Preds ..B5.12
                                # Execution count [5.92e-01]
..LN753:
	.loc    1  160  is_stmt 1
        test      ebp, ebp                                      #160.14
..LN754:
        je        ..B5.23       # Prob 22%                      #160.14
..LN755:
                                # LOE rbx r12 r13 r14 r15 ebp xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.14:                        # Preds ..B5.13
                                # Execution count [3.72e-01]
..LN756:
	.loc    1  161  is_stmt 1
        cmp       ebp, 12                                       #161.14
..LN757:
        je        ..B5.33       # Prob 5%                       #161.14
..LN758:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.15:                        # Preds ..B5.14
                                # Execution count [3.21e-01]
..LN759:
	.loc    1  162  is_stmt 1
        cmp       ebp, 25                                       #162.14
..LN760:
        je        ..B5.32       # Prob 5%                       #162.14
..LN761:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm8
..B5.16:                        # Preds ..B5.15
                                # Execution count [2.70e-01]
..LN762:
	.loc    1  163  is_stmt 1
        cmp       ebp, 13                                       #163.14
..LN763:
        je        ..B5.31       # Prob 5%                       #163.14
..LN764:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B5.17:                        # Preds ..B5.16
                                # Execution count [2.19e-01]
..LN765:
	.loc    1  164  is_stmt 1
        cmp       ebp, 123                                      #164.14
..LN766:
        je        ..B5.30       # Prob 5%                       #164.14
..LN767:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm4 xmm6 xmm8
..B5.18:                        # Preds ..B5.44 ..B5.17
                                # Execution count [2.19e-01]
..LN768:
	.loc    1  165  is_stmt 1
        cmp       ebp, 1122                                     #165.14
..LN769:
        je        ..B5.29       # Prob 5%                       #165.14
..LN770:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.19:                        # Preds ..B5.45 ..B5.18
                                # Execution count [2.19e-01]
..LN771:
	.loc    1  166  is_stmt 1
        cmp       ebp, 112233                                   #166.14
..LN772:
        je        ..B5.28       # Prob 5%                       #166.14
..LN773:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.20:                        # Preds ..B5.46 ..B5.19
                                # Execution count [2.19e-01]
..LN774:
	.loc    1  167  is_stmt 1
        cmp       ebp, 111                                      #167.14
..LN775:
        je        ..B5.27       # Prob 5%                       #167.14
..LN776:
                                # LOE rbx r12 r13 r14 r15 ebp xmm2 xmm3 xmm6
..B5.21:                        # Preds ..B5.47 ..B5.20
                                # Execution count [2.19e-01]
..LN777:
	.loc    1  168  is_stmt 1
        cmp       ebp, -1                                       #168.14
..LN778:
        je        ..B5.26       # Prob 5%                       #168.14
..LN779:
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.22:                        # Preds ..B5.48 ..B5.21
                                # Execution count [2.19e-01]
..LN780:
	.loc    1  169  is_stmt 1
        cmp       ebp, -12                                      #169.14
..LN781:
        je        ..B5.25       # Prob 5%                       #169.14
..LN782:
        jmp       ..B5.24       # Prob 100%                     #169.14
..LN783:
                                # LOE rbx r12 r13 r14 r15 xmm3
..B5.23:                        # Preds ..B5.13
                                # Execution count [2.20e-01]
..LN784:
	.loc    1  147  is_stmt 1
        movaps    xmm1, xmm0                                    #147.17
..LN785:
	.loc    1  160  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #160.17
..LN786:
	.loc    1  147  is_stmt 1
        movhlps   xmm1, xmm0                                    #147.17
..LN787:
	.loc    1  160  is_stmt 1
        mov       eax, 1                                        #160.17
..LN788:
	.loc    1  147  is_stmt 1
        addps     xmm0, xmm1                                    #147.17
..LN789:
        movaps    xmm2, xmm0                                    #147.17
..LN790:
        shufps    xmm2, xmm0, 245                               #147.17
..LN791:
        addss     xmm0, xmm2                                    #147.17
..LN792:
	.loc    1  160  is_stmt 1
        cvtss2sd  xmm0, xmm0                                    #160.17
..___tag_value_check.146:
..LN793:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #160.17
..___tag_value_check.147:
..LN794:
                                # LOE rbx r12 r13 r14 r15
..B5.24:                        # Preds ..B5.23 ..B5.22
                                # Execution count [1.00e+00]
..LN795:
	.loc    1  171  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #171.1
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN796:
        pop       rbp                                           #171.1
	.cfi_def_cfa_offset 8
..LN797:
        ret                                                     #171.1
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN798:
                                # LOE
..B5.25:                        # Preds ..B5.22
                                # Execution count [5.10e-02]: Infreq
..LN799:
	.loc    1  169  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]          #169.19
..LN800:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #169.19
..LN801:
        movss     xmm0, DWORD PTR [rax]                         #169.19
..LN802:
        mov       eax, 1                                        #169.19
..LN803:
        addss     xmm0, xmm3                                    #169.19
..LN804:
        cvtss2sd  xmm0, xmm0                                    #169.19
..___tag_value_check.154:
..LN805:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #169.19
..___tag_value_check.155:
..LN806:
	.loc    1  169  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #169.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN807:
        pop       rbp                                           #169.19
	.cfi_def_cfa_offset 8
..LN808:
        ret                                                     #169.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN809:
                                # LOE rbx r12 r13 r14 r15
..B5.26:                        # Preds ..B5.21
                                # Execution count [5.10e-02]: Infreq
..LN810:
	.loc    1  168  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]          #168.18
..LN811:
        pxor      xmm0, xmm0                                    #168.18
..LN812:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #168.18
..LN813:
        cvtss2sd  xmm0, DWORD PTR [rax]                         #168.18
..LN814:
        mov       eax, 1                                        #168.18
..LN815:
	.loc    1  168  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #168.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN816:
        pop       rbp                                           #168.18
	.cfi_def_cfa_offset 8
..LN817:
#       printf(const char *__restrict__, ...)
        jmp       printf@PLT                                    #168.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN818:
                                # LOE
..B5.27:                        # Preds ..B5.20
                                # Execution count [5.10e-02]: Infreq
..LN819:
	.loc    1  167  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #167.19
..LN820:
        mov       eax, 1                                        #167.19
..LN821:
        addss     xmm2, xmm6                                    #167.19
..LN822:
        cvtss2sd  xmm2, xmm2                                    #167.19
..LN823:
        movaps    xmm0, xmm2                                    #167.19
..___tag_value_check.168:
..LN824:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #167.19
..___tag_value_check.169:
..LN825:
	.loc    1  167  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #167.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN826:
        pop       rbp                                           #167.19
	.cfi_def_cfa_offset 8
..LN827:
        ret                                                     #167.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN828:
                                # LOE rbx r12 r13 r14 r15
..B5.28:                        # Preds ..B5.19
                                # Execution count [5.10e-02]: Infreq
..LN829:
	.loc    1  166  is_stmt 1
        pxor      xmm0, xmm0                                    #166.22
..LN830:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #166.22
..LN831:
        mov       eax, 1                                        #166.22
..LN832:
        addss     xmm6, xmm8                                    #166.22
..LN833:
        addss     xmm6, xmm1                                    #166.22
..LN834:
        cvtss2sd  xmm0, xmm6                                    #166.22
..___tag_value_check.176:
..LN835:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #166.22
..___tag_value_check.177:
..LN836:
	.loc    1  166  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #166.22
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN837:
        pop       rbp                                           #166.22
	.cfi_def_cfa_offset 8
..LN838:
        ret                                                     #166.22
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN839:
                                # LOE rbx r12 r13 r14 r15
..B5.29:                        # Preds ..B5.18
                                # Execution count [5.10e-02]: Infreq
..LN840:
	.loc    1  165  is_stmt 1
        pxor      xmm0, xmm0                                    #165.20
..LN841:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #165.20
..LN842:
        mov       eax, 1                                        #165.20
..LN843:
        addss     xmm6, xmm8                                    #165.20
..LN844:
        cvtss2sd  xmm0, xmm6                                    #165.20
..___tag_value_check.184:
..LN845:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #165.20
..___tag_value_check.185:
..LN846:
	.loc    1  165  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #165.20
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN847:
        pop       rbp                                           #165.20
	.cfi_def_cfa_offset 8
..LN848:
        ret                                                     #165.20
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN849:
                                # LOE rbx r12 r13 r14 r15
..B5.30:                        # Preds ..B5.17
                                # Execution count [5.10e-02]: Infreq
..LN850:
	.loc    1  164  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #164.19
..LN851:
        mov       eax, 1                                        #164.19
..LN852:
        addss     xmm2, xmm3                                    #164.19
..LN853:
        addss     xmm2, xmm4                                    #164.19
..LN854:
        cvtss2sd  xmm2, xmm2                                    #164.19
..LN855:
        movaps    xmm0, xmm2                                    #164.19
..___tag_value_check.192:
..LN856:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #164.19
..___tag_value_check.193:
..LN857:
	.loc    1  164  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #164.19
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN858:
        pop       rbp                                           #164.19
	.cfi_def_cfa_offset 8
..LN859:
        ret                                                     #164.19
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN860:
                                # LOE rbx r12 r13 r14 r15
..B5.31:                        # Preds ..B5.16
                                # Execution count [5.10e-02]: Infreq
..LN861:
	.loc    1  163  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #163.18
..LN862:
        mov       eax, 1                                        #163.18
..LN863:
        addss     xmm2, xmm4                                    #163.18
..LN864:
        cvtss2sd  xmm2, xmm2                                    #163.18
..LN865:
        movaps    xmm0, xmm2                                    #163.18
..___tag_value_check.200:
..LN866:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #163.18
..___tag_value_check.201:
..LN867:
	.loc    1  163  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #163.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN868:
        pop       rbp                                           #163.18
	.cfi_def_cfa_offset 8
..LN869:
        ret                                                     #163.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN870:
                                # LOE rbx r12 r13 r14 r15
..B5.32:                        # Preds ..B5.15
                                # Execution count [5.10e-02]: Infreq
..LN871:
	.loc    1  162  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #162.18
..LN872:
        mov       eax, 1                                        #162.18
..LN873:
        addss     xmm3, xmm5                                    #162.18
..LN874:
        cvtss2sd  xmm3, xmm3                                    #162.18
..LN875:
        movaps    xmm0, xmm3                                    #162.18
..___tag_value_check.208:
..LN876:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #162.18
..___tag_value_check.209:
..LN877:
	.loc    1  162  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #162.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN878:
        pop       rbp                                           #162.18
	.cfi_def_cfa_offset 8
..LN879:
        ret                                                     #162.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN880:
                                # LOE rbx r12 r13 r14 r15
..B5.33:                        # Preds ..B5.14
                                # Execution count [5.10e-02]: Infreq
..LN881:
	.loc    1  161  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #161.18
..LN882:
        mov       eax, 1                                        #161.18
..LN883:
        addss     xmm2, xmm3                                    #161.18
..LN884:
        cvtss2sd  xmm2, xmm2                                    #161.18
..LN885:
        movaps    xmm0, xmm2                                    #161.18
..___tag_value_check.216:
..LN886:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #161.18
..___tag_value_check.217:
..LN887:
	.loc    1  161  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #161.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN888:
        pop       rbp                                           #161.18
	.cfi_def_cfa_offset 8
..LN889:
        ret                                                     #161.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN890:
                                # LOE rbx r12 r13 r14 r15
..B5.34:                        # Preds ..B5.12
                                # Execution count [5.10e-02]: Infreq
..LN891:
	.loc    1  159  is_stmt 1
        cvtss2sd  xmm1, xmm1                                    #159.18
..LN892:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #159.18
..LN893:
        mov       eax, 1                                        #159.18
..LN894:
        movaps    xmm0, xmm1                                    #159.18
..___tag_value_check.224:
..LN895:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #159.18
..___tag_value_check.225:
..LN896:
	.loc    1  159  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #159.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN897:
        pop       rbp                                           #159.18
	.cfi_def_cfa_offset 8
..LN898:
        ret                                                     #159.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN899:
                                # LOE rbx r12 r13 r14 r15
..B5.35:                        # Preds ..B5.11
                                # Execution count [5.10e-02]: Infreq
..LN900:
	.loc    1  158  is_stmt 1
        pxor      xmm0, xmm0                                    #158.18
..LN901:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #158.18
..LN902:
        cvtss2sd  xmm0, xmm8                                    #158.18
..LN903:
        mov       eax, 1                                        #158.18
..___tag_value_check.232:
..LN904:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #158.18
..___tag_value_check.233:
..LN905:
	.loc    1  158  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #158.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN906:
        pop       rbp                                           #158.18
	.cfi_def_cfa_offset 8
..LN907:
        ret                                                     #158.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN908:
                                # LOE rbx r12 r13 r14 r15
..B5.36:                        # Preds ..B5.10
                                # Execution count [5.10e-02]: Infreq
..LN909:
	.loc    1  157  is_stmt 1
        pxor      xmm0, xmm0                                    #157.18
..LN910:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #157.18
..LN911:
        cvtss2sd  xmm0, xmm6                                    #157.18
..LN912:
        mov       eax, 1                                        #157.18
..___tag_value_check.240:
..LN913:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #157.18
..___tag_value_check.241:
..LN914:
	.loc    1  157  epilogue_begin  is_stmt 1
        add       rsp, 48                                       #157.18
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN915:
        pop       rbp                                           #157.18
	.cfi_def_cfa_offset 8
..LN916:
        ret                                                     #157.18
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN917:
                                # LOE rbx r12 r13 r14 r15
..B5.37:                        # Preds ..B5.9
                                # Execution count [5.10e-02]: Infreq
..LN918:
	.loc    1  156  is_stmt 1
        cvtss2sd  xmm5, xmm5                                    #156.17
..LN919:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #156.17
..LN920:
        mov       eax, 1                                        #156.17
..LN921:
        movaps    xmm0, xmm5                                    #156.17
..LN922:
        movss     DWORD PTR [rsp], xmm3                         #156.17[spill]
..___tag_value_check.248:
..LN923:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #156.17
..___tag_value_check.249:
..LN924:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.48:                        # Preds ..B5.37
                                # Execution count [5.10e-02]: Infreq
..LN925:
        movss     xmm3, DWORD PTR [rsp]                         #[spill]
..LN926:
        jmp       ..B5.22       # Prob 100%                     #
..LN927:
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.38:                        # Preds ..B5.8
                                # Execution count [5.10e-02]: Infreq
..LN928:
	.loc    1  127  is_stmt 1
        movaps    xmm1, xmm7                                    #127.13
..LN929:
	.loc    1  155  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #155.17
..LN930:
	.loc    1  127  is_stmt 1
        movhlps   xmm1, xmm7                                    #127.13
..LN931:
	.loc    1  155  is_stmt 1
        mov       eax, 1                                        #155.17
..LN932:
        movss     DWORD PTR [rsp], xmm3                         #155.17[spill]
..LN933:
	.loc    1  127  is_stmt 1
        addps     xmm7, xmm1                                    #127.13
..LN934:
        movaps    xmm2, xmm7                                    #127.13
..LN935:
        shufps    xmm2, xmm7, 245                               #127.13
..LN936:
        addss     xmm7, xmm2                                    #127.13
..LN937:
	.loc    1  155  is_stmt 1
        cvtss2sd  xmm7, xmm7                                    #155.17
..LN938:
        movaps    xmm0, xmm7                                    #155.17
..___tag_value_check.250:
..LN939:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #155.17
..___tag_value_check.251:
..LN940:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.47:                        # Preds ..B5.38
                                # Execution count [5.10e-02]: Infreq
..LN941:
        movss     xmm3, DWORD PTR [rsp]                         #[spill]
..LN942:
        jmp       ..B5.21       # Prob 100%                     #
..LN943:
                                # LOE rbx r12 r13 r14 r15 ebp xmm3
..B5.39:                        # Preds ..B5.7
                                # Execution count [5.10e-02]: Infreq
..LN944:
	.loc    1  154  is_stmt 1
        cvtss2sd  xmm4, xmm4                                    #154.17
..LN945:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #154.17
..LN946:
        mov       eax, 1                                        #154.17
..LN947:
        movaps    xmm0, xmm4                                    #154.17
..LN948:
        movss     DWORD PTR [8+rsp], xmm6                       #154.17[spill]
..LN949:
        movss     DWORD PTR [16+rsp], xmm2                      #154.17[spill]
..LN950:
        movss     DWORD PTR [rsp], xmm3                         #154.17[spill]
..___tag_value_check.252:
..LN951:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #154.17
..___tag_value_check.253:
..LN952:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.46:                        # Preds ..B5.39
                                # Execution count [5.10e-02]: Infreq
..LN953:
        movss     xmm3, DWORD PTR [rsp]                         #[spill]
..LN954:
        movss     xmm2, DWORD PTR [16+rsp]                      #[spill]
..LN955:
        movss     xmm6, DWORD PTR [8+rsp]                       #[spill]
..LN956:
        jmp       ..B5.20       # Prob 100%                     #
..LN957:
                                # LOE rbx r12 r13 r14 r15 ebp xmm2 xmm3 xmm6
..B5.40:                        # Preds ..B5.6
                                # Execution count [5.10e-02]: Infreq
..LN958:
	.loc    1  153  is_stmt 1
        pxor      xmm0, xmm0                                    #153.17
..LN959:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #153.17
..LN960:
        cvtss2sd  xmm0, xmm3                                    #153.17
..LN961:
        mov       eax, 1                                        #153.17
..LN962:
        movss     DWORD PTR [8+rsp], xmm6                       #153.17[spill]
..LN963:
        movss     DWORD PTR [24+rsp], xmm8                      #153.17[spill]
..LN964:
        movss     DWORD PTR [32+rsp], xmm1                      #153.17[spill]
..LN965:
        movss     DWORD PTR [16+rsp], xmm2                      #153.17[spill]
..LN966:
        movss     DWORD PTR [rsp], xmm3                         #153.17[spill]
..___tag_value_check.254:
..LN967:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #153.17
..___tag_value_check.255:
..LN968:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.45:                        # Preds ..B5.40
                                # Execution count [5.10e-02]: Infreq
..LN969:
        movss     xmm3, DWORD PTR [rsp]                         #[spill]
..LN970:
        movss     xmm2, DWORD PTR [16+rsp]                      #[spill]
..LN971:
        movss     xmm1, DWORD PTR [32+rsp]                      #[spill]
..LN972:
        movss     xmm8, DWORD PTR [24+rsp]                      #[spill]
..LN973:
        movss     xmm6, DWORD PTR [8+rsp]                       #[spill]
..LN974:
        jmp       ..B5.19       # Prob 100%                     #
..LN975:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..B5.41:                        # Preds ..B5.5
                                # Execution count [5.10e-02]: Infreq
..LN976:
	.loc    1  152  is_stmt 1
        pxor      xmm0, xmm0                                    #152.17
..LN977:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]         #152.17
..LN978:
        cvtss2sd  xmm0, xmm2                                    #152.17
..LN979:
        mov       eax, 1                                        #152.17
..LN980:
        movss     DWORD PTR [8+rsp], xmm6                       #152.17[spill]
..LN981:
        movss     DWORD PTR [24+rsp], xmm8                      #152.17[spill]
..LN982:
        movss     DWORD PTR [32+rsp], xmm1                      #152.17[spill]
..LN983:
        movss     DWORD PTR [16+rsp], xmm2                      #152.17[spill]
..LN984:
        movss     DWORD PTR [rsp], xmm3                         #152.17[spill]
..___tag_value_check.256:
..LN985:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #152.17
..___tag_value_check.257:
..LN986:
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.44:                        # Preds ..B5.41
                                # Execution count [5.10e-02]: Infreq
..LN987:
        movss     xmm3, DWORD PTR [rsp]                         #[spill]
..LN988:
        movss     xmm2, DWORD PTR [16+rsp]                      #[spill]
..LN989:
        movss     xmm1, DWORD PTR [32+rsp]                      #[spill]
..LN990:
        movss     xmm8, DWORD PTR [24+rsp]                      #[spill]
..LN991:
        movss     xmm6, DWORD PTR [8+rsp]                       #[spill]
..LN992:
        jmp       ..B5.18       # Prob 100%                     #
        .align    16,0x90
..LN993:
                                # LOE rbx r12 r13 r14 r15 ebp xmm1 xmm2 xmm3 xmm6 xmm8
..LN994:
	.cfi_endproc
# mark_end;
	.type	check,@function
	.size	check,.-check
..LNcheck.995:
.LNcheck:
	.data
# -- End  check
	.section .text.s2275, "xa"
..TXTST5:
.L_2__routine_start_s2275_5:
# -- Begin  s2275
	.section .text.s2275, "xa"
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
                                                        #232.1
..LN996:
	.loc    1  232  is_stmt 1
        push      r12                                           #232.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN997:
        push      r13                                           #232.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN998:
        push      r14                                           #232.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN999:
        push      r15                                           #232.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1000:
        push      rbx                                           #232.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1001:
        push      rbp                                           #232.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1002:
        sub       rsp, 40                                       #232.1
	.cfi_def_cfa_offset 96
..LN1003:
	.loc    1  239  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.5(%rip)]         #239.2
..___tag_value_s2275.278:
..LN1004:
#       init(char *)
        call      init@PLT                                      #239.2
..___tag_value_s2275.279:
..LN1005:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.2:                         # Preds ..B6.1
                                # Execution count [1.00e+00]
..LN1006:
	.loc    1  240  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #240.12
..LN1007:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.16:                        # Preds ..B6.2
                                # Execution count [1.00e+00]
..LN1008:
        mov       QWORD PTR [rsp], rax                          #240.12[spill]
..LN1009:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.3:                         # Preds ..B6.16
                                # Execution count [1.22e+03]
..LN1010:
	.loc    1  249  is_stmt 1
        mov       r11, QWORD PTR [b@GOTPCREL(%rip)]             #249.36
..LN1011:
	.loc    1  242  is_stmt 1
        xor       edi, edi                                      #242.2
..LN1012:
	.loc    1  249  is_stmt 1
        mov       r10, QWORD PTR [a@GOTPCREL(%rip)]             #249.36
..LN1013:
        mov       r13d, edi                                     #249.3
..LN1014:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]              #249.3
..LN1015:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]             #249.36
..LN1016:
        mov       r14, r9                                       #249.3
..LN1017:
        mov       rsi, QWORD PTR [bb@GOTPCREL(%rip)]            #249.36
..LN1018:
        mov       r15, rsi                                      #249.3
..LN1019:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]            #249.36
..LN1020:
        mov       rbp, rax                                      #249.3
..LN1021:
        mov       rdx, QWORD PTR [c@GOTPCREL(%rip)]             #249.36
..LN1022:
        mov       r12, rdx                                      #249.3
..LN1023:
        mov       rcx, QWORD PTR [d@GOTPCREL(%rip)]             #249.36
..LN1024:
        mov       rbx, rcx                                      #249.3
..LN1025:
        mov       QWORD PTR [8+rsp], r8                         #249.3[spill]
..LN1026:
        mov       QWORD PTR [16+rsp], r10                       #249.3[spill]
..LN1027:
        mov       QWORD PTR [24+rsp], r11                       #249.3[spill]
..LN1028:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.4:                         # Preds ..B6.9 ..B6.3
                                # Execution count [1.99e+05]
..L280:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1029:
	.loc    1  242  is_stmt 1
..LN1030:
	.loc    1  244  is_stmt 1
        xor       r8d, r8d                                      #244.4
        .align    16,0x90
..LN1031:
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
..LN1032:
	.loc    1  245  is_stmt 1
        movups    xmm0, XMMWORD PTR [r15+r8*4]                  #245.27
..LN1033:
        movups    xmm1, XMMWORD PTR [16+r15+r8*4]               #245.27
..LN1034:
        movups    xmm2, XMMWORD PTR [32+r15+r8*4]               #245.27
..LN1035:
        movups    xmm3, XMMWORD PTR [48+r15+r8*4]               #245.27
..LN1036:
        mulps     xmm0, XMMWORD PTR [rbp+r8*4]                  #245.38
..LN1037:
        mulps     xmm1, XMMWORD PTR [16+rbp+r8*4]               #245.38
..LN1038:
        mulps     xmm2, XMMWORD PTR [32+rbp+r8*4]               #245.38
..LN1039:
        addps     xmm0, XMMWORD PTR [r14+r8*4]                  #245.38
..LN1040:
        mulps     xmm3, XMMWORD PTR [48+rbp+r8*4]               #245.38
..LN1041:
        addps     xmm1, XMMWORD PTR [16+r14+r8*4]               #245.38
..LN1042:
        addps     xmm2, XMMWORD PTR [32+r14+r8*4]               #245.38
..LN1043:
        addps     xmm3, XMMWORD PTR [48+r14+r8*4]               #245.38
..LN1044:
        movups    XMMWORD PTR [r14+r8*4], xmm0                  #245.5
..LN1045:
        movups    XMMWORD PTR [16+r14+r8*4], xmm1               #245.5
..LN1046:
        movups    XMMWORD PTR [32+r14+r8*4], xmm2               #245.5
..LN1047:
        movups    XMMWORD PTR [48+r14+r8*4], xmm3               #245.5
..LN1048:
	.loc    1  244  is_stmt 1
        add       r8, 16                                        #244.4
..LN1049:
        cmp       r8, 32400                                     #244.4
..LN1050:
        jb        ..B6.5        # Prob 99%                      #244.4
..LN1051:
                                # LOE rbx rbp r8 r12 r14 r15 r13d
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.99e+05]
..LN1052:
	.loc    1  243  is_stmt 1
        mov       r10, QWORD PTR [16+rsp]                       #243.3[spill]
..LN1053:
        xor       r8d, r8d                                      #243.3
..LN1054:
        mov       r11, QWORD PTR [24+rsp]                       #243.3[spill]
..LN1055:
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
..LN1056:
	.loc    1  247  is_stmt 1
        movups    xmm0, XMMWORD PTR [r12+r8*4]                  #247.18
..LN1057:
        movups    xmm1, XMMWORD PTR [16+r12+r8*4]               #247.18
..LN1058:
        mulps     xmm0, XMMWORD PTR [rbx+r8*4]                  #247.25
..LN1059:
        mulps     xmm1, XMMWORD PTR [16+rbx+r8*4]               #247.25
..LN1060:
        addps     xmm0, XMMWORD PTR [r11+r8*4]                  #247.25
..LN1061:
        addps     xmm1, XMMWORD PTR [16+r11+r8*4]               #247.25
..LN1062:
        movups    XMMWORD PTR [r10+r8*4], xmm0                  #247.4
..LN1063:
        movups    XMMWORD PTR [16+r10+r8*4], xmm1               #247.4
..LN1064:
	.loc    1  243  is_stmt 1
        add       r8, 8                                         #243.3
..LN1065:
        cmp       r8, 176                                       #243.3
..LN1066:
        jb        ..B6.7        # Prob 99%                      #243.3
..LN1067:
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
..LN1068:
	.loc    1  247  is_stmt 1
        movups    xmm0, XMMWORD PTR [704+r12]                   #247.18
..LN1069:
	.loc    1  249  is_stmt 1
        mov       rdx, r12                                      #249.3
..LN1070:
        push      rbp                                           #249.3
	.cfi_def_cfa_offset 104
..LN1071:
	.loc    1  247  is_stmt 1
        mulps     xmm0, XMMWORD PTR [704+rbx]                   #247.25
..LN1072:
	.loc    1  249  is_stmt 1
        mov       rcx, rbx                                      #249.3
..LN1073:
        push      r15                                           #249.3
	.cfi_def_cfa_offset 112
..LN1074:
	.loc    1  247  is_stmt 1
        mov       rsi, QWORD PTR [40+rsp]                       #247.25[spill]
..LN1075:
	.loc    1  249  is_stmt 1
        mov       r9, r14                                       #249.3
..LN1076:
	.loc    1  247  is_stmt 1
        mov       rdi, QWORD PTR [32+rsp]                       #247.4[spill]
..LN1077:
	.loc    1  249  is_stmt 1
        mov       r8, QWORD PTR [24+rsp]                        #249.3[spill]
..LN1078:
	.loc    1  247  is_stmt 1
        addps     xmm0, XMMWORD PTR [704+rsi]                   #247.25
..LN1079:
        movups    XMMWORD PTR [704+rdi], xmm0                   #247.4
..LN1080:
	.loc    1  249  is_stmt 1
        pxor      xmm0, xmm0                                    #249.3
..___tag_value_s2275.286:
..LN1081:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #249.3
..___tag_value_s2275.287:
..LN1082:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.17:                        # Preds ..B6.8
                                # Execution count [1.99e+05]
..LN1083:
        add       rsp, 16                                       #249.3
	.cfi_def_cfa_offset 96
..LN1084:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.9:                         # Preds ..B6.17
                                # Execution count [1.99e+05]
..LN1085:
	.loc    1  242  is_stmt 1
        inc       r13d                                          #242.2
..LN1086:
        cmp       r13d, 200000                                  #242.2
..LN1087:
        jb        ..B6.4        # Prob 99%                      #242.2
..LN1088:
                                # LOE rbx rbp r12 r14 r15 r13d
..B6.10:                        # Preds ..B6.9
                                # Execution count [1.00e+00]
..LN1089:
	.loc    1  251  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #251.10
..LN1090:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.11:                        # Preds ..B6.10
                                # Execution count [1.00e+00]
..LN1091:
	.loc    1  253  is_stmt 1
        sub       rax, QWORD PTR [rsp]                          #253.2[spill]
..LN1092:
        pxor      xmm0, xmm0                                    #253.2
..LN1093:
        cvtsi2sd  xmm0, rax                                     #253.2
..LN1094:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]  #253.2
..LN1095:
        lea       rdi, QWORD PTR [.L_2__STRING.6(%rip)]         #253.2
..LN1096:
        mov       eax, 1                                        #253.2
..___tag_value_s2275.289:
..LN1097:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #253.2
..___tag_value_s2275.290:
..LN1098:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.12:                        # Preds ..B6.11
                                # Execution count [1.00e+00]
..LN1099:
	.loc    1  254  is_stmt 1
        mov       edi, 11                                       #254.2
..___tag_value_s2275.291:
..LN1100:
#       check(int)
        call      check@PLT                                     #254.2
..___tag_value_s2275.292:
..LN1101:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.13:                        # Preds ..B6.12
                                # Execution count [1.00e+00]
..LN1102:
	.loc    1  255  is_stmt 1
        xor       eax, eax                                      #255.9
..LN1103:
	.loc    1  255  epilogue_begin  is_stmt 1
        add       rsp, 40                                       #255.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1104:
        pop       rbp                                           #255.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1105:
        pop       rbx                                           #255.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1106:
        pop       r15                                           #255.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1107:
        pop       r14                                           #255.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1108:
        pop       r13                                           #255.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1109:
        pop       r12                                           #255.9
	.cfi_def_cfa_offset 8
..LN1110:
        ret                                                     #255.9
        .align    16,0x90
..LN1111:
                                # LOE
..LN1112:
	.cfi_endproc
# mark_end;
	.type	s2275,@function
	.size	s2275,.-s2275
..LNs2275.1113:
.LNs2275:
	.data
# -- End  s2275
	.section .text.s112, "xa"
..TXTST6:
.L_2__routine_start_s112_6:
# -- Begin  s112
	.section .text.s112, "xa"
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
                                                        #314.1
..LN1114:
	.loc    1  314  is_stmt 1
        push      r12                                           #314.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1115:
        push      r13                                           #314.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1116:
        push      r14                                           #314.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1117:
        push      r15                                           #314.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1118:
        push      rbx                                           #314.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1119:
        push      rbp                                           #314.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1120:
        sub       rsp, 40                                       #314.1
	.cfi_def_cfa_offset 96
..LN1121:
	.loc    1  322  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.2(%rip)]         #322.2
..___tag_value_s112.326:
..LN1122:
#       init(char *)
        call      init@PLT                                      #322.2
..___tag_value_s112.327:
..LN1123:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.2:                         # Preds ..B7.1
                                # Execution count [1.00e+00]
..LN1124:
	.loc    1  323  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #323.12
..LN1125:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B7.14:                        # Preds ..B7.2
                                # Execution count [1.00e+00]
..LN1126:
        mov       QWORD PTR [rsp], rax                          #323.12[spill]
..LN1127:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.3:                         # Preds ..B7.14
                                # Execution count [1.00e+00]
..LN1128:
	.loc    1  330  is_stmt 1
        mov       r11, QWORD PTR [c@GOTPCREL(%rip)]             #330.3
..LN1129:
	.loc    1  325  is_stmt 1
        xor       ecx, ecx                                      #325.2
..LN1130:
	.loc    1  330  is_stmt 1
        mov       r10, QWORD PTR [d@GOTPCREL(%rip)]             #330.3
..LN1131:
        mov       r12d, ecx                                     #330.3
..LN1132:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]              #330.3
..LN1133:
	.loc    1  327  is_stmt 1
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]             #327.3
..LN1134:
	.loc    1  330  is_stmt 1
        mov       r13, rdi                                      #330.3
..LN1135:
	.loc    1  327  is_stmt 1
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]             #327.3
..LN1136:
	.loc    1  330  is_stmt 1
        mov       r14, rsi                                      #330.3
..LN1137:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]             #330.3
..LN1138:
        mov       r15, r9                                       #330.3
..LN1139:
        mov       rdx, QWORD PTR [bb@GOTPCREL(%rip)]            #330.3
..LN1140:
        mov       rbp, rdx                                      #330.3
..LN1141:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]            #330.3
..LN1142:
        mov       rbx, rax                                      #330.3
..LN1143:
        mov       QWORD PTR [24+rsp], r8                        #330.3[spill]
..LN1144:
        mov       QWORD PTR [16+rsp], r10                       #330.3[spill]
..LN1145:
        mov       QWORD PTR [8+rsp], r11                        #330.3[spill]
..LN1146:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.4:                         # Preds ..B7.7 ..B7.3
                                # Execution count [1.99e+05]
..L328:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN1147:
	.loc    1  325  is_stmt 1
..LN1148:
	.loc    1  327  is_stmt 1
        xor       r10d, r10d                                    #327.3
..LN1149:
        xor       r8d, r8d                                      #327.3
        .align    16,0x90
..LN1150:
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
..LN1151:
	.loc    1  328  is_stmt 1
        movss     xmm0, DWORD PTR [127992+r8+r13]               #328.13
..LN1152:
	.loc    1  327  is_stmt 1
        inc       r10d                                          #327.3
..LN1153:
	.loc    1  328  is_stmt 1
        movss     xmm1, DWORD PTR [127988+r8+r13]               #328.13
..LN1154:
        addss     xmm0, DWORD PTR [127992+r8+r14]               #328.20
..LN1155:
        addss     xmm1, DWORD PTR [127988+r8+r14]               #328.20
..LN1156:
        movss     DWORD PTR [127996+r8+r13], xmm0               #328.4
..LN1157:
        movss     DWORD PTR [127992+r8+r13], xmm1               #328.4
..LN1158:
	.loc    1  327  is_stmt 1
        add       r8, -8                                        #327.3
..LN1159:
        cmp       r10d, 15999                                   #327.3
..LN1160:
        jb        ..B7.5        # Prob 99%                      #327.3
..LN1161:
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
..LN1162:
	.loc    1  328  is_stmt 1
        movss     xmm0, DWORD PTR [r13]                         #328.13
..LN1163:
	.loc    1  330  is_stmt 1
        mov       rdi, r13                                      #330.3
..LN1164:
        push      rbx                                           #330.3
	.cfi_def_cfa_offset 104
..LN1165:
        push      rbp                                           #330.3
	.cfi_def_cfa_offset 112
..LN1166:
        mov       rsi, r14                                      #330.3
..LN1167:
        mov       r9, r15                                       #330.3
..LN1168:
        mov       rdx, QWORD PTR [24+rsp]                       #330.3[spill]
..LN1169:
        mov       rcx, QWORD PTR [32+rsp]                       #330.3[spill]
..LN1170:
        mov       r8, QWORD PTR [40+rsp]                        #330.3[spill]
..LN1171:
	.loc    1  328  is_stmt 1
        addss     xmm0, DWORD PTR [r14]                         #328.20
..LN1172:
        movss     DWORD PTR [4+r13], xmm0                       #328.4
..LN1173:
	.loc    1  330  is_stmt 1
        pxor      xmm0, xmm0                                    #330.3
..___tag_value_s112.333:
..LN1174:
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #330.3
..___tag_value_s112.334:
..LN1175:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.15:                        # Preds ..B7.6
                                # Execution count [1.99e+05]
..LN1176:
        add       rsp, 16                                       #330.3
	.cfi_def_cfa_offset 96
..LN1177:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.7:                         # Preds ..B7.15
                                # Execution count [1.99e+05]
..LN1178:
	.loc    1  325  is_stmt 1
        inc       r12d                                          #325.2
..LN1179:
        cmp       r12d, 200000                                  #325.2
..LN1180:
        jb        ..B7.4        # Prob 99%                      #325.2
..LN1181:
                                # LOE rbx rbp r13 r14 r15 r12d
..B7.8:                         # Preds ..B7.7
                                # Execution count [1.00e+00]
..LN1182:
	.loc    1  332  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #332.10
..LN1183:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B7.9:                         # Preds ..B7.8
                                # Execution count [1.00e+00]
..LN1184:
	.loc    1  334  is_stmt 1
        sub       rax, QWORD PTR [rsp]                          #334.2[spill]
..LN1185:
        pxor      xmm0, xmm0                                    #334.2
..LN1186:
        cvtsi2sd  xmm0, rax                                     #334.2
..LN1187:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]  #334.2
..LN1188:
        lea       rdi, QWORD PTR [.L_2__STRING.10(%rip)]        #334.2
..LN1189:
        mov       eax, 1                                        #334.2
..___tag_value_s112.336:
..LN1190:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #334.2
..___tag_value_s112.337:
..LN1191:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.10:                        # Preds ..B7.9
                                # Execution count [1.00e+00]
..LN1192:
	.loc    1  335  is_stmt 1
        mov       edi, 1                                        #335.2
..___tag_value_s112.338:
..LN1193:
#       check(int)
        call      check@PLT                                     #335.2
..___tag_value_s112.339:
..LN1194:
                                # LOE rbx rbp r12 r13 r14 r15
..B7.11:                        # Preds ..B7.10
                                # Execution count [1.00e+00]
..LN1195:
	.loc    1  336  is_stmt 1
        xor       eax, eax                                      #336.9
..LN1196:
	.loc    1  336  epilogue_begin  is_stmt 1
        add       rsp, 40                                       #336.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1197:
        pop       rbp                                           #336.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1198:
        pop       rbx                                           #336.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1199:
        pop       r15                                           #336.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1200:
        pop       r14                                           #336.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1201:
        pop       r13                                           #336.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1202:
        pop       r12                                           #336.9
	.cfi_def_cfa_offset 8
..LN1203:
        ret                                                     #336.9
        .align    16,0x90
..LN1204:
                                # LOE
..LN1205:
	.cfi_endproc
# mark_end;
	.type	s112,@function
	.size	s112,.-s112
..LNs112.1206:
.LNs112:
	.data
# -- End  s112
	.section .text.s312, "xa"
..TXTST7:
.L_2__routine_start_s312_7:
# -- Begin  s312
	.section .text.s312, "xa"
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
                                                        #258.1
..LN1207:
	.loc    1  258  is_stmt 1
        push      r12                                           #258.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1208:
        push      r13                                           #258.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1209:
        push      r14                                           #258.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1210:
        push      r15                                           #258.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1211:
        push      rbx                                           #258.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1212:
        push      rbp                                           #258.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1213:
        sub       rsp, 40                                       #258.1
	.cfi_def_cfa_offset 96
..LN1214:
	.loc    1  266  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.1(%rip)]         #266.2
..___tag_value_s312.373:
..LN1215:
#       init(char *)
        call      init@PLT                                      #266.2
..___tag_value_s312.374:
..LN1216:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.2:                         # Preds ..B8.1
                                # Execution count [1.00e+00]
..LN1217:
	.loc    1  267  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #267.12
..LN1218:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.14:                        # Preds ..B8.2
                                # Execution count [1.00e+00]
..LN1219:
        mov       QWORD PTR [rsp], rax                          #267.12[spill]
..LN1220:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.3:                         # Preds ..B8.14
                                # Execution count [1.00e+00]
..LN1221:
	.loc    1  275  is_stmt 1
        mov       r11, QWORD PTR [b@GOTPCREL(%rip)]             #275.3
..LN1222:
	.loc    1  270  is_stmt 1
        xor       ecx, ecx                                      #270.2
..LN1223:
	.loc    1  275  is_stmt 1
        mov       r10, QWORD PTR [c@GOTPCREL(%rip)]             #275.3
..LN1224:
        mov       r12d, ecx                                     #275.3
..LN1225:
        mov       rsi, QWORD PTR [d@GOTPCREL(%rip)]             #275.3
..LN1226:
	.loc    1  272  is_stmt 1
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]             #272.3
..LN1227:
	.loc    1  275  is_stmt 1
        mov       r13, rdi                                      #275.3
..LN1228:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]              #275.3
..LN1229:
        mov       r14, r8                                       #275.3
..LN1230:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]             #275.3
..LN1231:
        mov       r15, r9                                       #275.3
..LN1232:
        mov       rdx, QWORD PTR [bb@GOTPCREL(%rip)]            #275.3
..LN1233:
        mov       rbp, rdx                                      #275.3
..LN1234:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]            #275.3
..LN1235:
        mov       rbx, rax                                      #275.3
..LN1236:
        mov       QWORD PTR [16+rsp], rsi                       #275.3[spill]
..LN1237:
        mov       QWORD PTR [24+rsp], r10                       #275.3[spill]
..LN1238:
        mov       QWORD PTR [8+rsp], r11                        #275.3[spill]
..LN1239:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.4:                         # Preds ..B8.7 ..B8.3
                                # Execution count [1.99e+05]
..L375:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1240:
	.loc    1  270  is_stmt 1
..LN1241:
	.loc    1  269  is_stmt 1
        movups    xmm0, XMMWORD PTR [.L_2il0floatpacket.3(%rip)] #269.2
..LN1242:
	.loc    1  272  is_stmt 1
        xor       esi, esi                                      #272.3
..LN1243:
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
..LN1244:
	.loc    1  273  is_stmt 1
        mulps     xmm0, XMMWORD PTR [r13+rsi*4]                 #273.4
..LN1245:
        mulps     xmm0, XMMWORD PTR [16+r13+rsi*4]              #273.4
..LN1246:
        mulps     xmm0, XMMWORD PTR [32+r13+rsi*4]              #273.4
..LN1247:
        mulps     xmm0, XMMWORD PTR [48+r13+rsi*4]              #273.4
..LN1248:
	.loc    1  272  is_stmt 1
        add       rsi, 16                                       #272.3
..LN1249:
        cmp       rsi, 32000                                    #272.3
..LN1250:
        jb        ..B8.5        # Prob 99%                      #272.3
..LN1251:
                                # LOE rbx rbp rsi r13 r14 r15 r12d xmm0
..B8.6:                         # Preds ..B8.5
                                # Execution count [1.99e+05]
..LN1252:
	.loc    1  269  is_stmt 1
        movaps    xmm1, xmm0                                    #269.2
..LN1253:
	.loc    1  275  is_stmt 1
        mov       rdi, r13                                      #275.3
..LN1254:
	.loc    1  269  is_stmt 1
        movhlps   xmm1, xmm0                                    #269.2
..LN1255:
	.loc    1  275  is_stmt 1
        mov       r8, r14                                       #275.3
..LN1256:
	.loc    1  269  is_stmt 1
        mulps     xmm0, xmm1                                    #269.2
..LN1257:
	.loc    1  275  is_stmt 1
        mov       r9, r15                                       #275.3
..LN1258:
	.loc    1  269  is_stmt 1
        movaps    xmm2, xmm0                                    #269.2
..LN1259:
        shufps    xmm2, xmm0, 245                               #269.2
..LN1260:
        mulss     xmm0, xmm2                                    #269.2
..LN1261:
	.loc    1  275  is_stmt 1
        push      rbx                                           #275.3
	.cfi_def_cfa_offset 104
..LN1262:
        push      rbp                                           #275.3
	.cfi_def_cfa_offset 112
..LN1263:
        mov       rsi, QWORD PTR [24+rsp]                       #275.3[spill]
..LN1264:
        mov       rdx, QWORD PTR [40+rsp]                       #275.3[spill]
..LN1265:
        mov       rcx, QWORD PTR [32+rsp]                       #275.3[spill]
..LN1266:
	.loc    1  269  is_stmt 1
        movss     DWORD PTR [48+rsp], xmm0                      #269.2[spill]
..___tag_value_s312.379:
..LN1267:
	.loc    1  275  is_stmt 1
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #275.3
..___tag_value_s312.380:
..LN1268:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.15:                        # Preds ..B8.6
                                # Execution count [1.99e+05]
..LN1269:
        add       rsp, 16                                       #275.3
	.cfi_def_cfa_offset 96
..LN1270:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.7:                         # Preds ..B8.15
                                # Execution count [1.99e+05]
..LN1271:
	.loc    1  270  is_stmt 1
        inc       r12d                                          #270.2
..LN1272:
        cmp       r12d, 200000                                  #270.2
..LN1273:
        jb        ..B8.4        # Prob 99%                      #270.2
..LN1274:
                                # LOE rbx rbp r13 r14 r15 r12d
..B8.8:                         # Preds ..B8.7
                                # Execution count [1.00e+00]
..LN1275:
	.loc    1  277  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #277.10
..LN1276:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.9:                         # Preds ..B8.8
                                # Execution count [1.00e+00]
..LN1277:
	.loc    1  279  is_stmt 1
        sub       rax, QWORD PTR [rsp]                          #279.2[spill]
..LN1278:
        pxor      xmm0, xmm0                                    #279.2
..LN1279:
        cvtsi2sd  xmm0, rax                                     #279.2
..LN1280:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]  #279.2
..LN1281:
        lea       rdi, QWORD PTR [.L_2__STRING.7(%rip)]         #279.2
..LN1282:
        mov       eax, 1                                        #279.2
..___tag_value_s312.382:
..LN1283:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #279.2
..___tag_value_s312.383:
..LN1284:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.10:                        # Preds ..B8.9
                                # Execution count [1.00e+00]
..LN1285:
	.loc    1  280  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]          #280.2
..LN1286:
	.loc    1  281  is_stmt 1
        mov       edi, -1                                       #281.2
..LN1287:
	.loc    1  280  is_stmt 1
        movss     xmm0, DWORD PTR [32+rsp]                      #280.2[spill]
..LN1288:
        movss     DWORD PTR [rax], xmm0                         #280.2
..___tag_value_s312.384:
..LN1289:
	.loc    1  281  is_stmt 1
#       check(int)
        call      check@PLT                                     #281.2
..___tag_value_s312.385:
..LN1290:
                                # LOE rbx rbp r12 r13 r14 r15
..B8.11:                        # Preds ..B8.10
                                # Execution count [1.00e+00]
..LN1291:
	.loc    1  282  is_stmt 1
        xor       eax, eax                                      #282.9
..LN1292:
	.loc    1  282  epilogue_begin  is_stmt 1
        add       rsp, 40                                       #282.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1293:
        pop       rbp                                           #282.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1294:
        pop       rbx                                           #282.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1295:
        pop       r15                                           #282.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1296:
        pop       r14                                           #282.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1297:
        pop       r13                                           #282.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1298:
        pop       r12                                           #282.9
	.cfi_def_cfa_offset 8
..LN1299:
        ret                                                     #282.9
        .align    16,0x90
..LN1300:
                                # LOE
..LN1301:
	.cfi_endproc
# mark_end;
	.type	s312,@function
	.size	s312,.-s312
..LNs312.1302:
.LNs312:
	.data
# -- End  s312
	.section .text.s317, "xa"
..TXTST8:
.L_2__routine_start_s317_8:
# -- Begin  s317
	.section .text.s317, "xa"
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
                                                        #285.1
..LN1303:
	.loc    1  285  is_stmt 1
        push      r12                                           #285.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1304:
        push      r13                                           #285.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1305:
        push      r14                                           #285.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1306:
        push      r15                                           #285.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1307:
        push      rbx                                           #285.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1308:
        push      rbp                                           #285.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1309:
        sub       rsp, 40                                       #285.1
	.cfi_def_cfa_offset 96
..LN1310:
	.loc    1  295  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.8(%rip)]         #295.2
..___tag_value_s317.419:
..LN1311:
#       init(char *)
        call      init@PLT                                      #295.2
..___tag_value_s317.420:
..LN1312:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.2:                         # Preds ..B9.1
                                # Execution count [1.00e+00]
..LN1313:
	.loc    1  296  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #296.12
..LN1314:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.14:                        # Preds ..B9.2
                                # Execution count [1.00e+00]
..LN1315:
        mov       QWORD PTR [rsp], rax                          #296.12[spill]
..LN1316:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.3:                         # Preds ..B9.14
                                # Execution count [4.86e+02]
..LN1317:
	.loc    1  304  is_stmt 1
        mov       r11, QWORD PTR [a@GOTPCREL(%rip)]             #304.3
..LN1318:
	.loc    1  299  is_stmt 1
        xor       ecx, ecx                                      #299.2
..LN1319:
	.loc    1  304  is_stmt 1
        mov       r10, QWORD PTR [c@GOTPCREL(%rip)]             #304.3
..LN1320:
        mov       r13d, ecx                                     #304.3
..LN1321:
        mov       rdi, QWORD PTR [d@GOTPCREL(%rip)]             #304.3
..LN1322:
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]             #304.3
..LN1323:
        mov       r14, rsi                                      #304.3
..LN1324:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]              #304.3
..LN1325:
        mov       r15, r8                                       #304.3
..LN1326:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]             #304.3
..LN1327:
        mov       rbp, r9                                       #304.3
..LN1328:
        mov       rdx, QWORD PTR [bb@GOTPCREL(%rip)]            #304.3
..LN1329:
        mov       r12, rdx                                      #304.3
..LN1330:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]            #304.3
..LN1331:
        mov       rbx, rax                                      #304.3
..LN1332:
        mov       QWORD PTR [16+rsp], rdi                       #304.3[spill]
..LN1333:
        mov       QWORD PTR [24+rsp], r10                       #304.3[spill]
..LN1334:
        mov       QWORD PTR [8+rsp], r11                        #304.3[spill]
..LN1335:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.4:                         # Preds ..B9.7 ..B9.3
                                # Execution count [3.97e+05]
..L421:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1336:
	.loc    1  299  is_stmt 1
..LN1337:
	.loc    1  298  is_stmt 1
        movups    xmm0, XMMWORD PTR [.L_2il0floatpacket.3(%rip)] #298.2
..LN1338:
	.loc    1  301  is_stmt 1
        xor       edi, edi                                      #301.3
..LN1339:
        movups    xmm1, XMMWORD PTR [.L_2il0floatpacket.4(%rip)] #301.3
..LN1340:
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
..LN1341:
	.loc    1  302  is_stmt 1
        mulps     xmm0, xmm1                                    #302.4
..LN1342:
	.loc    1  301  is_stmt 1
        add       edi, 16                                       #301.3
..LN1343:
	.loc    1  302  is_stmt 1
        mulps     xmm0, xmm1                                    #302.4
..LN1344:
        mulps     xmm0, xmm1                                    #302.4
..LN1345:
        mulps     xmm0, xmm1                                    #302.4
..LN1346:
	.loc    1  301  is_stmt 1
        cmp       edi, 16000                                    #301.3
..LN1347:
        jb        ..B9.5        # Prob 99%                      #301.3
..LN1348:
                                # LOE rbx rbp r12 r14 r15 edi r13d xmm0 xmm1
..B9.6:                         # Preds ..B9.5
                                # Execution count [3.97e+05]
..LN1349:
	.loc    1  298  is_stmt 1
        movaps    xmm1, xmm0                                    #298.2
..LN1350:
	.loc    1  304  is_stmt 1
        mov       rsi, r14                                      #304.3
..LN1351:
	.loc    1  298  is_stmt 1
        movhlps   xmm1, xmm0                                    #298.2
..LN1352:
	.loc    1  304  is_stmt 1
        mov       r8, r15                                       #304.3
..LN1353:
	.loc    1  298  is_stmt 1
        mulps     xmm0, xmm1                                    #298.2
..LN1354:
	.loc    1  304  is_stmt 1
        mov       r9, rbp                                       #304.3
..LN1355:
	.loc    1  298  is_stmt 1
        movaps    xmm2, xmm0                                    #298.2
..LN1356:
        shufps    xmm2, xmm0, 245                               #298.2
..LN1357:
        mulss     xmm0, xmm2                                    #298.2
..LN1358:
	.loc    1  304  is_stmt 1
        push      rbx                                           #304.3
	.cfi_def_cfa_offset 104
..LN1359:
        push      r12                                           #304.3
	.cfi_def_cfa_offset 112
..LN1360:
        mov       rdi, QWORD PTR [24+rsp]                       #304.3[spill]
..LN1361:
        mov       rdx, QWORD PTR [40+rsp]                       #304.3[spill]
..LN1362:
        mov       rcx, QWORD PTR [32+rsp]                       #304.3[spill]
..LN1363:
	.loc    1  298  is_stmt 1
        movss     DWORD PTR [48+rsp], xmm0                      #298.2[spill]
..___tag_value_s317.425:
..LN1364:
	.loc    1  304  is_stmt 1
#       dummy(float *, float *, float *, float *, float *, float (*)[180], float (*)[180], float (*)[180], float)
        call      dummy@PLT                                     #304.3
..___tag_value_s317.426:
..LN1365:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.15:                        # Preds ..B9.6
                                # Execution count [3.97e+05]
..LN1366:
        add       rsp, 16                                       #304.3
	.cfi_def_cfa_offset 96
..LN1367:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.7:                         # Preds ..B9.15
                                # Execution count [3.97e+05]
..LN1368:
	.loc    1  299  is_stmt 1
        inc       r13d                                          #299.2
..LN1369:
        cmp       r13d, 400000                                  #299.2
..LN1370:
        jb        ..B9.4        # Prob 99%                      #299.2
..LN1371:
                                # LOE rbx rbp r12 r14 r15 r13d
..B9.8:                         # Preds ..B9.7
                                # Execution count [1.00e+00]
..LN1372:
	.loc    1  306  is_stmt 1
#       clock(void)
        call      clock@PLT                                     #306.10
..LN1373:
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.9:                         # Preds ..B9.8
                                # Execution count [1.00e+00]
..LN1374:
	.loc    1  308  is_stmt 1
        sub       rax, QWORD PTR [rsp]                          #308.2[spill]
..LN1375:
        pxor      xmm0, xmm0                                    #308.2
..LN1376:
        cvtsi2sd  xmm0, rax                                     #308.2
..LN1377:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]  #308.2
..LN1378:
        lea       rdi, QWORD PTR [.L_2__STRING.9(%rip)]         #308.2
..LN1379:
        mov       eax, 1                                        #308.2
..___tag_value_s317.428:
..LN1380:
#       printf(const char *__restrict__, ...)
        call      printf@PLT                                    #308.2
..___tag_value_s317.429:
..LN1381:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.10:                        # Preds ..B9.9
                                # Execution count [1.00e+00]
..LN1382:
	.loc    1  309  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]          #309.2
..LN1383:
	.loc    1  310  is_stmt 1
        mov       edi, -1                                       #310.2
..LN1384:
	.loc    1  309  is_stmt 1
        movss     xmm0, DWORD PTR [32+rsp]                      #309.2[spill]
..LN1385:
        movss     DWORD PTR [rax], xmm0                         #309.2
..___tag_value_s317.430:
..LN1386:
	.loc    1  310  is_stmt 1
#       check(int)
        call      check@PLT                                     #310.2
..___tag_value_s317.431:
..LN1387:
                                # LOE rbx rbp r12 r13 r14 r15
..B9.11:                        # Preds ..B9.10
                                # Execution count [1.00e+00]
..LN1388:
	.loc    1  311  is_stmt 1
        xor       eax, eax                                      #311.9
..LN1389:
	.loc    1  311  epilogue_begin  is_stmt 1
        add       rsp, 40                                       #311.9
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1390:
        pop       rbp                                           #311.9
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1391:
        pop       rbx                                           #311.9
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1392:
        pop       r15                                           #311.9
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1393:
        pop       r14                                           #311.9
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1394:
        pop       r13                                           #311.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1395:
        pop       r12                                           #311.9
	.cfi_def_cfa_offset 8
..LN1396:
        ret                                                     #311.9
        .align    16,0x90
..LN1397:
                                # LOE
..LN1398:
	.cfi_endproc
# mark_end;
	.type	s317,@function
	.size	s317,.-s317
..LNs317.1399:
.LNs317:
	.data
# -- End  s317
	.section .text.set1d, "xa"
..TXTST9:
.L_2__routine_start_set1d_9:
# -- Begin  set1d
	.section .text.set1d, "xa"
# mark_begin;
       .align    16,0x90
	.globl set1d
# --- set1d(float *, float, int)
set1d:
# parameter 1(arr): rdi
# parameter 2(value): xmm0
# parameter 3(stride): esi
..B10.1:                        # Preds ..B10.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_set1d.449:
..L450:
                                                        #78.1
..LN1400:
	.loc    1  78  is_stmt 1
        movsxd    rcx, esi                                      #78.1
..LN1401:
	.loc    1  79  prologue_end  is_stmt 1
        cmp       esi, -1                                       #79.6
..LN1402:
        jne       ..B10.18      # Prob 66%                      #79.6
..LN1403:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.2:                        # Preds ..B10.1
                                # Execution count [3.33e-01]
..LN1404:
	.loc    1  80  is_stmt 1
        mov       rdx, rdi                                      #80.3
..LN1405:
        and       rdx, 15                                       #80.3
..LN1406:
        test      edx, edx                                      #80.3
..LN1407:
        je        ..B10.7       # Prob 50%                      #80.3
..LN1408:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B10.3:                        # Preds ..B10.2
                                # Execution count [3.33e-01]
..LN1409:
        test      dl, 3                                         #80.3
..LN1410:
        jne       ..B10.41      # Prob 10%                      #80.3
..LN1411:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx
..B10.4:                        # Preds ..B10.3
                                # Execution count [3.32e-01]
..LN1412:
        neg       edx                                           #80.3
..LN1413:
        xor       ecx, ecx                                      #80.3
..LN1414:
        add       edx, 16                                       #80.3
..LN1415:
        xor       eax, eax                                      #80.3
..LN1416:
        shr       edx, 2                                        #80.3
..LN1417:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B10.5:                        # Preds ..B10.5 ..B10.4
                                # Execution count [1.07e+04]
..L452:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN1418:
	.loc    1  81  is_stmt 1
        inc       ecx                                           #81.29
..LN1419:
        pxor      xmm0, xmm0                                    #81.29
..LN1420:
        cvtsi2ss  xmm0, ecx                                     #81.29
..LN1421:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #81.29
..LN1422:
        divss     xmm1, xmm0                                    #81.29
..LN1423:
        movss     DWORD PTR [rdi+rax*4], xmm1                   #81.4
..LN1424:
        inc       rax                                           #81.29
..LN1425:
	.loc    1  80  is_stmt 1
        cmp       ecx, edx                                      #80.3
..LN1426:
        jb        ..B10.5       # Prob 99%                      #80.3
..LN1427:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx
..B10.7:                        # Preds ..B10.5 ..B10.2
                                # Execution count [3.32e-01]
..LN1428:
        mov       esi, edx                                      #80.3
..LN1429:
	.loc    1  81  is_stmt 1
        lea       ecx, DWORD PTR [1+rdx]                        #81.29
..LN1430:
	.loc    1  80  is_stmt 1
        neg       esi                                           #80.3
..LN1431:
	.loc    1  81  is_stmt 1
        lea       r9d, DWORD PTR [2+rdx]                        #81.29
..LN1432:
	.loc    1  80  is_stmt 1
        and       esi, 15                                       #80.3
..LN1433:
	.loc    1  81  is_stmt 1
        lea       r10d, DWORD PTR [3+rdx]                       #81.29
..LN1434:
	.loc    1  80  is_stmt 1
        neg       esi                                           #80.3
..LN1435:
	.loc    1  81  is_stmt 1
        lea       r11d, DWORD PTR [4+rdx]                       #81.29
..LN1436:
        mov       eax, 4                                        #81.29
..LN1437:
        movd      xmm1, ecx                                     #81.29
..LN1438:
        movd      xmm2, r9d                                     #81.29
..LN1439:
        movd      xmm4, r10d                                    #81.29
..LN1440:
        movd      xmm3, r11d                                    #81.29
..LN1441:
	.loc    1  80  is_stmt 1
        lea       r8d, DWORD PTR [32000+rsi]                    #80.3
..LN1442:
	.loc    1  81  is_stmt 1
        punpcklqdq xmm1, xmm2                                   #81.29
..LN1443:
        movd      xmm0, eax                                     #81.29
..LN1444:
        punpcklqdq xmm4, xmm3                                   #81.29
..LN1445:
	.loc    1  80  is_stmt 1
        mov       eax, r8d                                      #80.3
..LN1446:
	.loc    1  81  is_stmt 1
        pshufd    xmm0, xmm0, 0                                 #81.29
..LN1447:
        shufps    xmm1, xmm4, 136                               #81.29
..LN1448:
	.loc    1  80  is_stmt 1
        mov       edx, edx                                      #80.3
        .align    16,0x90
..LN1449:
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
..LN1450:
	.loc    1  81  is_stmt 1
        cvtdq2ps  xmm2, xmm1                                    #81.29
..LN1451:
        paddd     xmm1, xmm0                                    #81.29
..LN1452:
        cvtdq2ps  xmm4, xmm1                                    #81.29
..LN1453:
        rcpps     xmm3, xmm2                                    #81.29
..LN1454:
        rcpps     xmm5, xmm4                                    #81.29
..LN1455:
        mulps     xmm2, xmm3                                    #81.29
..LN1456:
        mulps     xmm4, xmm5                                    #81.29
..LN1457:
        mulps     xmm2, xmm3                                    #81.29
..LN1458:
        addps     xmm3, xmm3                                    #81.29
..LN1459:
        mulps     xmm4, xmm5                                    #81.29
..LN1460:
        addps     xmm5, xmm5                                    #81.29
..LN1461:
        subps     xmm3, xmm2                                    #81.29
..LN1462:
        subps     xmm5, xmm4                                    #81.29
..LN1463:
        paddd     xmm1, xmm0                                    #81.29
..LN1464:
        cvtdq2ps  xmm6, xmm1                                    #81.29
..LN1465:
        paddd     xmm1, xmm0                                    #81.29
..LN1466:
        cvtdq2ps  xmm8, xmm1                                    #81.29
..LN1467:
        rcpps     xmm7, xmm6                                    #81.29
..LN1468:
        rcpps     xmm9, xmm8                                    #81.29
..LN1469:
        mulps     xmm6, xmm7                                    #81.29
..LN1470:
        mulps     xmm8, xmm9                                    #81.29
..LN1471:
        mulps     xmm6, xmm7                                    #81.29
..LN1472:
        addps     xmm7, xmm7                                    #81.29
..LN1473:
        mulps     xmm8, xmm9                                    #81.29
..LN1474:
        addps     xmm9, xmm9                                    #81.29
..LN1475:
        subps     xmm7, xmm6                                    #81.29
..LN1476:
        subps     xmm9, xmm8                                    #81.29
..LN1477:
        movups    XMMWORD PTR [rdi+rdx*4], xmm3                 #81.4
..LN1478:
        paddd     xmm1, xmm0                                    #81.29
..LN1479:
        movups    XMMWORD PTR [16+rdi+rdx*4], xmm5              #81.4
..LN1480:
        movups    XMMWORD PTR [32+rdi+rdx*4], xmm7              #81.4
..LN1481:
        movups    XMMWORD PTR [48+rdi+rdx*4], xmm9              #81.4
..LN1482:
	.loc    1  80  is_stmt 1
        add       rdx, 16                                       #80.3
..LN1483:
        cmp       rdx, rax                                      #80.3
..LN1484:
        jb        ..B10.8       # Prob 99%                      #80.3
..LN1485:
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1
..B10.9:                        # Preds ..B10.8
                                # Execution count [3.00e-01]
..LN1486:
        lea       r9d, DWORD PTR [32001+rsi]                    #80.3
..LN1487:
        cmp       r9d, 32000                                    #80.3
..LN1488:
        ja        ..B10.40      # Prob 50%                      #80.3
..LN1489:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm0
..B10.10:                       # Preds ..B10.9
                                # Execution count [3.16e-01]
..LN1490:
        mov       edx, r8d                                      #80.3
..LN1491:
        neg       edx                                           #80.3
..LN1492:
        add       edx, 32000                                    #80.3
..LN1493:
        cmp       edx, 4                                        #80.3
..LN1494:
        jb        ..B10.42      # Prob 10%                      #80.3
..LN1495:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx esi r8d r9d xmm0
..B10.11:                       # Preds ..B10.10
                                # Execution count [3.32e-01]
..LN1496:
	.loc    1  81  is_stmt 1
        movd      xmm1, r9d                                     #81.29
..LN1497:
        lea       r10d, DWORD PTR [32002+rsi]                   #81.29
..LN1498:
	.loc    1  80  is_stmt 1
        mov       ecx, edx                                      #80.3
..LN1499:
	.loc    1  81  is_stmt 1
        lea       r11d, DWORD PTR [32003+rsi]                   #81.29
..LN1500:
        add       esi, 32004                                    #81.29
..LN1501:
	.loc    1  80  is_stmt 1
        and       ecx, -4                                       #80.3
..LN1502:
	.loc    1  81  is_stmt 1
        movd      xmm2, r10d                                    #81.29
..LN1503:
        movd      xmm4, r11d                                    #81.29
..LN1504:
        movd      xmm3, esi                                     #81.29
..LN1505:
	.loc    1  80  is_stmt 1
        xor       esi, esi                                      #80.3
..LN1506:
	.loc    1  81  is_stmt 1
        punpcklqdq xmm1, xmm2                                   #81.29
..LN1507:
        punpcklqdq xmm4, xmm3                                   #81.29
..LN1508:
        shufps    xmm1, xmm4, 136                               #81.29
..LN1509:
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
..LN1510:
	.loc    1  80  is_stmt 1
..LN1511:
	.loc    1  81  is_stmt 1
        cvtdq2ps  xmm2, xmm1                                    #81.29
..LN1512:
        rcpps     xmm3, xmm2                                    #81.29
..LN1513:
        mulps     xmm2, xmm3                                    #81.29
..LN1514:
	.loc    1  80  is_stmt 1
        add       esi, 4                                        #80.3
..LN1515:
	.loc    1  81  is_stmt 1
        mulps     xmm2, xmm3                                    #81.29
..LN1516:
        addps     xmm3, xmm3                                    #81.29
..LN1517:
        paddd     xmm1, xmm0                                    #81.29
..LN1518:
        subps     xmm3, xmm2                                    #81.29
..LN1519:
        movups    XMMWORD PTR [rdi+rax*4], xmm3                 #81.4
..LN1520:
	.loc    1  80  is_stmt 1
        add       rax, 4                                        #80.3
..LN1521:
        cmp       esi, ecx                                      #80.3
..LN1522:
        jb        ..B10.12      # Prob 99%                      #80.3
..LN1523:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx esi r8d xmm0 xmm1
..B10.14:                       # Preds ..B10.12 ..B10.42 ..B10.41
                                # Execution count [3.33e-01]
..LN1524:
        add       r8d, ecx                                      #80.3
..LN1525:
        movsxd    rax, r8d                                      #80.3
..LN1526:
        cmp       ecx, edx                                      #80.3
..LN1527:
        jae       ..B10.40      # Prob 0%                       #80.3
..LN1528:
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
..LN1529:
	.loc    1  81  is_stmt 1
        inc       r8d                                           #81.29
..LN1530:
        pxor      xmm0, xmm0                                    #81.29
..LN1531:
        cvtsi2ss  xmm0, r8d                                     #81.29
..LN1532:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #81.29
..LN1533:
	.loc    1  80  is_stmt 1
        inc       ecx                                           #80.3
..LN1534:
	.loc    1  81  is_stmt 1
        divss     xmm1, xmm0                                    #81.29
..LN1535:
        movss     DWORD PTR [rdi+rax*4], xmm1                   #81.4
..LN1536:
	.loc    1  80  is_stmt 1
        inc       rax                                           #80.3
..LN1537:
        cmp       ecx, edx                                      #80.3
..LN1538:
        jb        ..B10.16      # Prob 99%                      #80.3
..LN1539:
        jmp       ..B10.40      # Prob 100%                     #80.3
..LN1540:
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.18:                       # Preds ..B10.1
                                # Execution count [6.67e-01]
..LN1541:
	.loc    1  79  is_stmt 1
        cmp       esi, -2                                       #79.6
..LN1542:
        jne       ..B10.35      # Prob 50%                      #79.6
..LN1543:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.19:                       # Preds ..B10.18
                                # Execution count [3.33e-01]
..LN1544:
	.loc    1  84  is_stmt 1
        mov       rax, rdi                                      #84.3
..LN1545:
        and       rax, 15                                       #84.3
..LN1546:
        test      eax, eax                                      #84.3
..LN1547:
        je        ..B10.24      # Prob 50%                      #84.3
..LN1548:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.20:                       # Preds ..B10.19
                                # Execution count [3.33e-01]
..LN1549:
        test      al, 3                                         #84.3
..LN1550:
        jne       ..B10.43      # Prob 10%                      #84.3
..LN1551:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax
..B10.21:                       # Preds ..B10.20
                                # Execution count [3.33e-01]
..LN1552:
        neg       eax                                           #84.3
..LN1553:
        xor       ecx, ecx                                      #84.3
..LN1554:
        add       eax, 16                                       #84.3
..LN1555:
        xor       edx, edx                                      #84.3
..LN1556:
        shr       eax, 2                                        #84.3
..LN1557:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B10.22:                       # Preds ..B10.22 ..B10.21
                                # Execution count [1.07e+04]
..L456:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN1558:
	.loc    1  85  is_stmt 1
        inc       ecx                                           #85.30
..LN1559:
        pxor      xmm0, xmm0                                    #85.38
..LN1560:
        mov       esi, ecx                                      #85.38
..LN1561:
        imul      esi, ecx                                      #85.38
..LN1562:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #85.38
..LN1563:
        cvtsi2ss  xmm0, esi                                     #85.38
..LN1564:
        divss     xmm1, xmm0                                    #85.38
..LN1565:
        movss     DWORD PTR [rdi+rdx*4], xmm1                   #85.4
..LN1566:
        inc       rdx                                           #85.30
..LN1567:
	.loc    1  84  is_stmt 1
        cmp       ecx, eax                                      #84.3
..LN1568:
        jb        ..B10.22      # Prob 99%                      #84.3
..LN1569:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx
..B10.24:                       # Preds ..B10.22 ..B10.19
                                # Execution count [3.33e-01]
..LN1570:
        mov       esi, eax                                      #84.3
..LN1571:
	.loc    1  85  is_stmt 1
        mov       edx, 4                                        #85.30
..LN1572:
	.loc    1  84  is_stmt 1
        neg       esi                                           #84.3
..LN1573:
	.loc    1  85  is_stmt 1
        lea       ecx, DWORD PTR [1+rax]                        #85.30
..LN1574:
	.loc    1  84  is_stmt 1
        and       esi, 15                                       #84.3
..LN1575:
	.loc    1  85  is_stmt 1
        lea       r9d, DWORD PTR [2+rax]                        #85.30
..LN1576:
	.loc    1  84  is_stmt 1
        neg       esi                                           #84.3
..LN1577:
	.loc    1  85  is_stmt 1
        lea       r10d, DWORD PTR [3+rax]                       #85.30
..LN1578:
        movd      xmm0, edx                                     #85.30
..LN1579:
        lea       r11d, DWORD PTR [4+rax]                       #85.30
..LN1580:
        pshufd    xmm2, xmm0, 0                                 #85.30
..LN1581:
        movd      xmm0, ecx                                     #85.30
..LN1582:
        movd      xmm1, r9d                                     #85.30
..LN1583:
        movd      xmm4, r10d                                    #85.30
..LN1584:
	.loc    1  84  is_stmt 1
        lea       r8d, DWORD PTR [32000+rsi]                    #84.3
..LN1585:
	.loc    1  85  is_stmt 1
        movd      xmm3, r11d                                    #85.30
..LN1586:
	.loc    1  84  is_stmt 1
        mov       edx, r8d                                      #84.3
..LN1587:
	.loc    1  85  is_stmt 1
        punpcklqdq xmm0, xmm1                                   #85.30
..LN1588:
        punpcklqdq xmm4, xmm3                                   #85.30
..LN1589:
        shufps    xmm0, xmm4, 136                               #85.30
..LN1590:
	.loc    1  84  is_stmt 1
        mov       eax, eax                                      #84.3
..LN1591:
	.loc    1  85  is_stmt 1
        movdqu    xmm1, XMMWORD PTR [.L_2il0floatpacket.5(%rip)] #85.38
..LN1592:
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
..LN1593:
	.loc    1  84  is_stmt 1
..LN1594:
	.loc    1  85  is_stmt 1
        movaps    xmm3, xmm0                                    #85.38
..LN1595:
        movaps    xmm4, xmm0                                    #85.38
..LN1596:
        psrlq     xmm3, 32                                      #85.38
..LN1597:
        pmuludq   xmm4, xmm0                                    #85.38
..LN1598:
        paddd     xmm0, xmm2                                    #85.30
..LN1599:
        pmuludq   xmm3, xmm3                                    #85.38
..LN1600:
        pand      xmm4, xmm1                                    #85.38
..LN1601:
        psllq     xmm3, 32                                      #85.38
..LN1602:
        por       xmm4, xmm3                                    #85.38
..LN1603:
        movaps    xmm8, xmm0                                    #85.38
..LN1604:
        cvtdq2ps  xmm5, xmm4                                    #85.38
..LN1605:
        pmuludq   xmm8, xmm0                                    #85.38
..LN1606:
        rcpps     xmm6, xmm5                                    #85.38
..LN1607:
        movaps    xmm7, xmm0                                    #85.38
..LN1608:
        paddd     xmm0, xmm2                                    #85.30
..LN1609:
        movaps    xmm12, xmm0                                   #85.38
..LN1610:
        movaps    xmm11, xmm0                                   #85.38
..LN1611:
        pmuludq   xmm12, xmm0                                   #85.38
..LN1612:
        paddd     xmm0, xmm2                                    #85.30
..LN1613:
        mulps     xmm5, xmm6                                    #85.38
..LN1614:
        movaps    xmm15, xmm0                                   #85.38
..LN1615:
        psrlq     xmm7, 32                                      #85.38
..LN1616:
        psrlq     xmm11, 32                                     #85.38
..LN1617:
        psrlq     xmm15, 32                                     #85.38
..LN1618:
        movaps    xmm3, xmm0                                    #85.38
..LN1619:
        pand      xmm8, xmm1                                    #85.38
..LN1620:
        pmuludq   xmm7, xmm7                                    #85.38
..LN1621:
        pand      xmm12, xmm1                                   #85.38
..LN1622:
        mulps     xmm5, xmm6                                    #85.38
..LN1623:
        addps     xmm6, xmm6                                    #85.38
..LN1624:
        pmuludq   xmm11, xmm11                                  #85.38
..LN1625:
        pmuludq   xmm3, xmm0                                    #85.38
..LN1626:
        pmuludq   xmm15, xmm15                                  #85.38
..LN1627:
        subps     xmm6, xmm5                                    #85.38
..LN1628:
        psllq     xmm7, 32                                      #85.38
..LN1629:
        psllq     xmm11, 32                                     #85.38
..LN1630:
        pand      xmm3, xmm1                                    #85.38
..LN1631:
        psllq     xmm15, 32                                     #85.38
..LN1632:
        por       xmm8, xmm7                                    #85.38
..LN1633:
        por       xmm12, xmm11                                  #85.38
..LN1634:
        por       xmm3, xmm15                                   #85.38
..LN1635:
        paddd     xmm0, xmm2                                    #85.30
..LN1636:
        cvtdq2ps  xmm9, xmm8                                    #85.38
..LN1637:
        cvtdq2ps  xmm13, xmm12                                  #85.38
..LN1638:
        cvtdq2ps  xmm4, xmm3                                    #85.38
..LN1639:
        rcpps     xmm10, xmm9                                   #85.38
..LN1640:
        rcpps     xmm14, xmm13                                  #85.38
..LN1641:
        rcpps     xmm5, xmm4                                    #85.38
..LN1642:
        mulps     xmm9, xmm10                                   #85.38
..LN1643:
        mulps     xmm13, xmm14                                  #85.38
..LN1644:
        mulps     xmm4, xmm5                                    #85.38
..LN1645:
        mulps     xmm9, xmm10                                   #85.38
..LN1646:
        addps     xmm10, xmm10                                  #85.38
..LN1647:
        mulps     xmm13, xmm14                                  #85.38
..LN1648:
        addps     xmm14, xmm14                                  #85.38
..LN1649:
        mulps     xmm4, xmm5                                    #85.38
..LN1650:
        addps     xmm5, xmm5                                    #85.38
..LN1651:
        subps     xmm10, xmm9                                   #85.38
..LN1652:
        subps     xmm14, xmm13                                  #85.38
..LN1653:
        subps     xmm5, xmm4                                    #85.38
..LN1654:
        movups    XMMWORD PTR [rdi+rax*4], xmm6                 #85.4
..LN1655:
        movups    XMMWORD PTR [16+rdi+rax*4], xmm10             #85.4
..LN1656:
        movups    XMMWORD PTR [32+rdi+rax*4], xmm14             #85.4
..LN1657:
        movups    XMMWORD PTR [48+rdi+rax*4], xmm5              #85.4
..LN1658:
	.loc    1  84  is_stmt 1
        add       rax, 16                                       #84.3
..LN1659:
        cmp       rax, rdx                                      #84.3
..LN1660:
        jb        ..B10.25      # Prob 99%                      #84.3
..LN1661:
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0 xmm1 xmm2
..B10.26:                       # Preds ..B10.25
                                # Execution count [3.00e-01]
..LN1662:
        lea       r9d, DWORD PTR [32001+rsi]                    #84.3
..LN1663:
        cmp       r9d, 32000                                    #84.3
..LN1664:
        ja        ..B10.40      # Prob 50%                      #84.3
..LN1665:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi r8d r9d xmm1 xmm2
..B10.27:                       # Preds ..B10.26
                                # Execution count [3.16e-01]
..LN1666:
        mov       eax, r8d                                      #84.3
..LN1667:
        neg       eax                                           #84.3
..LN1668:
        add       eax, 32000                                    #84.3
..LN1669:
        cmp       eax, 4                                        #84.3
..LN1670:
        jb        ..B10.44      # Prob 10%                      #84.3
..LN1671:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax esi r8d r9d xmm1 xmm2
..B10.28:                       # Preds ..B10.27
                                # Execution count [3.33e-01]
..LN1672:
	.loc    1  85  is_stmt 1
        movd      xmm0, r9d                                     #85.30
..LN1673:
        lea       r10d, DWORD PTR [32002+rsi]                   #85.30
..LN1674:
	.loc    1  84  is_stmt 1
        mov       ecx, eax                                      #84.3
..LN1675:
	.loc    1  85  is_stmt 1
        lea       r11d, DWORD PTR [32003+rsi]                   #85.30
..LN1676:
        add       esi, 32004                                    #85.30
..LN1677:
	.loc    1  84  is_stmt 1
        and       ecx, -4                                       #84.3
..LN1678:
	.loc    1  85  is_stmt 1
        movd      xmm3, r10d                                    #85.30
..LN1679:
        movd      xmm5, r11d                                    #85.30
..LN1680:
        movd      xmm4, esi                                     #85.30
..LN1681:
	.loc    1  84  is_stmt 1
        xor       esi, esi                                      #84.3
..LN1682:
	.loc    1  85  is_stmt 1
        punpcklqdq xmm0, xmm3                                   #85.30
..LN1683:
        punpcklqdq xmm5, xmm4                                   #85.30
..LN1684:
        shufps    xmm0, xmm5, 136                               #85.30
        .align    16,0x90
..LN1685:
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
..LN1686:
	.loc    1  84  is_stmt 1
..LN1687:
	.loc    1  85  is_stmt 1
        movaps    xmm3, xmm0                                    #85.38
..LN1688:
        movaps    xmm4, xmm0                                    #85.38
..LN1689:
        psrlq     xmm3, 32                                      #85.38
..LN1690:
	.loc    1  84  is_stmt 1
        add       esi, 4                                        #84.3
..LN1691:
	.loc    1  85  is_stmt 1
        pmuludq   xmm4, xmm0                                    #85.38
..LN1692:
        paddd     xmm0, xmm2                                    #85.30
..LN1693:
        pmuludq   xmm3, xmm3                                    #85.38
..LN1694:
        pand      xmm4, xmm1                                    #85.38
..LN1695:
        psllq     xmm3, 32                                      #85.38
..LN1696:
        por       xmm4, xmm3                                    #85.38
..LN1697:
        cvtdq2ps  xmm5, xmm4                                    #85.38
..LN1698:
        rcpps     xmm6, xmm5                                    #85.38
..LN1699:
        mulps     xmm5, xmm6                                    #85.38
..LN1700:
        mulps     xmm5, xmm6                                    #85.38
..LN1701:
        addps     xmm6, xmm6                                    #85.38
..LN1702:
        subps     xmm6, xmm5                                    #85.38
..LN1703:
        movups    XMMWORD PTR [rdi+rdx*4], xmm6                 #85.4
..LN1704:
	.loc    1  84  is_stmt 1
        add       rdx, 4                                        #84.3
..LN1705:
        cmp       esi, ecx                                      #84.3
..LN1706:
        jb        ..B10.29      # Prob 99%                      #84.3
..LN1707:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx esi r8d xmm0 xmm1 xmm2
..B10.31:                       # Preds ..B10.29 ..B10.44 ..B10.43
                                # Execution count [3.33e-01]
..LN1708:
        add       r8d, ecx                                      #84.3
..LN1709:
        movsxd    rdx, r8d                                      #84.3
..LN1710:
        cmp       ecx, eax                                      #84.3
..LN1711:
        jae       ..B10.40      # Prob 0%                       #84.3
..LN1712:
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
..LN1713:
	.loc    1  85  is_stmt 1
        inc       r8d                                           #85.38
..LN1714:
        pxor      xmm0, xmm0                                    #85.38
..LN1715:
        mov       esi, r8d                                      #85.38
..LN1716:
	.loc    1  84  is_stmt 1
        inc       ecx                                           #84.3
..LN1717:
	.loc    1  85  is_stmt 1
        imul      esi, r8d                                      #85.38
..LN1718:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #85.38
..LN1719:
        cvtsi2ss  xmm0, esi                                     #85.38
..LN1720:
        divss     xmm1, xmm0                                    #85.38
..LN1721:
        movss     DWORD PTR [rdi+rdx*4], xmm1                   #85.4
..LN1722:
	.loc    1  84  is_stmt 1
        inc       rdx                                           #84.3
..LN1723:
        cmp       ecx, eax                                      #84.3
..LN1724:
        jb        ..B10.33      # Prob 99%                      #84.3
..LN1725:
        jmp       ..B10.40      # Prob 100%                     #84.3
..LN1726:
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.35:                       # Preds ..B10.18
                                # Execution count [0.00e+00]
..LN1727:
	.loc    1  88  is_stmt 1
        test      esi, esi                                      #88.3
..LN1728:
        jne       ..B10.37      # Prob 50%                      #88.3
..LN1729:
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B10.36:                       # Preds ..B10.35
                                # Execution count [3.33e-01]
..LN1730:
	.loc    1  89  is_stmt 1
        movss     DWORD PTR [rdi], xmm0                         #89.4
..LN1731:
        jmp       ..B10.40      # Prob 100%                     #89.4
..LN1732:
                                # LOE rbx rbp r12 r13 r14 r15
..B10.37:                       # Preds ..B10.35
                                # Execution count [3.33e-01]
..LN1733:
	.loc    1  88  is_stmt 1
        xor       r8d, r8d                                      #88.3
..LN1734:
        lea       rax, QWORD PTR [31999+rcx]                    #88.23
..LN1735:
        cmp       rcx, -1                                       #88.23
..LN1736:
        je        ..B10.49      # Prob 2%                       #88.23
..LN1737:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B10.50:                       # Preds ..B10.37
                                # Execution count [3.33e-01]
..LN1738:
        movsxd    rdx, eax                                      #88.23
..LN1739:
        cmp       rdx, rax                                      #88.23
..LN1740:
        jne       ..B10.49      # Prob 2%                       #88.23
..LN1741:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 esi r8d xmm0
..B10.48:                       # Preds ..B10.50
                                # Execution count [3.33e-01]
..LN1742:
        cdq                                                     #88.23
..LN1743:
        idiv      esi                                           #88.23
..LN1744:
        movsxd    rax, eax                                      #88.23
..LN1745:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
..B10.47:                       # Preds ..B10.49 ..B10.48
                                # Execution count [3.33e-01]
..LN1746:
        mov       edx, eax                                      #88.23
..LN1747:
	.loc    1  89  is_stmt 1
        xor       eax, eax                                      #89.4
..LN1748:
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
..LN1749:
	.loc    1  88  is_stmt 1
        inc       r8d                                           #88.3
..LN1750:
	.loc    1  89  is_stmt 1
        movss     DWORD PTR [rdi+rax*4], xmm0                   #89.4
..LN1751:
	.loc    1  88  is_stmt 1
        add       rax, rcx                                      #88.3
..LN1752:
        cmp       r8d, edx                                      #88.3
..LN1753:
        jl        ..B10.38      # Prob 82%                      #88.3
..LN1754:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 edx r8d xmm0
..B10.40:                       # Preds ..B10.38 ..B10.33 ..B10.16 ..B10.31 ..B10.9
                                #       ..B10.14 ..B10.26 ..B10.36
                                # Execution count [1.00e+00]
..LN1755:
	.loc    1  92  is_stmt 1
        xor       eax, eax                                      #92.9
..LN1756:
	.loc    1  92  epilogue_begin  is_stmt 1
        ret                                                     #92.9
..LN1757:
                                # LOE
..B10.41:                       # Preds ..B10.3
                                # Execution count [3.33e-02]: Infreq
..LN1758:
	.loc    1  80  is_stmt 1
        xor       r8d, r8d                                      #80.3
..LN1759:
        mov       edx, 32000                                    #80.3
..LN1760:
        xor       ecx, ecx                                      #80.3
..LN1761:
        jmp       ..B10.14      # Prob 100%                     #80.3
..LN1762:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.42:                       # Preds ..B10.10
                                # Execution count [3.33e-02]: Infreq
..LN1763:
        xor       ecx, ecx                                      #80.3
..LN1764:
        jmp       ..B10.14      # Prob 100%                     #80.3
..LN1765:
                                # LOE rbx rbp rdi r12 r13 r14 r15 edx ecx r8d
..B10.43:                       # Preds ..B10.20
                                # Execution count [3.33e-02]: Infreq
..LN1766:
	.loc    1  84  is_stmt 1
        xor       r8d, r8d                                      #84.3
..LN1767:
        mov       eax, 32000                                    #84.3
..LN1768:
        xor       ecx, ecx                                      #84.3
..LN1769:
        jmp       ..B10.31      # Prob 100%                     #84.3
..LN1770:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.44:                       # Preds ..B10.27
                                # Execution count [3.33e-02]: Infreq
..LN1771:
        xor       ecx, ecx                                      #84.3
..LN1772:
        jmp       ..B10.31      # Prob 100%                     #84.3
..LN1773:
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax ecx r8d
..B10.49:                       # Preds ..B10.37 ..B10.50
                                # Execution count [3.33e-01]: Infreq
..LN1774:
	.loc    1  88  is_stmt 1
        cqo                                                     #88.23
..LN1775:
        idiv      rcx                                           #88.23
..LN1776:
        jmp       ..B10.47      # Prob 100%                     #88.23
        .align    16,0x90
..LN1777:
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15 r8d xmm0
..LN1778:
	.cfi_endproc
# mark_end;
	.type	set1d,@function
	.size	set1d,.-set1d
..LNset1d.1779:
.LNset1d:
	.data
# -- End  set1d
	.section .text.init, "xa"
..TXTST10:
.L_2__routine_start_init_10:
# -- Begin  init
	.section .text.init, "xa"
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(char *)
init:
# parameter 1(name): rdi
..B11.1:                        # Preds ..B11.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.466:
..L467:
                                                        #174.1
..LN1780:
	.loc    1  174  is_stmt 1
        push      rsi                                           #174.1
	.cfi_def_cfa_offset 16
..LN1781:
	.loc    1  185  prologue_end  is_stmt 1
        lea       rsi, QWORD PTR [.L_2__STRING.3(%rip)]         #185.7
..LN1782:
	.loc    1  174  is_stmt 1
        mov       rcx, rdi                                      #174.1
..L470:                                                         #185.7
..LN1783:
	.loc    1  185  is_stmt 1
        mov       dl, BYTE PTR [rdi]                            #185.7
..LN1784:
        cmp       dl, BYTE PTR [rsi]                            #185.7
..LN1785:
        jne       ..L472        # Prob 50%                      #185.7
..LN1786:
        test      dl, dl                                        #185.7
..LN1787:
        je        ..L471        # Prob 50%                      #185.7
..LN1788:
        mov       dl, BYTE PTR [1+rdi]                          #185.7
..LN1789:
        cmp       dl, BYTE PTR [1+rsi]                          #185.7
..LN1790:
        jne       ..L472        # Prob 50%                      #185.7
..LN1791:
        add       rdi, 2                                        #185.7
..LN1792:
        add       rsi, 2                                        #185.7
..LN1793:
        test      dl, dl                                        #185.7
..LN1794:
        jne       ..L470        # Prob 50%                      #185.7
..L471:                                                         #
..LN1795:
        xor       eax, eax                                      #185.7
..LN1796:
        jmp       ..L473        # Prob 100%                     #185.7
..L472:                                                         #
..LN1797:
        sbb       eax, eax                                      #185.7
..LN1798:
        or        eax, 1                                        #185.7
..L473:                                                         #
..LN1799:
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B11.14:                       # Preds ..B11.1
                                # Execution count [1.00e+00]
..LN1800:
        test      eax, eax                                      #185.7
..LN1801:
        je        ..B11.7       # Prob 22%                      #185.7
..LN1802:
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B11.2:                        # Preds ..B11.14
                                # Execution count [7.80e-01]
..LN1803:
	.loc    1  190  is_stmt 1
        mov       rdi, rcx                                      #190.14
..LN1804:
        lea       rsi, QWORD PTR [.L_2__STRING.2(%rip)]         #190.14
..L474:                                                         #190.14
..LN1805:
        mov       dl, BYTE PTR [rdi]                            #190.14
..LN1806:
        cmp       dl, BYTE PTR [rsi]                            #190.14
..LN1807:
        jne       ..L476        # Prob 50%                      #190.14
..LN1808:
        test      dl, dl                                        #190.14
..LN1809:
        je        ..L475        # Prob 50%                      #190.14
..LN1810:
        mov       dl, BYTE PTR [1+rdi]                          #190.14
..LN1811:
        cmp       dl, BYTE PTR [1+rsi]                          #190.14
..LN1812:
        jne       ..L476        # Prob 50%                      #190.14
..LN1813:
        add       rdi, 2                                        #190.14
..LN1814:
        add       rsi, 2                                        #190.14
..LN1815:
        test      dl, dl                                        #190.14
..LN1816:
        jne       ..L474        # Prob 50%                      #190.14
..L475:                                                         #
..LN1817:
        xor       eax, eax                                      #190.14
..LN1818:
        jmp       ..L477        # Prob 100%                     #190.14
..L476:                                                         #
..LN1819:
        sbb       eax, eax                                      #190.14
..LN1820:
        or        eax, 1                                        #190.14
..L477:                                                         #
..LN1821:
                                # LOE rcx rbx rbp r12 r13 r14 r15 eax
..B11.15:                       # Preds ..B11.2
                                # Execution count [7.80e-01]
..LN1822:
        test      eax, eax                                      #190.14
..LN1823:
        je        ..B11.5       # Prob 22%                      #190.14
..LN1824:
                                # LOE rcx rbx rbp r12 r13 r14 r15
..B11.3:                        # Preds ..B11.15
                                # Execution count [6.08e-01]
..LN1825:
	.loc    1  193  is_stmt 1
        mov       rdi, rcx                                      #193.14
..LN1826:
        lea       rsi, QWORD PTR [.L_2__STRING.1(%rip)]         #193.14
..L478:                                                         #193.14
..LN1827:
        mov       dl, BYTE PTR [rdi]                            #193.14
..LN1828:
        cmp       dl, BYTE PTR [rsi]                            #193.14
..LN1829:
        jne       ..L480        # Prob 50%                      #193.14
..LN1830:
        test      dl, dl                                        #193.14
..LN1831:
        je        ..L479        # Prob 50%                      #193.14
..LN1832:
        mov       dl, BYTE PTR [1+rdi]                          #193.14
..LN1833:
        cmp       dl, BYTE PTR [1+rsi]                          #193.14
..LN1834:
        jne       ..L480        # Prob 50%                      #193.14
..LN1835:
        add       rdi, 2                                        #193.14
..LN1836:
        add       rsi, 2                                        #193.14
..LN1837:
        test      dl, dl                                        #193.14
..LN1838:
        jne       ..L478        # Prob 50%                      #193.14
..L479:                                                         #
..LN1839:
        xor       eax, eax                                      #193.14
..LN1840:
        jmp       ..L481        # Prob 100%                     #193.14
..L480:                                                         #
..LN1841:
        sbb       eax, eax                                      #193.14
..LN1842:
        or        eax, 1                                        #193.14
..L481:                                                         #
..LN1843:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B11.16:                       # Preds ..B11.3
                                # Execution count [6.08e-01]
..LN1844:
        test      eax, eax                                      #193.14
..LN1845:
        jne       ..B11.11      # Prob 78%                      #193.14
..LN1846:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.4:                        # Preds ..B11.16
                                # Execution count [1.34e-01]
..LN1847:
	.loc    1  194  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.7(%rip)]  #194.3
..LN1848:
        mov       esi, 1                                        #194.3
..LN1849:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]             #194.3
..___tag_value_init.482:
..LN1850:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #194.3
..___tag_value_init.483:
..LN1851:
        jmp       ..B11.11      # Prob 100%                     #194.3
..LN1852:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.5:                        # Preds ..B11.15
                                # Execution count [1.72e-01]
..LN1853:
	.loc    1  191  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]  #191.3
..LN1854:
        mov       esi, 1                                        #191.3
..LN1855:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]             #191.3
..___tag_value_init.484:
..LN1856:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #191.3
..___tag_value_init.485:
..LN1857:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.6:                        # Preds ..B11.5
                                # Execution count [1.72e-01]
..LN1858:
	.loc    1  192  is_stmt 1
        mov       esi, -2                                       #192.3
..LN1859:
        pxor      xmm0, xmm0                                    #192.3
..LN1860:
        mov       rdi, QWORD PTR [b@GOTPCREL(%rip)]             #192.3
..___tag_value_init.486:
..LN1861:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #192.3
..___tag_value_init.487:
..LN1862:
        jmp       ..B11.11      # Prob 100%                     #192.3
..LN1863:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.7:                        # Preds ..B11.14
                                # Execution count [2.20e-01]
..LN1864:
	.loc    1  186  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]  #186.3
..LN1865:
        mov       esi, 1                                        #186.3
..LN1866:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]             #186.3
..___tag_value_init.488:
..LN1867:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #186.3
..___tag_value_init.489:
..LN1868:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.8:                        # Preds ..B11.7
                                # Execution count [2.20e-01]
..LN1869:
	.loc    1  187  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]  #187.3
..LN1870:
        mov       esi, 1                                        #187.3
..LN1871:
        mov       rdi, QWORD PTR [b@GOTPCREL(%rip)]             #187.3
..___tag_value_init.490:
..LN1872:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #187.3
..___tag_value_init.491:
..LN1873:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.9:                        # Preds ..B11.8
                                # Execution count [2.20e-01]
..LN1874:
	.loc    1  188  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]  #188.3
..LN1875:
        mov       esi, 1                                        #188.3
..LN1876:
        mov       rdi, QWORD PTR [c@GOTPCREL(%rip)]             #188.3
..___tag_value_init.492:
..LN1877:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #188.3
..___tag_value_init.493:
..LN1878:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.10:                       # Preds ..B11.9
                                # Execution count [2.20e-01]
..LN1879:
	.loc    1  189  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]  #189.3
..LN1880:
        mov       esi, 1                                        #189.3
..LN1881:
        mov       rdi, QWORD PTR [d@GOTPCREL(%rip)]             #189.3
..___tag_value_init.494:
..LN1882:
#       set1d(float *, float, int)
        call      set1d@PLT                                     #189.3
..___tag_value_init.495:
..LN1883:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.11:                       # Preds ..B11.10 ..B11.6 ..B11.4 ..B11.16
                                # Execution count [1.00e+00]
..LN1884:
	.loc    1  197  is_stmt 1
        xor       eax, eax                                      #197.9
..LN1885:
	.loc    1  197  epilogue_begin  is_stmt 1
        pop       rcx                                           #197.9
	.cfi_def_cfa_offset 8
..LN1886:
        ret                                                     #197.9
        .align    16,0x90
..LN1887:
                                # LOE
..LN1888:
	.cfi_endproc
# mark_end;
	.type	init,@function
	.size	init,.-init
..LNinit.1889:
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
.L_2__STRING.16:
	.long	842281555
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.16,@object
	.size	.L_2__STRING.16,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.long	169895461
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,5
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	892809843
	.word	32
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	926036563
	.long	622856501
	.long	543568430
	.word	2313
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	842084723
	.word	32
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.10:
	.long	842084691
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	842085235
	.word	32
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	842085203
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	925971315
	.word	32
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	925971283
	.long	774184969
	.long	153118258
	.word	9
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,14
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
	.long	3
	.long	..L501 - ..L500
	.long	48
	.long	..L502 - ..L500
	.long	42
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
	.word	400
..L503:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	13
	.long	..L504 - ..L503
	.long	48
	.long	..L505 - ..L503
	.long	208
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L71
	.long	28
	.long	4
	.quad	..L72
	.long	28
	.long	23
	.quad	..L73
	.long	28
	.long	42
	.quad	..L74
	.long	28
	.long	56
	.quad	..L75
	.long	28
	.long	68
	.quad	..L76
	.long	28
	.long	87
	.quad	..L77
	.long	28
	.long	106
	.quad	..L78
	.long	28
	.long	125
	.quad	..L79
	.long	28
	.long	139
	.quad	..L80
	.long	28
	.long	151
	.quad	..L81
	.long	28
	.long	170
	.quad	..L82
	.long	28
	.long	189
..L504:
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
..L505:
	.long	42209283
	.long	-2139090926
	.long	-2139062144
	.long	-2139062144
	.long	-2031564404
	.long	302094757
	.long	-2139062256
	.long	-2138734464
	.long	-1937735552
	.long	-456723735
	.long	269288086
	.long	-2139062144
	.long	-2139062144
	.long	130580608
	.long	-2139090933
	.long	-2139062144
	.long	75530368
	.long	-2139090926
	.long	-2055176064
	.long	-2105507712
	.long	-1982470016
	.long	302162085
	.long	-2139062256
	.long	-2139062144
	.long	-2138406784
	.long	-993526096
	.long	269615776
	.long	-2139062144
	.long	-2139062144
	.long	-1333753728
	.long	-1597716482
	.long	-2146431742
	.long	-2139062144
	.long	-2139062144
	.long	185059456
	.long	-2139062256
	.long	-2139062144
	.long	302284928
	.long	-2139062256
	.long	-2138734464
	.long	-2138931072
	.long	-1517694080
	.long	269615776
	.long	-2139062144
	.long	-2139062144
	.long	-1870624128
	.long	-1597716483
	.long	-2146430462
	.long	-2139062144
	.long	-2139062144
	.long	-40861560
	.long	44090567
..L506:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	8
	.long	..L507 - ..L506
	.long	48
	.long	..L508 - ..L506
	.long	117
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L102
	.long	28
	.long	4
	.quad	..L103
	.long	28
	.long	18
	.quad	..L104
	.long	28
	.long	32
	.quad	..L105
	.long	28
	.long	44
	.quad	..L106
	.long	28
	.long	63
	.quad	..L107
	.long	28
	.long	82
	.quad	..L108
	.long	28
	.long	101
..L507:
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
..L508:
	.long	42209283
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269289416
	.long	-1937735520
	.long	-2139062144
	.long	130580608
	.long	-2136993781
	.long	-2139059072
	.long	75530625
	.long	-2136993774
	.long	-2055172992
	.long	-2105507455
	.long	-929267582
	.long	302160036
	.long	-2139054064
	.long	-2122284916
	.long	-2104852351
	.long	-993537152
	.long	269615772
	.long	-1937735520
	.long	-2122219392
	.long	-2139060096
	.long	-1664825389
	.long	-1609560318
	.long	-2137751424
	.long	-2138996352
	.long	-2138984320
	.byte	64
..L509:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	3
	.long	..L510 - ..L509
	.long	48
	.long	..L511 - ..L509
	.long	42
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L144
	.long	28
	.long	4
	.quad	..L145
	.long	28
	.long	23
..L510:
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
..L511:
	.long	42209283
	.long	-2139090926
	.long	-2139062144
	.long	-2105507712
	.long	-2001016704
	.long	302162821
	.long	-2134863856
	.long	-2138734464
	.long	-2138931072
	.long	-2054637112
	.word	673
..L512:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	5
	.long	..L513 - ..L512
	.long	48
	.long	..L514 - ..L512
	.long	75
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L280
	.long	28
	.long	4
	.quad	..L281
	.long	28
	.long	18
	.quad	..L282
	.long	28
	.long	37
	.quad	..L284
	.long	28
	.long	56
..L513:
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
..L514:
	.long	42209283
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269617096
	.long	-1937719167
	.long	-2139059840
	.long	-2139061632
	.long	-2138732344
	.long	-2146430462
	.long	-2137751424
	.long	-2139062139
	.long	-1024950142
	.long	41977224
	.long	-2139090926
	.long	-2134862720
	.long	-1971289984
	.long	-930578304
	.word	32901
	.byte	2
..L515:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	4
	.long	..L516 - ..L515
	.long	48
	.long	..L517 - ..L515
	.long	59
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L328
	.long	28
	.long	4
	.quad	..L329
	.long	28
	.long	21
	.quad	..L332
	.long	28
	.long	40
..L516:
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
..L517:
	.long	42209283
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
	.word	32901
	.byte	2
..L518:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	3
	.long	..L519 - ..L518
	.long	48
	.long	..L520 - ..L518
	.long	37
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L375
	.long	28
	.long	4
	.quad	..L376
	.long	28
	.long	18
..L519:
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
..L520:
	.long	42209283
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269617096
	.long	-2139062144
	.long	-2139059840
	.long	-796884352
	.long	-1631221590
	.byte	2
..L521:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	3
	.long	..L522 - ..L521
	.long	48
	.long	..L523 - ..L521
	.long	37
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L421
	.long	28
	.long	4
	.quad	..L422
	.long	28
	.long	18
..L522:
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
..L523:
	.long	42209283
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269617096
	.long	-2139062144
	.long	-2139059840
	.long	-1602190720
	.long	-1631221611
	.byte	2
..L524:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	10
	.long	..L525 - ..L524
	.long	48
	.long	..L526 - ..L524
	.long	161
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L452
	.long	28
	.long	4
	.quad	..L453
	.long	28
	.long	16
	.quad	..L454
	.long	28
	.long	35
	.quad	..L455
	.long	28
	.long	54
	.quad	..L456
	.long	28
	.long	73
	.quad	..L457
	.long	28
	.long	85
	.quad	..L458
	.long	28
	.long	104
	.quad	..L459
	.long	28
	.long	123
	.quad	..L460
	.long	28
	.long	142
..L525:
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
..L526:
	.long	42209283
	.long	-2139090933
	.long	-2139062144
	.long	75530368
	.long	-2139090926
	.long	-1988067200
	.long	-2105507712
	.long	-2001610624
	.long	302159557
	.long	-2139062256
	.long	-2139062144
	.long	-2138406784
	.long	-1530362424
	.long	269615770
	.long	-2139062144
	.long	-2139062144
	.long	-931100544
	.long	-1700476795
	.long	-2146432254
	.long	-2139062144
	.long	-2139062144
	.long	-2146430460
	.long	-2139062144
	.long	-2139062135
	.long	-1395097470
	.long	43435400
	.long	-2139090926
	.long	-2139062144
	.long	-1971289984
	.long	-930840448
	.long	302160548
	.long	-2139062256
	.long	-2139062144
	.long	-2138537856
	.long	-1530362752
	.long	269615770
	.long	-2101837696
	.long	-2139060864
	.long	-510885760
	.long	-1796946187
	.byte	10
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
	.4byte 0x00000a65
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
	.4byte .debug_str+0x28
	.4byte .debug_str+0x94
//	DW_AT_language:
	.byte 0x01
//	DW_AT_use_UTF8:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte 0x0000000000000000
//	DW_AT_ranges:
	.4byte .debug_ranges_seg
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
	.4byte 0x0000002f
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1b5
	.4byte .debug_str+0x1b5
//	DW_AT_low_pc:
	.8byte ..L450
//	DW_AT_high_pc:
	.8byte ..LNset1d.1779-..L450
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000714
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
	.4byte 0x0000070d
//	DW_AT_name:
	.4byte .debug_str+0x14a
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x4d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x150
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x50
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1418
//	DW_AT_high_pc:
	.8byte ..LN1536
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x50
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x54
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1558
//	DW_AT_high_pc:
	.8byte ..LN1722
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x54
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x58
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1730
//	DW_AT_high_pc:
	.8byte ..LNset1d.1779
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x58
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x5f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x144
	.4byte .debug_str+0x144
//	DW_AT_low_pc:
	.8byte ..L69
//	DW_AT_high_pc:
	.8byte ..LNset2d.410-..L69
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x5f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000719
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
	.4byte 0x0000070d
//	DW_AT_name:
	.4byte .debug_str+0x14a
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x5f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x150
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x65
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN299
//	DW_AT_high_pc:
	.8byte ..LNset2d.410
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x65
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN307
//	DW_AT_high_pc:
	.8byte ..LN381
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x66
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x6b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN201
//	DW_AT_high_pc:
	.8byte ..LN401
//	DW_TAG_variable:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0x6b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_location:
	.2byte 0x5901
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x6c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN201
//	DW_AT_high_pc:
	.8byte ..LN289
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x6c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x71
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN182
//	DW_AT_high_pc:
	.8byte ..LN199
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x71
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x72
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN185
//	DW_AT_high_pc:
	.8byte ..LN193
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x72
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x0000002f
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
	.4byte .debug_str+0x15c
	.4byte .debug_str+0x15c
//	DW_AT_low_pc:
	.8byte ..L139
//	DW_AT_high_pc:
	.8byte ..LNcheck.995-..L139
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x7a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x162
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x167
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6301
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x16c
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6401
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x171
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6501
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x7f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x176
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x80
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x17b
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x88
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x180
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6701
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x89
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x186
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x8a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x18c
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x93
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x192
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x81
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN642
//	DW_AT_high_pc:
	.8byte ..LN659
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x81
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN691
//	DW_AT_high_pc:
	.8byte ..LN705
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x8b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x8c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN691
//	DW_AT_high_pc:
	.8byte ..LN705
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x8c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x94
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN695
//	DW_AT_high_pc:
	.8byte ..LN706
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x94
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0xad
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1bb
	.4byte .debug_str+0x1bb
//	DW_AT_low_pc:
	.8byte ..L467
//	DW_AT_high_pc:
	.8byte ..LNinit.1889-..L467
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0xad
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000007c9
//	DW_AT_name:
	.4byte .debug_str+0x162
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
	.4byte 0x0000070d
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c5
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1ca
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xb2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00656e6f
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xb3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x006f7774
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb4
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1cf
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb5
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1d5
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb6
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1da
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1df
//	DW_AT_type:
	.4byte 0x0000002f
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
	.8byte ..LNset.174-..L32
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0xc8
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x000006e4
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
	.4byte 0x00000714
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
	.4byte 0x00000714
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
	.8byte ..LN88
//	DW_AT_high_pc:
	.8byte ..LN118
//	DW_TAG_variable:
	.byte 0x08
//	DW_AT_decl_line:
	.byte 0xcb
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
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
	.8byte ..LN153
//	DW_AT_high_pc:
	.8byte ..LN161
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xdd
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0xe7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x19b
	.4byte .debug_str+0x19b
//	DW_AT_low_pc:
	.8byte ..L263
//	DW_AT_high_pc:
	.8byte ..LNs2275.1113-..L263
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfa
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11f
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x129
//	DW_AT_type:
	.4byte 0x00000706
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xf2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1010
//	DW_AT_high_pc:
	.8byte ..LN1085
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
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xf3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1013
//	DW_AT_high_pc:
	.8byte ..LN1085
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xf3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0xf4
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1032
//	DW_AT_high_pc:
	.8byte ..LN1080
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xf4
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006a
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0101
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x1a6
	.4byte .debug_str+0x1a6
//	DW_AT_low_pc:
	.8byte ..L358
//	DW_AT_high_pc:
	.8byte ..LNs312.1302-..L358
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0107
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfa
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0107
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0107
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11f
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0107
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x129
//	DW_AT_type:
	.4byte 0x00000706
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x010d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1ab
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_lexical_block:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x010e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1221
//	DW_AT_high_pc:
	.8byte ..LN1271
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x010e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x0110
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1221
//	DW_AT_high_pc:
	.8byte ..LN1271
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x0110
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x011c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x1b0
	.4byte .debug_str+0x1b0
//	DW_AT_low_pc:
	.8byte ..L404
//	DW_AT_high_pc:
	.8byte ..LNs317.1399-..L404
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfa
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11f
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x129
//	DW_AT_type:
	.4byte 0x00000706
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x012a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0071
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_lexical_block:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x012b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1317
//	DW_AT_high_pc:
	.8byte ..LN1368
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x012b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x012d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1317
//	DW_AT_high_pc:
	.8byte ..LN1368
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x012d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_location:
	.2byte 0x5501
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x0139
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x1a1
	.4byte .debug_str+0x1a1
//	DW_AT_low_pc:
	.8byte ..L311
//	DW_AT_high_pc:
	.8byte ..LNs112.1206-..L311
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x013f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfa
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x013f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x013f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11f
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x013f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x129
//	DW_AT_type:
	.4byte 0x00000706
//	DW_TAG_lexical_block:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x0145
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1128
//	DW_AT_high_pc:
	.8byte ..LN1178
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x0145
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x11
//	DW_AT_decl_line:
	.2byte 0x0147
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN1128
//	DW_AT_high_pc:
	.8byte ..LN1178
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x0147
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x14
//	DW_AT_decl_line:
	.2byte 0x0153
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0xf5
	.4byte .debug_str+0xf5
//	DW_AT_frame_base:
	.2byte 0x7702
	.byte 0x00
//	DW_AT_low_pc:
	.8byte ..L3
//	DW_AT_high_pc:
	.8byte ..LNmain.69-..L3
	.byte 0x01
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x0154
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xfa
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_AT_location:
	.2byte 0x5301
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x0154
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_AT_location:
	.2byte 0x5001
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0154
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11f
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0154
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x129
//	DW_AT_type:
	.4byte 0x00000706
//	DW_TAG_variable:
	.byte 0x12
//	DW_AT_decl_line:
	.2byte 0x0157
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x7069
	.byte 0x00
//	DW_AT_type:
	.4byte 0x000006e4
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x0158
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3173
	.byte 0x00
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x00
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x0158
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x3273
	.byte 0x00
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x04
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_typedef:
	.byte 0x16
//	DW_AT_decl_line:
	.byte 0x3b
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0x102
//	DW_AT_type:
	.4byte 0x000006f4
//	DW_TAG_typedef:
	.byte 0x16
//	DW_AT_decl_line:
	.byte 0x87
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0x10a
//	DW_AT_type:
	.4byte 0x000006ff
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x114
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x137
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x13e
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x0000071e
//	DW_TAG_array_type:
	.byte 0x18
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_byte_size:
	.2byte 0x02d0
//	DW_TAG_subrange_type:
	.byte 0x19
//	DW_AT_upper_bound:
	.byte 0xb3
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0e
//	DW_AT_decl_line:
	.2byte 0x015f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_AT_name:
	.4byte .debug_str+0x157
	.4byte .debug_str+0x157
//	DW_AT_low_pc:
	.8byte ..L89
//	DW_AT_high_pc:
	.8byte ..LNs242.636-..L89
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x02
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_name:
	.2byte 0x3173
	.byte 0x00
//	DW_AT_location:
	.2byte 0x6101
//	DW_TAG_formal_parameter:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x02
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_type:
	.4byte 0x0000070d
//	DW_AT_name:
	.2byte 0x3273
	.byte 0x00
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0xfa
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x119
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x11f
//	DW_AT_type:
	.4byte 0x000006e9
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x129
//	DW_AT_type:
	.4byte 0x00000706
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x0d
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_low_pc:
	.8byte ..LN423
//	DW_AT_high_pc:
	.8byte ..LNs242.636
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x0d
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.2byte 0x6c6e
	.byte 0x00
//	DW_AT_type:
	.4byte 0x0000002f
//	DW_TAG_lexical_block:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x0e
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_low_pc:
	.8byte ..LN423
//	DW_AT_high_pc:
	.8byte ..LN597
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x0e
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.2byte 0x0069
//	DW_AT_type:
	.4byte 0x0000002f
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x000007ce
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x01
//	DW_AT_encoding:
	.byte 0x06
//	DW_AT_name:
	.4byte .debug_str+0x1c0
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0058
//	DW_AT_type:
	.4byte 0x000007e9
//	DW_AT_location:
	.2byte 0x0309
	.8byte X
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x0000080a
//	DW_AT_location:
	.2byte 0x0309
	.8byte Y
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x0000082b
//	DW_AT_location:
	.2byte 0x0309
	.8byte Z
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x0000084c
//	DW_AT_location:
	.2byte 0x0309
	.8byte U
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x0000086d
//	DW_AT_location:
	.2byte 0x0309
	.8byte V
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte .debug_str+0x195
//	DW_AT_type:
	.4byte 0x00000890
//	DW_AT_location:
	.2byte 0x0309
	.8byte array
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x000008b1
//	DW_AT_location:
	.2byte 0x0309
	.8byte x
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte .debug_str+0x1e5
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte .debug_str+0x1ea
//	DW_AT_type:
	.4byte 0x0000002f
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
	.4byte 0x000008fe
//	DW_AT_location:
	.2byte 0x0309
	.8byte a
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x0000091f
//	DW_AT_location:
	.2byte 0x0309
	.8byte b
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x00000940
//	DW_AT_location:
	.2byte 0x0309
	.8byte c
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x00000961
//	DW_AT_location:
	.2byte 0x0309
	.8byte d
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x00000982
//	DW_AT_location:
	.2byte 0x0309
	.8byte e
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x000009a4
//	DW_AT_location:
	.2byte 0x0309
	.8byte aa
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x000009c7
//	DW_AT_location:
	.2byte 0x0309
	.8byte bb
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x000009ea
//	DW_AT_location:
	.2byte 0x0309
	.8byte cc
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte 0x00000a0d
//	DW_AT_location:
	.2byte 0x0309
	.8byte tt
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000070d
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
	.4byte .debug_str+0x1f3
//	DW_AT_type:
	.4byte 0x00000a31
//	DW_AT_location:
	.2byte 0x0309
	.8byte indx
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x0000002f
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
	.4byte 0x00000714
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
	.4byte 0x00000714
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
	.byte 0x55
	.byte 0x17
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
	.byte 0x0f
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
	.byte 0x10
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
	.byte 0x11
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
	.byte 0x12
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
	.8byte 0x32747365742f7265
	.byte 0x00
	.4byte 0x32343273
	.2byte 0x632e
	.byte 0x00
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
	.8byte 0x616d2d20532d2063
	.8byte 0x6c65746e693d6d73
	.8byte 0x32343273206f2d20
	.8byte 0x66662d20732e315f
	.8byte 0x2d6e6f6974636e75
	.8byte 0x736e6f6974636573
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
// -- Begin DWARF2 SEGMENT .debug_ranges
	.section .debug_ranges
.debug_ranges_seg:
	.align 1
	.8byte ..LN0
	.8byte ..LNmain.69
	.8byte ..LN70
	.8byte ..LNset.174
	.8byte ..LN175
	.8byte ..LNset2d.410
	.8byte ..LN411
	.8byte ..LNs242.636
	.8byte ..LN637
	.8byte ..LNcheck.995
	.8byte ..LN996
	.8byte ..LNs2275.1113
	.8byte ..LN1114
	.8byte ..LNs112.1206
	.8byte ..LN1207
	.8byte ..LNs312.1302
	.8byte ..LN1303
	.8byte ..LNs317.1399
	.8byte ..LN1400
	.8byte ..LNset1d.1779
	.8byte ..LN1780
	.8byte ..LNinit.1889
	.8byte 0x0000000000000000
	.8byte 0x0000000000000000
	.section .text
.LNDBG_TXe:
# End
