	.section .text
.LNDBG_TX:
	.intel_syntax noprefix
	.file "s242.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
       .align    16,0x90
	.globl main
main:
..B1.1:
	.cfi_startproc
..___tag_value_main.2:
..L3:

..LN0:
	.file   1 "tsc.c"
	.loc    1  339  is_stmt 1
        push      rbp
	.cfi_def_cfa_offset 16
..LN1:
        mov       rbp, rsp
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        and       rsp, -128
..LN3:
        push      rbx
..LN4:
        sub       rsp, 120
..LN5:
        xor       esi, esi
..LN6:
        mov       edi, 3
..LN7:
        call      __intel_new_feature_proc_init@PLT
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
..LN8:
..B1.19:
..LN9:
        stmxcsr   DWORD PTR [rsp]
..LN10:
	.loc    1  343  prologue_end  is_stmt 1
        mov       edi, 16
..LN11:
        mov       esi, 128000
..LN12:
	.loc    1  339  is_stmt 1
        or        DWORD PTR [rsp], 32832
..LN13:
        ldmxcsr   DWORD PTR [rsp]
..LN14:
	.loc    1  343  is_stmt 1
        call      memalign@PLT
..LN15:
..B1.2:
..LN16:
	.loc    1  345  is_stmt 1
        mov       rdi, rax
..LN17:
        lea       rsi, QWORD PTR [rsp]
..LN18:
        lea       rdx, QWORD PTR [4+rsp]
..___tag_value_main.9:
..LN19:
        call      set@PLT
..___tag_value_main.10:
..LN20:
..B1.3:
..LN21:
	.loc    1  346  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_0(%rip)]
..LN22:
        call      puts@PLT
..LN23:
..B1.4:
..LN24:
	.loc    1  348  is_stmt 1
        call      clock@PLT
..LN25:
..B1.20:
..LN26:
        mov       rbx, rax
..LN27:
..B1.5:
..LN28:
	.loc    1  350  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_1(%rip)]
..LN29:
        call      puts@PLT
..LN30:
..B1.6:
..LN31:
	.loc    1  351  is_stmt 1
        pxor      xmm0, xmm0
..LN32:
        pxor      xmm1, xmm1
..LN33:
        cvtss2sd  xmm0, DWORD PTR [rsp]
..LN34:
        cvtss2sd  xmm1, DWORD PTR [4+rsp]
..___tag_value_main.11:
..LN35:
        call      s242@PLT
..___tag_value_main.12:
..LN36:
..B1.7:
..___tag_value_main.13:
..LN37:
	.loc    1  352  is_stmt 1
        call      s2275@PLT
..___tag_value_main.14:
..LN38:
..B1.8:
..LN39:
	.loc    1  355  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_2(%rip)]
..LN40:
        call      puts@PLT
..LN41:
..B1.9:
..___tag_value_main.15:
..LN42:
	.loc    1  356  is_stmt 1
        call      s112@PLT
..___tag_value_main.16:
..LN43:
..B1.10:
..LN44:
	.loc    1  359  is_stmt 1
        lea       rdi, QWORD PTR [il0_peep_printf_format_3(%rip)]
..LN45:
        call      puts@PLT
..LN46:
..B1.11:
..___tag_value_main.17:
..LN47:
	.loc    1  360  is_stmt 1
        call      s312@PLT
..___tag_value_main.18:
..LN48:
..B1.12:
..___tag_value_main.19:
..LN49:
	.loc    1  361  is_stmt 1
        call      s317@PLT
..___tag_value_main.20:
..LN50:
..B1.13:
..LN51:
	.loc    1  363  is_stmt 1
        call      clock@PLT
..LN52:
..B1.14:
..LN53:
	.loc    1  365  is_stmt 1
        sub       rax, rbx
..LN54:
        pxor      xmm0, xmm0
..LN55:
        cvtsi2sd  xmm0, rax
..LN56:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]
..LN57:
        lea       rdi, QWORD PTR [.L_2__STRING.15(%rip)]
..LN58:
        mov       eax, 1
..___tag_value_main.21:
..LN59:
        call      printf@PLT
..___tag_value_main.22:
..LN60:
..B1.15:
..LN61:
	.loc    1  367  is_stmt 1
        xor       eax, eax
..LN62:
	.loc    1  367  epilogue_begin  is_stmt 1
        add       rsp, 120
	.cfi_restore 3
..LN63:
        pop       rbx
..LN64:
        mov       rsp, rbp
..LN65:
        pop       rbp
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN66:
        ret       
        .align    16,0x90
..LN67:
..LN68:
	.cfi_endproc
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
	.text
.L_2__routine_start_set_1:
# -- Begin  set
	.text
       .align    16,0x90
	.globl set
set:
# parameter 1(ip): rdi
# parameter 2(s1): rsi
# parameter 3(s2): rdx
..B2.1:
	.cfi_startproc
..___tag_value_set.31:
..L32:

..LN70:
	.loc    1  200  is_stmt 1
        push      r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
..LN71:
        push      rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
..LN72:
        push      rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
..LN73:
	.loc    1  200  prologue_end  is_stmt 1
        mov       rbx, rsi
..LN74:
        mov       rbp, rdi
..LN75:
	.loc    1  201  is_stmt 1
        mov       edi, 16
..LN76:
        mov       esi, 128000
..LN77:
	.loc    1  200  is_stmt 1
        mov       r15, rdx
..LN78:
	.loc    1  201  is_stmt 1
        call      memalign@PLT
..LN79:
..B2.2:
..LN80:
        mov       rdx, QWORD PTR [xx@GOTPCREL(%rip)]
..LN81:
	.loc    1  202  is_stmt 1
        mov       edi, 10
..LN82:
	.loc    1  201  is_stmt 1
        mov       QWORD PTR [rdx], rax
..LN83:
	.loc    1  202  is_stmt 1
        call      putchar@PLT
..LN84:
..B2.3:
..LN85:
	.loc    1  203  is_stmt 1
        xor       edx, edx
..LN86:
        xor       eax, eax
        .align    16,0x90
..LN87:
..B2.4:
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
        movsxd    rax, eax
..LN89:
	.loc    1  203  is_stmt 1
        inc       edx
..LN90:
	.loc    1  204  is_stmt 1
        lea       ecx, DWORD PTR [4+rax]
..LN91:
	.loc    1  205  is_stmt 1
        lea       esi, DWORD PTR [2+rax]
..LN92:
	.loc    1  207  is_stmt 1
        lea       edi, DWORD PTR [3+rax]
..LN93:
	.loc    1  204  is_stmt 1
        mov       DWORD PTR [rbp+rax*4], ecx
..LN94:
	.loc    1  208  is_stmt 1
        lea       r8d, DWORD PTR [1+rax]
..LN95:
	.loc    1  205  is_stmt 1
        mov       DWORD PTR [4+rbp+rax*4], esi
..LN96:
	.loc    1  204  is_stmt 1
        lea       r9d, DWORD PTR [9+rax]
..LN97:
	.loc    1  206  is_stmt 1
        mov       DWORD PTR [8+rbp+rax*4], eax
..LN98:
	.loc    1  205  is_stmt 1
        lea       r10d, DWORD PTR [7+rax]
..LN99:
	.loc    1  207  is_stmt 1
        mov       DWORD PTR [12+rbp+rax*4], edi
..LN100:
	.loc    1  204  is_stmt 1
        lea       r11d, DWORD PTR [5+rax]
..LN101:
	.loc    1  208  is_stmt 1
        mov       DWORD PTR [16+rbp+rax*4], r8d
..LN102:
	.loc    1  207  is_stmt 1
        lea       ecx, DWORD PTR [8+rax]
..LN103:
	.loc    1  204  is_stmt 1
        mov       DWORD PTR [20+rbp+rax*4], r9d
..LN104:
	.loc    1  208  is_stmt 1
        lea       esi, DWORD PTR [6+rax]
..LN105:
	.loc    1  205  is_stmt 1
        mov       DWORD PTR [24+rbp+rax*4], r10d
..LN106:
	.loc    1  206  is_stmt 1
        mov       DWORD PTR [28+rbp+rax*4], r11d
..LN107:
	.loc    1  207  is_stmt 1
        mov       DWORD PTR [32+rbp+rax*4], ecx
..LN108:
	.loc    1  208  is_stmt 1
        mov       DWORD PTR [36+rbp+rax*4], esi
..LN109:
	.loc    1  203  is_stmt 1
        add       eax, 10
..LN110:
        cmp       edx, 3200
..LN111:
        jb        ..B2.4
..LN112:
..B2.5:
..LN113:
	.loc    1  212  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN114:
        mov       esi, 1
..LN115:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]
..___tag_value_set.41:
..LN116:
        call      set1d@PLT
..___tag_value_set.42:
..LN117:
..B2.6:
..LN118:
	.loc    1  213  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN119:
        mov       esi, 1
..LN120:
        mov       rdi, QWORD PTR [b@GOTPCREL(%rip)]
..___tag_value_set.43:
..LN121:
        call      set1d@PLT
..___tag_value_set.44:
..LN122:
..B2.7:
..LN123:
	.loc    1  214  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN124:
        mov       esi, 1
..LN125:
        mov       rdi, QWORD PTR [c@GOTPCREL(%rip)]
..___tag_value_set.45:
..LN126:
        call      set1d@PLT
..___tag_value_set.46:
..LN127:
..B2.8:
..LN128:
	.loc    1  215  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN129:
        mov       esi, 1
..LN130:
        mov       rdi, QWORD PTR [d@GOTPCREL(%rip)]
..___tag_value_set.47:
..LN131:
        call      set1d@PLT
..___tag_value_set.48:
..LN132:
..B2.9:
..LN133:
	.loc    1  216  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN134:
        mov       esi, 1
..LN135:
        mov       rdi, QWORD PTR [e@GOTPCREL(%rip)]
..___tag_value_set.49:
..LN136:
        call      set1d@PLT
..___tag_value_set.50:
..LN137:
..B2.10:
..LN138:
	.loc    1  217  is_stmt 1
        mov       esi, -1
..LN139:
        pxor      xmm0, xmm0
..LN140:
        mov       rdi, QWORD PTR [aa@GOTPCREL(%rip)]
..___tag_value_set.51:
..LN141:
        call      set2d@PLT
..___tag_value_set.52:
..LN142:
..B2.11:
..LN143:
	.loc    1  218  is_stmt 1
        mov       esi, -1
..LN144:
        pxor      xmm0, xmm0
..LN145:
        mov       rdi, QWORD PTR [bb@GOTPCREL(%rip)]
..___tag_value_set.53:
..LN146:
        call      set2d@PLT
..___tag_value_set.54:
..LN147:
..B2.12:
..LN148:
	.loc    1  219  is_stmt 1
        mov       esi, -1
..LN149:
        pxor      xmm0, xmm0
..LN150:
        mov       rdi, QWORD PTR [cc@GOTPCREL(%rip)]
..___tag_value_set.55:
..LN151:
        call      set2d@PLT
..___tag_value_set.56:
..LN152:
..B2.13:
..LN153:
	.loc    1  222  is_stmt 1
        mov       rax, QWORD PTR [indx@GOTPCREL(%rip)]
..LN154:
	.loc    1  221  is_stmt 1
        xor       edx, edx
..LN155:
..B2.14:
..L57:
                # optimization report
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.187012
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.009766
..LN156:
	.loc    1  222  is_stmt 1
        mov       ecx, edx
..LN157:
        inc       ecx
..LN158:
        and       ecx, 3
..LN159:
        inc       ecx
..LN160:
        mov       DWORD PTR [rax+rdx*4], ecx
..LN161:
	.loc    1  221  is_stmt 1
        inc       rdx
..LN162:
        cmp       rdx, 32000
..LN163:
        jb        ..B2.14
..LN164:
..B2.15:
..LN165:
	.loc    1  224  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN166:
        movss     DWORD PTR [rbx], xmm0
..LN167:
	.loc    1  225  is_stmt 1
        mov       DWORD PTR [r15], 1073741824
	.cfi_restore 6
..LN168:
	.loc    1  227  epilogue_begin  is_stmt 1
        pop       rbp
	.cfi_def_cfa_offset 24
	.cfi_restore 3
..LN169:
        pop       rbx
	.cfi_def_cfa_offset 16
	.cfi_restore 15
..LN170:
        pop       r15
	.cfi_def_cfa_offset 8
..LN171:
        ret       
        .align    16,0x90
..LN172:
..LN173:
	.cfi_endproc
	.type	set,@function
	.size	set,.-set
..LNset.174:
.LNset:
	.data
# -- End  set
	.text
.L_2__routine_start_set2d_2:
# -- Begin  set2d
	.text
       .align    16,0x90
	.globl set2d
set2d:
# parameter 1(arr): rdi
# parameter 2(value): xmm0
# parameter 3(stride): esi
..B3.1:
	.cfi_startproc
..___tag_value_set2d.68:
..L69:

..LN175:
	.loc    1  96  is_stmt 1
        movsxd    rsi, esi
..LN176:
	.loc    1  100  prologue_end  is_stmt 1
        cmp       rsi, -1
..LN177:
        je        ..B3.28
..LN178:
..B3.2:
..LN179:
        cmp       rsi, -2
..LN180:
        je        ..B3.8
..LN181:
..B3.3:
..LN182:
	.loc    1  113  is_stmt 1
        xor       eax, eax
..LN183:
..B3.4:
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
        xor       edx, edx
..LN186:
..B3.5:
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
        movss     DWORD PTR [rdi+rdx*4], xmm0
..LN189:
	.loc    1  114  is_stmt 1
        add       rdx, rsi
..LN190:
        cmp       rdx, 180
..LN191:
        jl        ..B3.5
..LN192:
..B3.6:
..LN193:
	.loc    1  113  is_stmt 1
        inc       eax
..LN194:
        add       rdi, 720
..LN195:
        cmp       eax, 180
..LN196:
        jl        ..B3.4
..LN197:
        jmp       ..B3.48
..LN198:
..B3.8:
..LN199:
	.loc    1  107  is_stmt 1
        xor       r9d, r9d
..LN200:
..B3.9:
..L73:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN201:
	.loc    1  109  is_stmt 1
        movsxd    r9, r9d
..LN202:
        imul      r8, r9, 720
..LN203:
        add       r8, rdi
..LN204:
	.loc    1  108  is_stmt 1
        mov       rax, r8
..LN205:
        and       rax, 15
..LN206:
        test      eax, eax
..LN207:
        je        ..B3.14
..LN208:
..B3.10:
..LN209:
	.loc    1  109  is_stmt 1
        inc       r9d
..LN210:
	.loc    1  108  is_stmt 1
        test      al, 3
..LN211:
        jne       ..B3.49
..LN212:
..B3.11:
..LN213:
	.loc    1  109  is_stmt 1
        mov       esi, r9d
..LN214:
        pxor      xmm1, xmm1
..LN215:
        imul      esi, r9d
..LN216:
	.loc    1  108  is_stmt 1
        neg       eax
..LN217:
	.loc    1  109  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN218:
        cvtsi2ss  xmm1, esi
..LN219:
	.loc    1  108  is_stmt 1
        add       eax, 16
..LN220:
        xor       ecx, ecx
..LN221:
        shr       eax, 2
..LN222:
        mov       edx, eax
..LN223:
	.loc    1  109  is_stmt 1
        divss     xmm0, xmm1
..LN224:
..B3.12:
..L74:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN225:
	.loc    1  108  is_stmt 1
..LN226:
	.loc    1  109  is_stmt 1
        movss     DWORD PTR [r8+rcx*4], xmm0
..LN227:
	.loc    1  108  is_stmt 1
        inc       rcx
..LN228:
        cmp       rcx, rdx
..LN229:
        jb        ..B3.12
..LN230:
        jmp       ..B3.15
..LN231:
..B3.14:
..LN232:
	.loc    1  109  is_stmt 1
        inc       r9d
..LN233:
        pxor      xmm1, xmm1
..LN234:
        mov       ecx, r9d
..LN235:
	.loc    1  108  is_stmt 1
        xor       edx, edx
..LN236:
	.loc    1  109  is_stmt 1
        imul      ecx, r9d
..LN237:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN238:
        cvtsi2ss  xmm1, ecx
..LN239:
        divss     xmm0, xmm1
..LN240:
..B3.15:
..LN241:
	.loc    1  108  is_stmt 1
        neg       eax
..LN242:
        add       eax, 4
..LN243:
        and       eax, 7
..LN244:
        neg       eax
..LN245:
	.loc    1  109  is_stmt 1
        shufps    xmm0, xmm0, 0
..LN246:
	.loc    1  108  is_stmt 1
        lea       ecx, DWORD PTR [180+rax]
..LN247:
        mov       esi, ecx
..LN248:
..B3.16:
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
        movups    XMMWORD PTR [r8+rdx*4], xmm0
..LN250:
        movups    XMMWORD PTR [16+r8+rdx*4], xmm0
..LN251:
	.loc    1  108  is_stmt 1
        add       rdx, 8
..LN252:
        cmp       rdx, rsi
..LN253:
        jb        ..B3.16
..LN254:
..B3.17:
..LN255:
        add       eax, 181
..LN256:
        cmp       eax, 180
..LN257:
        ja        ..B3.26
..LN258:
..B3.18:
..LN259:
        mov       eax, ecx
..LN260:
        neg       eax
..LN261:
        add       eax, 180
..LN262:
        cmp       eax, 4
..LN263:
        jb        ..B3.50
..LN264:
..B3.19:
..LN265:
        mov       edx, eax
..LN266:
        xor       r10d, r10d
..LN267:
        and       edx, -4
..LN268:
..B3.20:
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
        add       r10d, 4
..LN270:
	.loc    1  109  is_stmt 1
        movups    XMMWORD PTR [r8+rsi*4], xmm0
..LN271:
	.loc    1  108  is_stmt 1
        add       rsi, 4
..LN272:
        cmp       r10d, edx
..LN273:
        jb        ..B3.20
..LN274:
..B3.22:
..LN275:
        add       ecx, edx
..LN276:
        movsxd    rcx, ecx
..LN277:
        cmp       edx, eax
..LN278:
        jae       ..B3.26
..LN279:
..B3.23:
..LN280:
	.loc    1  109  is_stmt 1
        mov       esi, r9d
..LN281:
        pxor      xmm1, xmm1
..LN282:
        imul      esi, r9d
..LN283:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN284:
        cvtsi2ss  xmm1, esi
..LN285:
        divss     xmm0, xmm1
..LN286:
..B3.24:
..L77:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 1.974609
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.500000
..LN287:
	.loc    1  108  is_stmt 1
        inc       edx
..LN288:
	.loc    1  109  is_stmt 1
        movss     DWORD PTR [r8+rcx*4], xmm0
..LN289:
	.loc    1  108  is_stmt 1
        inc       rcx
..LN290:
        cmp       edx, eax
..LN291:
        jb        ..B3.24
..LN292:
..B3.26:
..LN293:
	.loc    1  107  is_stmt 1
        cmp       r9d, 180
..LN294:
        jb        ..B3.9
..LN295:
        jmp       ..B3.48
..LN296:
..B3.28:
..LN297:
	.loc    1  101  is_stmt 1
        xor       r8d, r8d
..LN298:
..B3.29:
..L78:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN299:
	.loc    1  102  is_stmt 1
        mov       rdx, rdi
..LN300:
        and       rdx, 15
..LN301:
        test      edx, edx
..LN302:
        je        ..B3.34
..LN303:
..B3.30:
..LN304:
        test      dl, 3
..LN305:
        jne       ..B3.51
..LN306:
..B3.31:
..LN307:
	.loc    1  103  is_stmt 1
        pxor      xmm1, xmm1
..LN308:
        lea       esi, DWORD PTR [1+r8]
..LN309:
        cvtsi2ss  xmm1, esi
..LN310:
	.loc    1  102  is_stmt 1
        neg       edx
..LN311:
        xor       ecx, ecx
..LN312:
        add       edx, 16
..LN313:
        shr       edx, 2
..LN314:
	.loc    1  103  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN315:
	.loc    1  102  is_stmt 1
        mov       eax, edx
..LN316:
	.loc    1  103  is_stmt 1
        divss     xmm0, xmm1
..LN317:
..B3.32:
..L79:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN318:
	.loc    1  102  is_stmt 1
..LN319:
	.loc    1  103  is_stmt 1
        movss     DWORD PTR [rdi+rcx*4], xmm0
..LN320:
	.loc    1  102  is_stmt 1
        inc       rcx
..LN321:
        cmp       rcx, rax
..LN322:
        jb        ..B3.32
..LN323:
        jmp       ..B3.35
..LN324:
..B3.34:
..LN325:
	.loc    1  103  is_stmt 1
        pxor      xmm1, xmm1
..LN326:
        lea       ecx, DWORD PTR [1+r8]
..LN327:
        cvtsi2ss  xmm1, ecx
..LN328:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN329:
	.loc    1  102  is_stmt 1
        xor       eax, eax
..LN330:
	.loc    1  103  is_stmt 1
        divss     xmm0, xmm1
..LN331:
..B3.35:
..LN332:
	.loc    1  102  is_stmt 1
        neg       edx
..LN333:
        lea       r9, QWORD PTR [rdi+rax*4]
..LN334:
        add       edx, 4
..LN335:
        and       edx, 7
..LN336:
        neg       edx
..LN337:
	.loc    1  103  is_stmt 1
        shufps    xmm0, xmm0, 0
..LN338:
	.loc    1  102  is_stmt 1
        lea       ecx, DWORD PTR [180+rdx]
..LN339:
        mov       esi, ecx
..LN340:
..B3.36:
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
        add       rax, 8
..LN342:
	.loc    1  103  is_stmt 1
        movups    XMMWORD PTR [r9], xmm0
..LN343:
        movups    XMMWORD PTR [16+r9], xmm0
..LN344:
	.loc    1  102  is_stmt 1
        add       r9, 32
..LN345:
        cmp       rax, rsi
..LN346:
        jb        ..B3.36
..LN347:
..B3.37:
..LN348:
        add       edx, 181
..LN349:
        cmp       edx, 180
..LN350:
        ja        ..B3.46
..LN351:
..B3.38:
..LN352:
        mov       edx, ecx
..LN353:
        neg       edx
..LN354:
        add       edx, 180
..LN355:
        cmp       edx, 4
..LN356:
        jb        ..B3.52
..LN357:
..B3.39:
..LN358:
        mov       eax, edx
..LN359:
        xor       r9d, r9d
..LN360:
        and       eax, -4
..LN361:
..B3.40:
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
        add       r9d, 4
..LN363:
	.loc    1  103  is_stmt 1
        movups    XMMWORD PTR [rdi+rsi*4], xmm0
..LN364:
	.loc    1  102  is_stmt 1
        add       rsi, 4
..LN365:
        cmp       r9d, eax
..LN366:
        jb        ..B3.40
..LN367:
..B3.42:
..LN368:
        add       ecx, eax
..LN369:
        movsxd    rcx, ecx
..LN370:
        cmp       eax, edx
..LN371:
        jae       ..B3.46
..LN372:
..B3.43:
..LN373:
	.loc    1  103  is_stmt 1
        pxor      xmm1, xmm1
..LN374:
        lea       esi, DWORD PTR [1+r8]
..LN375:
        cvtsi2ss  xmm1, esi
..LN376:
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN377:
        divss     xmm0, xmm1
..LN378:
..B3.44:
..L82:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 1.955078
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 2.500000
..LN379:
	.loc    1  102  is_stmt 1
        inc       eax
..LN380:
	.loc    1  103  is_stmt 1
        movss     DWORD PTR [rdi+rcx*4], xmm0
..LN381:
	.loc    1  102  is_stmt 1
        inc       rcx
..LN382:
        cmp       eax, edx
..LN383:
        jb        ..B3.44
..LN384:
..B3.46:
..LN385:
	.loc    1  101  is_stmt 1
        inc       r8d
..LN386:
        add       rdi, 720
..LN387:
        cmp       r8d, 180
..LN388:
        jb        ..B3.29
..LN389:
..B3.48:
..LN390:
	.loc    1  119  is_stmt 1
        xor       eax, eax
..LN391:
	.loc    1  119  epilogue_begin  is_stmt 1
        ret       
..LN392:
..B3.49:
..LN393:
	.loc    1  108  is_stmt 1
        xor       ecx, ecx
..LN394:
        mov       eax, 180
..LN395:
        xor       edx, edx
..LN396:
        jmp       ..B3.22
..LN397:
..B3.50:
..LN398:
        xor       edx, edx
..LN399:
        jmp       ..B3.22
..LN400:
..B3.51:
..LN401:
	.loc    1  102  is_stmt 1
        xor       ecx, ecx
..LN402:
        mov       edx, 180
..LN403:
        xor       eax, eax
..LN404:
        jmp       ..B3.42
..LN405:
..B3.52:
..LN406:
        xor       eax, eax
..LN407:
        jmp       ..B3.42
        .align    16,0x90
..LN408:
..LN409:
	.cfi_endproc
	.type	set2d,@function
	.size	set2d,.-set2d
..LNset2d.410:
.LNset2d:
	.data
# -- End  set2d
	.text
.L_2__routine_start_s242_3:
# -- Begin  s242
	.text
       .align    16,0x90
	.globl s242
s242:
# parameter 1(s1): xmm0
# parameter 2(s2): xmm1
..B4.1:
	.cfi_startproc
..___tag_value_s242.88:
..L89:

..LN411:
	.file   4 "s242.c"
	.loc    4  3  is_stmt 1
        push      r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
..LN412:
        push      rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
..LN413:
        sub       rsp, 360
	.cfi_def_cfa_offset 384
..LN414:
	.loc    4  10  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.3(%rip)]
..LN415:
	.loc    4  3  is_stmt 1
        movss     DWORD PTR [48+rsp], xmm1
..LN416:
        movss     DWORD PTR [40+rsp], xmm0
..___tag_value_s242.96:
..LN417:
	.loc    4  10  is_stmt 1
        call      init@PLT
..___tag_value_s242.97:
..LN418:
..B4.2:
..LN419:
	.loc    4  11  is_stmt 1
        call      clock@PLT
..LN420:
..B4.35:
..LN421:
        mov       QWORD PTR [rsp], rax
..LN422:
..B4.3:
..LN423:
	.loc    4  15  is_stmt 1
        movss     xmm0, DWORD PTR [40+rsp]
..LN424:
	.loc    4  13  is_stmt 1
        xor       eax, eax
..LN425:
	.loc    4  17  is_stmt 1
        mov       r10, QWORD PTR [e@GOTPCREL(%rip)]
..LN426:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]
..LN427:
        mov       r8, QWORD PTR [cc@GOTPCREL(%rip)]
..LN428:
	.loc    4  14  is_stmt 1
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]
..LN429:
        mov       rdx, QWORD PTR [c@GOTPCREL(%rip)]
..LN430:
        mov       rcx, QWORD PTR [d@GOTPCREL(%rip)]
..LN431:
        mov       r13, QWORD PTR [a@GOTPCREL(%rip)]
..LN432:
	.loc    4  17  is_stmt 1
        mov       rbx, QWORD PTR [bb@GOTPCREL(%rip)]
..LN433:
        mov       QWORD PTR [72+rsp], r8
..LN434:
        mov       QWORD PTR [64+rsp], r9
..LN435:
        mov       QWORD PTR [56+rsp], r10
..LN436:
        mov       QWORD PTR [8+rsp], r12
	.cfi_offset 12, -376
..LN437:
        mov       r12, rcx
..LN438:
        mov       QWORD PTR [16+rsp], r14
	.cfi_offset 14, -368
..LN439:
        mov       r14, rdx
..LN440:
        mov       QWORD PTR [24+rsp], r15
	.cfi_offset 15, -360
..LN441:
        mov       r15, rsi
..LN442:
        mov       QWORD PTR [32+rsp], rbp
	.cfi_offset 6, -352
..LN443:
        mov       ebp, eax
..LN444:
	.loc    4  15  is_stmt 1
        addss     xmm0, DWORD PTR [48+rsp]
..LN445:
        movss     DWORD PTR [40+rsp], xmm0
..LN446:
..B4.4:
..L102:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN447:
	.loc    4  13  is_stmt 1
..LN448:
	.loc    4  14  is_stmt 1
        xor       r11d, r11d
..LN449:
        mov       r8d, 31999
..LN450:
	.loc    4  15  is_stmt 1
        movss     xmm0, DWORD PTR [40+rsp]
..LN451:
	.loc    4  14  is_stmt 1
        movss     xmm1, DWORD PTR [40+rsp]
..LN452:
	.loc    4  15  is_stmt 1
        shufps    xmm0, xmm0, 0
..LN453:
	.loc    4  14  is_stmt 1
        mov       QWORD PTR [80+rsp], rbx
..LN454:
        mov       DWORD PTR [48+rsp], ebp
..LN455:
        xor       ebp, ebp
..LN456:
..B4.5:
..L103:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 1
                # %s was not vectorized: inner loop was already vectorized
..LN457:
        mov       eax, r11d
..LN458:
        shl       eax, 6
..LN459:
        mov       r9d, eax
..LN460:
        neg       r9d
..LN461:
        lea       r10d, DWORD PTR [64+rax]
..LN462:
        cmp       r10d, 31999
..LN463:
        cmova     r10d, r8d
..LN464:
        lea       ebx, DWORD PTR [r9+r10]
..LN465:
        cmp       ebx, 11
..LN466:
        jb        ..B4.31
..LN467:
..B4.6:
..LN468:
        xor       edi, edi
..LN469:
        lea       r9d, DWORD PTR [5+r9+r10]
..LN470:
	.loc    4  15  is_stmt 1
        mov       r10d, r11d
..LN471:
	.loc    4  14  is_stmt 1
        and       r9d, 7
..LN472:
	.loc    4  15  is_stmt 1
        mov       rdx, r10
..LN473:
	.loc    4  14  is_stmt 1
        neg       r9d
..LN474:
	.loc    4  15  is_stmt 1
        shl       rdx, 8
..LN475:
	.loc    4  14  is_stmt 1
        add       r9d, ebx
..LN476:
	.loc    4  15  is_stmt 1
        lea       rsi, QWORD PTR [r15+rdx]
..LN477:
        lea       rcx, QWORD PTR [r14+rdx]
..LN478:
        add       rdx, r12
..LN479:
..B4.7:
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
        movss     xmm2, DWORD PTR [4+rsi+rdi*4]
..LN482:
        addss     xmm2, xmm1
..LN483:
        addss     xmm2, DWORD PTR [4+rcx+rdi*4]
..LN484:
        addss     xmm2, DWORD PTR [4+rdx+rdi*4]
..LN485:
        movss     DWORD PTR [96+rsp+rdi*4], xmm2
..LN486:
	.loc    4  14  is_stmt 1
        inc       rdi
..LN487:
        cmp       rdi, 3
..LN488:
        jb        ..B4.7
..LN489:
..B4.8:
..LN490:
	.loc    4  15  is_stmt 1
        shl       r10, 6
..LN491:
	.loc    4  14  is_stmt 1
        mov       ecx, 3
..LN492:
        movsxd    rdx, r9d
        .align    16,0x90
..LN493:
..B4.9:
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
        lea       rsi, QWORD PTR [1+rcx+r10]
..LN495:
	.loc    4  15  is_stmt 1
        movups    xmm2, XMMWORD PTR [r15+rsi*4]
..LN496:
	.loc    4  14  is_stmt 1
        lea       rdi, QWORD PTR [5+rcx+r10]
..LN497:
	.loc    4  15  is_stmt 1
        movups    xmm3, XMMWORD PTR [r15+rdi*4]
..LN498:
        addps     xmm2, xmm0
..LN499:
        addps     xmm3, xmm0
..LN500:
        addps     xmm2, XMMWORD PTR [r14+rsi*4]
..LN501:
        addps     xmm3, XMMWORD PTR [r14+rdi*4]
..LN502:
        addps     xmm2, XMMWORD PTR [r12+rsi*4]
..LN503:
        addps     xmm3, XMMWORD PTR [r12+rdi*4]
..LN504:
        movups    XMMWORD PTR [96+rsp+rcx*4], xmm2
..LN505:
        movups    XMMWORD PTR [112+rsp+rcx*4], xmm3
..LN506:
	.loc    4  14  is_stmt 1
        add       rcx, 8
..LN507:
        cmp       rcx, rdx
..LN508:
        jb        ..B4.9
..LN509:
..B4.10:
..LN510:
        lea       r10d, DWORD PTR [1+r9]
..LN511:
        cmp       r10d, ebx
..LN512:
        ja        ..B4.20
..LN513:
..B4.11:
..LN514:
        mov       esi, ebx
..LN515:
        sub       esi, r9d
..LN516:
        cmp       esi, 4
..LN517:
        jb        ..B4.30
..LN518:
..B4.12:
..LN519:
        mov       r10d, esi
..LN520:
	.loc    4  15  is_stmt 1
        lea       edx, DWORD PTR [r9+rax]
..LN521:
	.loc    4  14  is_stmt 1
        and       r10d, -4
..LN522:
        xor       ecx, ecx
..LN523:
	.loc    4  15  is_stmt 1
        movsxd    rdx, edx
..LN524:
	.loc    4  14  is_stmt 1
        movsxd    r10, r10d
..LN525:
..B4.13:
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
        lea       rdi, QWORD PTR [1+rcx+rdx]
..LN527:
	.loc    4  15  is_stmt 1
        movups    xmm2, XMMWORD PTR [r15+rdi*4]
..LN528:
        addps     xmm2, xmm0
..LN529:
        addps     xmm2, XMMWORD PTR [r14+rdi*4]
..LN530:
        addps     xmm2, XMMWORD PTR [r12+rdi*4]
..LN531:
        mov       edi, ecx
..LN532:
        add       edi, r9d
..LN533:
	.loc    4  14  is_stmt 1
        add       rcx, 4
..LN534:
	.loc    4  15  is_stmt 1
        movsxd    rdi, edi
..LN535:
        movups    XMMWORD PTR [96+rsp+rdi*4], xmm2
..LN536:
	.loc    4  14  is_stmt 1
        cmp       rcx, r10
..LN537:
        jb        ..B4.13
..LN538:
..B4.15:
..LN539:
        movsxd    rsi, esi
..LN540:
        cmp       r10, rsi
..LN541:
        jae       ..B4.19
..LN542:
..B4.16:
..LN543:
	.loc    4  15  is_stmt 1
        add       eax, r9d
..LN544:
        movsxd    rax, eax
..LN545:
        lea       rcx, QWORD PTR [r12+rax*4]
..LN546:
        lea       rdx, QWORD PTR [r14+rax*4]
..LN547:
        lea       rax, QWORD PTR [r15+rax*4]
..LN548:
..B4.17:
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
        movss     xmm2, DWORD PTR [4+rax+r10*4]
..LN551:
        mov       edi, r10d
..LN552:
        add       edi, r9d
..LN553:
        addss     xmm2, xmm1
..LN554:
        movsxd    rdi, edi
..LN555:
        addss     xmm2, DWORD PTR [4+rdx+r10*4]
..LN556:
        addss     xmm2, DWORD PTR [4+rcx+r10*4]
..LN557:
	.loc    4  14  is_stmt 1
        inc       r10
..LN558:
	.loc    4  15  is_stmt 1
        movss     DWORD PTR [96+rsp+rdi*4], xmm2
..LN559:
	.loc    4  14  is_stmt 1
        cmp       r10, rsi
..LN560:
        jb        ..B4.17
..LN561:
..B4.19:
..LN562:
        test      ebx, ebx
..LN563:
        je        ..B4.23
..LN564:
..B4.20:
..LN565:
	.loc    4  15  is_stmt 1
        mov       eax, r11d
..LN566:
	.loc    4  14  is_stmt 1
        xor       r9d, r9d
..LN567:
	.loc    4  15  is_stmt 1
        shl       rax, 8
..LN568:
	.loc    4  14  is_stmt 1
        movsxd    rbx, ebx
..LN569:
	.loc    4  15  is_stmt 1
        movss     xmm2, DWORD PTR [r13+rax]
..LN570:
        add       rax, r13
..LN571:
..B4.21:
..L108:
                # optimization report
                # PEELED LOOP
                # LOOP WAS DISTRIBUTED, CHUNK 2
                # LOOP WAS STRIPMINED BY 64
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN572:
	.loc    4  14  is_stmt 1
        addss     xmm2, DWORD PTR [96+rsp+r9*4]
..LN573:
	.loc    4  15  is_stmt 1
        movss     DWORD PTR [4+rax+r9*4], xmm2
..LN574:
	.loc    4  14  is_stmt 1
        inc       r9
..LN575:
        cmp       r9, rbx
..LN576:
        jb        ..B4.21
..LN577:
..B4.23:
..LN578:
        inc       r11d
..LN579:
        cmp       r11d, 500
..LN580:
        jb        ..B4.5
..LN581:
..B4.24:
..LN582:
        mov       rbx, QWORD PTR [80+rsp]
..LN583:
	.loc    4  17  is_stmt 1
        mov       rdi, r13
..LN584:
        mov       ebp, DWORD PTR [48+rsp]
..LN585:
        mov       rsi, r15
..LN586:
        push      QWORD PTR [72+rsp]
	.cfi_def_cfa_offset 392
..LN587:
        push      rbx
	.cfi_def_cfa_offset 400
..LN588:
        mov       rdx, r14
..LN589:
        mov       rcx, r12
..LN590:
        pxor      xmm0, xmm0
..LN591:
        mov       r8, QWORD PTR [72+rsp]
..LN592:
        mov       r9, QWORD PTR [80+rsp]
..___tag_value_s242.111:
..LN593:
        call      dummy@PLT
..___tag_value_s242.112:
..LN594:
..B4.36:
..LN595:
        add       rsp, 16
	.cfi_def_cfa_offset 384
..LN596:
..B4.25:
..LN597:
	.loc    4  13  is_stmt 1
        inc       ebp
..LN598:
        cmp       ebp, 200000
..LN599:
        jb        ..B4.4
..LN600:
..B4.26:
..LN601:
        mov       r12, QWORD PTR [8+rsp]
	.cfi_restore 12
..LN602:
        mov       r14, QWORD PTR [16+rsp]
	.cfi_restore 14
..LN603:
        mov       r15, QWORD PTR [24+rsp]
	.cfi_restore 15
..LN604:
        mov       rbp, QWORD PTR [32+rsp]
	.cfi_restore 6
..LN605:
	.loc    4  19  is_stmt 1
        call      clock@PLT
	.cfi_offset 6, -352
	.cfi_offset 12, -376
	.cfi_offset 14, -368
	.cfi_offset 15, -360
..LN606:
..B4.27:
..LN607:
	.loc    4  21  is_stmt 1
        sub       rax, QWORD PTR [rsp]
..LN608:
        pxor      xmm0, xmm0
..LN609:
        cvtsi2sd  xmm0, rax
..LN610:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]
..LN611:
        lea       rdi, QWORD PTR [.L_2__STRING.16(%rip)]
..LN612:
        mov       eax, 1
..___tag_value_s242.122:
..LN613:
        call      printf@PLT
..___tag_value_s242.123:
..LN614:
..B4.28:
..LN615:
	.loc    4  22  is_stmt 1
        mov       edi, 1
..___tag_value_s242.124:
..LN616:
        call      check@PLT
..___tag_value_s242.125:
..LN617:
..B4.29:
..LN618:
	.loc    4  23  is_stmt 1
        xor       eax, eax
..LN619:
	.loc    4  23  epilogue_begin  is_stmt 1
        add       rsp, 360
	.cfi_def_cfa_offset 24
	.cfi_restore 3
..LN620:
        pop       rbx
	.cfi_def_cfa_offset 16
	.cfi_restore 13
..LN621:
        pop       r13
	.cfi_def_cfa_offset 8
..LN622:
        ret       
	.cfi_def_cfa_offset 384
	.cfi_offset 3, -24
	.cfi_offset 13, -16
..LN623:
..B4.30:
..LN624:
	.loc    4  14  is_stmt 1
        xor       r10d, r10d
..LN625:
        jmp       ..B4.15
..LN626:
..B4.31:
..LN627:
        mov       r9d, ebp
..LN628:
        cmp       ebx, 1
..LN629:
        jb        ..B4.19
..LN630:
..B4.32:
..LN631:
        mov       esi, ebx
..LN632:
        xor       r10d, r10d
..LN633:
        jmp       ..B4.15
        .align    16,0x90
..LN634:
..LN635:
	.cfi_endproc
	.type	s242,@function
	.size	s242,.-s242
..LNs242.636:
.LNs242:
	.data
# -- End  s242
	.text
.L_2__routine_start_check_4:
# -- Begin  check
	.text
       .align    16,0x90
	.globl check
check:
# parameter 1(name): edi
..B5.1:
	.cfi_startproc
..___tag_value_check.138:
..L139:

..LN637:
	.loc    1  122  is_stmt 1
        push      rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
..LN638:
        sub       rsp, 48
	.cfi_def_cfa_offset 64
..LN639:
        mov       ebp, edi
..LN640:
	.loc    1  124  prologue_end  is_stmt 1
        pxor      xmm6, xmm6
..LN641:
	.loc    1  129  is_stmt 1
        xor       r8d, r8d
..LN642:
	.loc    1  130  is_stmt 1
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]
..LN643:
	.loc    1  124  is_stmt 1
        movaps    xmm2, xmm6
..LN644:
	.loc    1  131  is_stmt 1
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]
..LN645:
	.loc    1  125  is_stmt 1
        movaps    xmm3, xmm6
..LN646:
	.loc    1  132  is_stmt 1
        mov       rcx, QWORD PTR [c@GOTPCREL(%rip)]
..LN647:
	.loc    1  126  is_stmt 1
        movaps    xmm4, xmm6
..LN648:
	.loc    1  133  is_stmt 1
        mov       rdx, QWORD PTR [d@GOTPCREL(%rip)]
..LN649:
	.loc    1  127  is_stmt 1
        movaps    xmm7, xmm6
..LN650:
	.loc    1  134  is_stmt 1
        mov       rax, QWORD PTR [e@GOTPCREL(%rip)]
..LN651:
	.loc    1  128  is_stmt 1
        movaps    xmm5, xmm6
..LN652:
..B5.2:
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
        addps     xmm2, XMMWORD PTR [rdi+r8*4]
..LN655:
	.loc    1  131  is_stmt 1
        addps     xmm3, XMMWORD PTR [rsi+r8*4]
..LN656:
	.loc    1  132  is_stmt 1
        addps     xmm4, XMMWORD PTR [rcx+r8*4]
..LN657:
	.loc    1  133  is_stmt 1
        addps     xmm7, XMMWORD PTR [rdx+r8*4]
..LN658:
	.loc    1  134  is_stmt 1
        addps     xmm5, XMMWORD PTR [rax+r8*4]
..LN659:
	.loc    1  129  is_stmt 1
        add       r8, 4
..LN660:
        cmp       r8, 32000
..LN661:
        jb        ..B5.2
..LN662:
..B5.3:
..LN663:
	.loc    1  128  is_stmt 1
        movaps    xmm0, xmm5
..LN664:
	.loc    1  126  is_stmt 1
        movaps    xmm8, xmm4
..LN665:
	.loc    1  125  is_stmt 1
        movaps    xmm10, xmm3
..LN666:
	.loc    1  124  is_stmt 1
        movaps    xmm12, xmm2
..LN667:
	.loc    1  128  is_stmt 1
        movhlps   xmm0, xmm5
..LN668:
	.loc    1  139  is_stmt 1
        xor       r8d, r8d
..LN669:
	.loc    1  126  is_stmt 1
        movhlps   xmm8, xmm4
..LN670:
	.loc    1  139  is_stmt 1
        mov       edi, 4
..LN671:
	.loc    1  125  is_stmt 1
        movhlps   xmm10, xmm3
..LN672:
	.loc    1  128  is_stmt 1
        addps     xmm5, xmm0
..LN673:
	.loc    1  126  is_stmt 1
        addps     xmm4, xmm8
..LN674:
	.loc    1  125  is_stmt 1
        addps     xmm3, xmm10
..LN675:
	.loc    1  124  is_stmt 1
        movhlps   xmm12, xmm2
..LN676:
	.loc    1  128  is_stmt 1
        movaps    xmm1, xmm5
..LN677:
	.loc    1  126  is_stmt 1
        movaps    xmm9, xmm4
..LN678:
	.loc    1  125  is_stmt 1
        movaps    xmm11, xmm3
..LN679:
	.loc    1  128  is_stmt 1
        shufps    xmm1, xmm5, 245
..LN680:
	.loc    1  137  is_stmt 1
        pxor      xmm8, xmm8
..LN681:
	.loc    1  126  is_stmt 1
        shufps    xmm9, xmm4, 245
..LN682:
	.loc    1  147  is_stmt 1
        movaps    xmm0, xmm6
..LN683:
	.loc    1  125  is_stmt 1
        shufps    xmm11, xmm3, 245
..LN684:
	.loc    1  124  is_stmt 1
        addps     xmm2, xmm12
..LN685:
	.loc    1  128  is_stmt 1
        addss     xmm5, xmm1
..LN686:
	.loc    1  126  is_stmt 1
        addss     xmm4, xmm9
..LN687:
	.loc    1  125  is_stmt 1
        addss     xmm3, xmm11
..LN688:
	.loc    1  124  is_stmt 1
        movaps    xmm13, xmm2
..LN689:
	.loc    1  138  is_stmt 1
        movaps    xmm1, xmm6
..LN690:
	.loc    1  124  is_stmt 1
        shufps    xmm13, xmm2, 245
..LN691:
	.loc    1  141  is_stmt 1
        mov       rsi, QWORD PTR [aa@GOTPCREL(%rip)]
..LN692:
	.loc    1  124  is_stmt 1
        addss     xmm2, xmm13
..LN693:
	.loc    1  142  is_stmt 1
        mov       rcx, QWORD PTR [bb@GOTPCREL(%rip)]
..LN694:
	.loc    1  143  is_stmt 1
        mov       rdx, QWORD PTR [cc@GOTPCREL(%rip)]
..LN695:
	.loc    1  149  is_stmt 1
        mov       rax, QWORD PTR [array@GOTPCREL(%rip)]
..LN696:
..B5.4:
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
        addps     xmm6, XMMWORD PTR [rsi+r8*4]
..LN699:
	.loc    1  142  is_stmt 1
        addps     xmm8, XMMWORD PTR [rcx+r8*4]
..LN700:
	.loc    1  143  is_stmt 1
        addps     xmm1, XMMWORD PTR [rdx+r8*4]
..LN701:
	.loc    1  149  is_stmt 1
        addps     xmm0, XMMWORD PTR [rax+r8*4]
..LN702:
	.loc    1  141  is_stmt 1
        addps     xmm6, XMMWORD PTR [16+rsi+r8*4]
..LN703:
	.loc    1  142  is_stmt 1
        addps     xmm8, XMMWORD PTR [16+rcx+r8*4]
..LN704:
	.loc    1  143  is_stmt 1
        addps     xmm1, XMMWORD PTR [16+rdx+r8*4]
..LN705:
	.loc    1  149  is_stmt 1
        addps     xmm0, XMMWORD PTR [rax+rdi*4]
..LN706:
	.loc    1  139  is_stmt 1
        add       r8, 8
..LN707:
        add       rdi, 8
..LN708:
        cmp       r8, 32400
..LN709:
        jb        ..B5.4
..LN710:
..B5.5:
..LN711:
	.loc    1  138  is_stmt 1
        movaps    xmm9, xmm1
..LN712:
	.loc    1  137  is_stmt 1
        movaps    xmm11, xmm8
..LN713:
	.loc    1  136  is_stmt 1
        movaps    xmm13, xmm6
..LN714:
	.loc    1  138  is_stmt 1
        movhlps   xmm9, xmm1
..LN715:
	.loc    1  137  is_stmt 1
        movhlps   xmm11, xmm8
..LN716:
	.loc    1  138  is_stmt 1
        addps     xmm1, xmm9
..LN717:
	.loc    1  137  is_stmt 1
        addps     xmm8, xmm11
..LN718:
	.loc    1  136  is_stmt 1
        movhlps   xmm13, xmm6
..LN719:
	.loc    1  138  is_stmt 1
        movaps    xmm10, xmm1
..LN720:
	.loc    1  137  is_stmt 1
        movaps    xmm12, xmm8
..LN721:
	.loc    1  136  is_stmt 1
        addps     xmm6, xmm13
..LN722:
        movaps    xmm14, xmm6
..LN723:
	.loc    1  138  is_stmt 1
        shufps    xmm10, xmm1, 245
..LN724:
	.loc    1  137  is_stmt 1
        shufps    xmm12, xmm8, 245
..LN725:
	.loc    1  138  is_stmt 1
        addss     xmm1, xmm10
..LN726:
	.loc    1  137  is_stmt 1
        addss     xmm8, xmm12
..LN727:
	.loc    1  136  is_stmt 1
        shufps    xmm14, xmm6, 245
..LN728:
        addss     xmm6, xmm14
..LN729:
	.loc    1  152  is_stmt 1
        cmp       ebp, 1
..LN730:
        je        ..B5.41
..LN731:
..B5.6:
..LN732:
	.loc    1  153  is_stmt 1
        cmp       ebp, 2
..LN733:
        je        ..B5.40
..LN734:
..B5.7:
..LN735:
	.loc    1  154  is_stmt 1
        cmp       ebp, 3
..LN736:
        je        ..B5.39
..LN737:
..B5.8:
..LN738:
	.loc    1  155  is_stmt 1
        cmp       ebp, 4
..LN739:
        je        ..B5.38
..LN740:
..B5.9:
..LN741:
	.loc    1  156  is_stmt 1
        cmp       ebp, 5
..LN742:
        je        ..B5.37
..LN743:
..B5.10:
..LN744:
	.loc    1  157  is_stmt 1
        cmp       ebp, 11
..LN745:
        je        ..B5.36
..LN746:
..B5.11:
..LN747:
	.loc    1  158  is_stmt 1
        cmp       ebp, 22
..LN748:
        je        ..B5.35
..LN749:
..B5.12:
..LN750:
	.loc    1  159  is_stmt 1
        cmp       ebp, 33
..LN751:
        je        ..B5.34
..LN752:
..B5.13:
..LN753:
	.loc    1  160  is_stmt 1
        test      ebp, ebp
..LN754:
        je        ..B5.23
..LN755:
..B5.14:
..LN756:
	.loc    1  161  is_stmt 1
        cmp       ebp, 12
..LN757:
        je        ..B5.33
..LN758:
..B5.15:
..LN759:
	.loc    1  162  is_stmt 1
        cmp       ebp, 25
..LN760:
        je        ..B5.32
..LN761:
..B5.16:
..LN762:
	.loc    1  163  is_stmt 1
        cmp       ebp, 13
..LN763:
        je        ..B5.31
..LN764:
..B5.17:
..LN765:
	.loc    1  164  is_stmt 1
        cmp       ebp, 123
..LN766:
        je        ..B5.30
..LN767:
..B5.18:
..LN768:
	.loc    1  165  is_stmt 1
        cmp       ebp, 1122
..LN769:
        je        ..B5.29
..LN770:
..B5.19:
..LN771:
	.loc    1  166  is_stmt 1
        cmp       ebp, 112233
..LN772:
        je        ..B5.28
..LN773:
..B5.20:
..LN774:
	.loc    1  167  is_stmt 1
        cmp       ebp, 111
..LN775:
        je        ..B5.27
..LN776:
..B5.21:
..LN777:
	.loc    1  168  is_stmt 1
        cmp       ebp, -1
..LN778:
        je        ..B5.26
..LN779:
..B5.22:
..LN780:
	.loc    1  169  is_stmt 1
        cmp       ebp, -12
..LN781:
        je        ..B5.25
..LN782:
        jmp       ..B5.24
..LN783:
..B5.23:
..LN784:
	.loc    1  147  is_stmt 1
        movaps    xmm1, xmm0
..LN785:
	.loc    1  160  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN786:
	.loc    1  147  is_stmt 1
        movhlps   xmm1, xmm0
..LN787:
	.loc    1  160  is_stmt 1
        mov       eax, 1
..LN788:
	.loc    1  147  is_stmt 1
        addps     xmm0, xmm1
..LN789:
        movaps    xmm2, xmm0
..LN790:
        shufps    xmm2, xmm0, 245
..LN791:
        addss     xmm0, xmm2
..LN792:
	.loc    1  160  is_stmt 1
        cvtss2sd  xmm0, xmm0
..___tag_value_check.146:
..LN793:
        call      printf@PLT
..___tag_value_check.147:
..LN794:
..B5.24:
..LN795:
	.loc    1  171  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN796:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN797:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN798:
..B5.25:
..LN799:
	.loc    1  169  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]
..LN800:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN801:
        movss     xmm0, DWORD PTR [rax]
..LN802:
        mov       eax, 1
..LN803:
        addss     xmm0, xmm3
..LN804:
        cvtss2sd  xmm0, xmm0
..___tag_value_check.154:
..LN805:
        call      printf@PLT
..___tag_value_check.155:
..LN806:
	.loc    1  169  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN807:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN808:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN809:
..B5.26:
..LN810:
	.loc    1  168  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]
..LN811:
        pxor      xmm0, xmm0
..LN812:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN813:
        cvtss2sd  xmm0, DWORD PTR [rax]
..LN814:
        mov       eax, 1
..LN815:
	.loc    1  168  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN816:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN817:
        jmp       printf@PLT
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN818:
..B5.27:
..LN819:
	.loc    1  167  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN820:
        mov       eax, 1
..LN821:
        addss     xmm2, xmm6
..LN822:
        cvtss2sd  xmm2, xmm2
..LN823:
        movaps    xmm0, xmm2
..___tag_value_check.168:
..LN824:
        call      printf@PLT
..___tag_value_check.169:
..LN825:
	.loc    1  167  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN826:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN827:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN828:
..B5.28:
..LN829:
	.loc    1  166  is_stmt 1
        pxor      xmm0, xmm0
..LN830:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN831:
        mov       eax, 1
..LN832:
        addss     xmm6, xmm8
..LN833:
        addss     xmm6, xmm1
..LN834:
        cvtss2sd  xmm0, xmm6
..___tag_value_check.176:
..LN835:
        call      printf@PLT
..___tag_value_check.177:
..LN836:
	.loc    1  166  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN837:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN838:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN839:
..B5.29:
..LN840:
	.loc    1  165  is_stmt 1
        pxor      xmm0, xmm0
..LN841:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN842:
        mov       eax, 1
..LN843:
        addss     xmm6, xmm8
..LN844:
        cvtss2sd  xmm0, xmm6
..___tag_value_check.184:
..LN845:
        call      printf@PLT
..___tag_value_check.185:
..LN846:
	.loc    1  165  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN847:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN848:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN849:
..B5.30:
..LN850:
	.loc    1  164  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN851:
        mov       eax, 1
..LN852:
        addss     xmm2, xmm3
..LN853:
        addss     xmm2, xmm4
..LN854:
        cvtss2sd  xmm2, xmm2
..LN855:
        movaps    xmm0, xmm2
..___tag_value_check.192:
..LN856:
        call      printf@PLT
..___tag_value_check.193:
..LN857:
	.loc    1  164  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN858:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN859:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN860:
..B5.31:
..LN861:
	.loc    1  163  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN862:
        mov       eax, 1
..LN863:
        addss     xmm2, xmm4
..LN864:
        cvtss2sd  xmm2, xmm2
..LN865:
        movaps    xmm0, xmm2
..___tag_value_check.200:
..LN866:
        call      printf@PLT
..___tag_value_check.201:
..LN867:
	.loc    1  163  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN868:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN869:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN870:
..B5.32:
..LN871:
	.loc    1  162  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN872:
        mov       eax, 1
..LN873:
        addss     xmm3, xmm5
..LN874:
        cvtss2sd  xmm3, xmm3
..LN875:
        movaps    xmm0, xmm3
..___tag_value_check.208:
..LN876:
        call      printf@PLT
..___tag_value_check.209:
..LN877:
	.loc    1  162  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN878:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN879:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN880:
..B5.33:
..LN881:
	.loc    1  161  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN882:
        mov       eax, 1
..LN883:
        addss     xmm2, xmm3
..LN884:
        cvtss2sd  xmm2, xmm2
..LN885:
        movaps    xmm0, xmm2
..___tag_value_check.216:
..LN886:
        call      printf@PLT
..___tag_value_check.217:
..LN887:
	.loc    1  161  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN888:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN889:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN890:
..B5.34:
..LN891:
	.loc    1  159  is_stmt 1
        cvtss2sd  xmm1, xmm1
..LN892:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN893:
        mov       eax, 1
..LN894:
        movaps    xmm0, xmm1
..___tag_value_check.224:
..LN895:
        call      printf@PLT
..___tag_value_check.225:
..LN896:
	.loc    1  159  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN897:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN898:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN899:
..B5.35:
..LN900:
	.loc    1  158  is_stmt 1
        pxor      xmm0, xmm0
..LN901:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN902:
        cvtss2sd  xmm0, xmm8
..LN903:
        mov       eax, 1
..___tag_value_check.232:
..LN904:
        call      printf@PLT
..___tag_value_check.233:
..LN905:
	.loc    1  158  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN906:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN907:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN908:
..B5.36:
..LN909:
	.loc    1  157  is_stmt 1
        pxor      xmm0, xmm0
..LN910:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN911:
        cvtss2sd  xmm0, xmm6
..LN912:
        mov       eax, 1
..___tag_value_check.240:
..LN913:
        call      printf@PLT
..___tag_value_check.241:
..LN914:
	.loc    1  157  epilogue_begin  is_stmt 1
        add       rsp, 48
	.cfi_def_cfa_offset 16
	.cfi_restore 6
..LN915:
        pop       rbp
	.cfi_def_cfa_offset 8
..LN916:
        ret       
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
..LN917:
..B5.37:
..LN918:
	.loc    1  156  is_stmt 1
        cvtss2sd  xmm5, xmm5
..LN919:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN920:
        mov       eax, 1
..LN921:
        movaps    xmm0, xmm5
..LN922:
        movss     DWORD PTR [rsp], xmm3
..___tag_value_check.248:
..LN923:
        call      printf@PLT
..___tag_value_check.249:
..LN924:
..B5.48:
..LN925:
        movss     xmm3, DWORD PTR [rsp]
..LN926:
        jmp       ..B5.22
..LN927:
..B5.38:
..LN928:
	.loc    1  127  is_stmt 1
        movaps    xmm1, xmm7
..LN929:
	.loc    1  155  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN930:
	.loc    1  127  is_stmt 1
        movhlps   xmm1, xmm7
..LN931:
	.loc    1  155  is_stmt 1
        mov       eax, 1
..LN932:
        movss     DWORD PTR [rsp], xmm3
..LN933:
	.loc    1  127  is_stmt 1
        addps     xmm7, xmm1
..LN934:
        movaps    xmm2, xmm7
..LN935:
        shufps    xmm2, xmm7, 245
..LN936:
        addss     xmm7, xmm2
..LN937:
	.loc    1  155  is_stmt 1
        cvtss2sd  xmm7, xmm7
..LN938:
        movaps    xmm0, xmm7
..___tag_value_check.250:
..LN939:
        call      printf@PLT
..___tag_value_check.251:
..LN940:
..B5.47:
..LN941:
        movss     xmm3, DWORD PTR [rsp]
..LN942:
        jmp       ..B5.21
..LN943:
..B5.39:
..LN944:
	.loc    1  154  is_stmt 1
        cvtss2sd  xmm4, xmm4
..LN945:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN946:
        mov       eax, 1
..LN947:
        movaps    xmm0, xmm4
..LN948:
        movss     DWORD PTR [8+rsp], xmm6
..LN949:
        movss     DWORD PTR [16+rsp], xmm2
..LN950:
        movss     DWORD PTR [rsp], xmm3
..___tag_value_check.252:
..LN951:
        call      printf@PLT
..___tag_value_check.253:
..LN952:
..B5.46:
..LN953:
        movss     xmm3, DWORD PTR [rsp]
..LN954:
        movss     xmm2, DWORD PTR [16+rsp]
..LN955:
        movss     xmm6, DWORD PTR [8+rsp]
..LN956:
        jmp       ..B5.20
..LN957:
..B5.40:
..LN958:
	.loc    1  153  is_stmt 1
        pxor      xmm0, xmm0
..LN959:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN960:
        cvtss2sd  xmm0, xmm3
..LN961:
        mov       eax, 1
..LN962:
        movss     DWORD PTR [8+rsp], xmm6
..LN963:
        movss     DWORD PTR [24+rsp], xmm8
..LN964:
        movss     DWORD PTR [32+rsp], xmm1
..LN965:
        movss     DWORD PTR [16+rsp], xmm2
..LN966:
        movss     DWORD PTR [rsp], xmm3
..___tag_value_check.254:
..LN967:
        call      printf@PLT
..___tag_value_check.255:
..LN968:
..B5.45:
..LN969:
        movss     xmm3, DWORD PTR [rsp]
..LN970:
        movss     xmm2, DWORD PTR [16+rsp]
..LN971:
        movss     xmm1, DWORD PTR [32+rsp]
..LN972:
        movss     xmm8, DWORD PTR [24+rsp]
..LN973:
        movss     xmm6, DWORD PTR [8+rsp]
..LN974:
        jmp       ..B5.19
..LN975:
..B5.41:
..LN976:
	.loc    1  152  is_stmt 1
        pxor      xmm0, xmm0
..LN977:
        lea       rdi, QWORD PTR [.L_2__STRING.0(%rip)]
..LN978:
        cvtss2sd  xmm0, xmm2
..LN979:
        mov       eax, 1
..LN980:
        movss     DWORD PTR [8+rsp], xmm6
..LN981:
        movss     DWORD PTR [24+rsp], xmm8
..LN982:
        movss     DWORD PTR [32+rsp], xmm1
..LN983:
        movss     DWORD PTR [16+rsp], xmm2
..LN984:
        movss     DWORD PTR [rsp], xmm3
..___tag_value_check.256:
..LN985:
        call      printf@PLT
..___tag_value_check.257:
..LN986:
..B5.44:
..LN987:
        movss     xmm3, DWORD PTR [rsp]
..LN988:
        movss     xmm2, DWORD PTR [16+rsp]
..LN989:
        movss     xmm1, DWORD PTR [32+rsp]
..LN990:
        movss     xmm8, DWORD PTR [24+rsp]
..LN991:
        movss     xmm6, DWORD PTR [8+rsp]
..LN992:
        jmp       ..B5.18
        .align    16,0x90
..LN993:
..LN994:
	.cfi_endproc
	.type	check,@function
	.size	check,.-check
..LNcheck.995:
.LNcheck:
	.data
# -- End  check
	.text
.L_2__routine_start_s2275_5:
# -- Begin  s2275
	.text
       .align    16,0x90
	.globl s2275
s2275:
..B6.1:
	.cfi_startproc
..___tag_value_s2275.262:
..L263:

..LN996:
	.loc    1  232  is_stmt 1
        push      r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN997:
        push      r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN998:
        push      r14
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN999:
        push      r15
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1000:
        push      rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1001:
        push      rbp
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1002:
        sub       rsp, 40
	.cfi_def_cfa_offset 96
..LN1003:
	.loc    1  239  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.5(%rip)]
..___tag_value_s2275.278:
..LN1004:
        call      init@PLT
..___tag_value_s2275.279:
..LN1005:
..B6.2:
..LN1006:
	.loc    1  240  is_stmt 1
        call      clock@PLT
..LN1007:
..B6.16:
..LN1008:
        mov       QWORD PTR [rsp], rax
..LN1009:
..B6.3:
..LN1010:
	.loc    1  249  is_stmt 1
        mov       r11, QWORD PTR [b@GOTPCREL(%rip)]
..LN1011:
	.loc    1  242  is_stmt 1
        xor       edi, edi
..LN1012:
	.loc    1  249  is_stmt 1
        mov       r10, QWORD PTR [a@GOTPCREL(%rip)]
..LN1013:
        mov       r13d, edi
..LN1014:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]
..LN1015:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]
..LN1016:
        mov       r14, r9
..LN1017:
        mov       rsi, QWORD PTR [bb@GOTPCREL(%rip)]
..LN1018:
        mov       r15, rsi
..LN1019:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]
..LN1020:
        mov       rbp, rax
..LN1021:
        mov       rdx, QWORD PTR [c@GOTPCREL(%rip)]
..LN1022:
        mov       r12, rdx
..LN1023:
        mov       rcx, QWORD PTR [d@GOTPCREL(%rip)]
..LN1024:
        mov       rbx, rcx
..LN1025:
        mov       QWORD PTR [8+rsp], r8
..LN1026:
        mov       QWORD PTR [16+rsp], r10
..LN1027:
        mov       QWORD PTR [24+rsp], r11
..LN1028:
..B6.4:
..L280:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1029:
	.loc    1  242  is_stmt 1
..LN1030:
	.loc    1  244  is_stmt 1
        xor       r8d, r8d
        .align    16,0x90
..LN1031:
..B6.5:
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
        movups    xmm0, XMMWORD PTR [r15+r8*4]
..LN1033:
        movups    xmm1, XMMWORD PTR [16+r15+r8*4]
..LN1034:
        movups    xmm2, XMMWORD PTR [32+r15+r8*4]
..LN1035:
        movups    xmm3, XMMWORD PTR [48+r15+r8*4]
..LN1036:
        mulps     xmm0, XMMWORD PTR [rbp+r8*4]
..LN1037:
        mulps     xmm1, XMMWORD PTR [16+rbp+r8*4]
..LN1038:
        mulps     xmm2, XMMWORD PTR [32+rbp+r8*4]
..LN1039:
        addps     xmm0, XMMWORD PTR [r14+r8*4]
..LN1040:
        mulps     xmm3, XMMWORD PTR [48+rbp+r8*4]
..LN1041:
        addps     xmm1, XMMWORD PTR [16+r14+r8*4]
..LN1042:
        addps     xmm2, XMMWORD PTR [32+r14+r8*4]
..LN1043:
        addps     xmm3, XMMWORD PTR [48+r14+r8*4]
..LN1044:
        movups    XMMWORD PTR [r14+r8*4], xmm0
..LN1045:
        movups    XMMWORD PTR [16+r14+r8*4], xmm1
..LN1046:
        movups    XMMWORD PTR [32+r14+r8*4], xmm2
..LN1047:
        movups    XMMWORD PTR [48+r14+r8*4], xmm3
..LN1048:
	.loc    1  244  is_stmt 1
        add       r8, 16
..LN1049:
        cmp       r8, 32400
..LN1050:
        jb        ..B6.5
..LN1051:
..B6.6:
..LN1052:
	.loc    1  243  is_stmt 1
        mov       r10, QWORD PTR [16+rsp]
..LN1053:
        xor       r8d, r8d
..LN1054:
        mov       r11, QWORD PTR [24+rsp]
..LN1055:
..B6.7:
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
        movups    xmm0, XMMWORD PTR [r12+r8*4]
..LN1057:
        movups    xmm1, XMMWORD PTR [16+r12+r8*4]
..LN1058:
        mulps     xmm0, XMMWORD PTR [rbx+r8*4]
..LN1059:
        mulps     xmm1, XMMWORD PTR [16+rbx+r8*4]
..LN1060:
        addps     xmm0, XMMWORD PTR [r11+r8*4]
..LN1061:
        addps     xmm1, XMMWORD PTR [16+r11+r8*4]
..LN1062:
        movups    XMMWORD PTR [r10+r8*4], xmm0
..LN1063:
        movups    XMMWORD PTR [16+r10+r8*4], xmm1
..LN1064:
	.loc    1  243  is_stmt 1
        add       r8, 8
..LN1065:
        cmp       r8, 176
..LN1066:
        jb        ..B6.7
..LN1067:
..B6.8:
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
        movups    xmm0, XMMWORD PTR [704+r12]
..LN1069:
	.loc    1  249  is_stmt 1
        mov       rdx, r12
..LN1070:
        push      rbp
	.cfi_def_cfa_offset 104
..LN1071:
	.loc    1  247  is_stmt 1
        mulps     xmm0, XMMWORD PTR [704+rbx]
..LN1072:
	.loc    1  249  is_stmt 1
        mov       rcx, rbx
..LN1073:
        push      r15
	.cfi_def_cfa_offset 112
..LN1074:
	.loc    1  247  is_stmt 1
        mov       rsi, QWORD PTR [40+rsp]
..LN1075:
	.loc    1  249  is_stmt 1
        mov       r9, r14
..LN1076:
	.loc    1  247  is_stmt 1
        mov       rdi, QWORD PTR [32+rsp]
..LN1077:
	.loc    1  249  is_stmt 1
        mov       r8, QWORD PTR [24+rsp]
..LN1078:
	.loc    1  247  is_stmt 1
        addps     xmm0, XMMWORD PTR [704+rsi]
..LN1079:
        movups    XMMWORD PTR [704+rdi], xmm0
..LN1080:
	.loc    1  249  is_stmt 1
        pxor      xmm0, xmm0
..___tag_value_s2275.286:
..LN1081:
        call      dummy@PLT
..___tag_value_s2275.287:
..LN1082:
..B6.17:
..LN1083:
        add       rsp, 16
	.cfi_def_cfa_offset 96
..LN1084:
..B6.9:
..LN1085:
	.loc    1  242  is_stmt 1
        inc       r13d
..LN1086:
        cmp       r13d, 200000
..LN1087:
        jb        ..B6.4
..LN1088:
..B6.10:
..LN1089:
	.loc    1  251  is_stmt 1
        call      clock@PLT
..LN1090:
..B6.11:
..LN1091:
	.loc    1  253  is_stmt 1
        sub       rax, QWORD PTR [rsp]
..LN1092:
        pxor      xmm0, xmm0
..LN1093:
        cvtsi2sd  xmm0, rax
..LN1094:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]
..LN1095:
        lea       rdi, QWORD PTR [.L_2__STRING.6(%rip)]
..LN1096:
        mov       eax, 1
..___tag_value_s2275.289:
..LN1097:
        call      printf@PLT
..___tag_value_s2275.290:
..LN1098:
..B6.12:
..LN1099:
	.loc    1  254  is_stmt 1
        mov       edi, 11
..___tag_value_s2275.291:
..LN1100:
        call      check@PLT
..___tag_value_s2275.292:
..LN1101:
..B6.13:
..LN1102:
	.loc    1  255  is_stmt 1
        xor       eax, eax
..LN1103:
	.loc    1  255  epilogue_begin  is_stmt 1
        add       rsp, 40
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1104:
        pop       rbp
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1105:
        pop       rbx
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1106:
        pop       r15
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1107:
        pop       r14
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1108:
        pop       r13
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1109:
        pop       r12
	.cfi_def_cfa_offset 8
..LN1110:
        ret       
        .align    16,0x90
..LN1111:
..LN1112:
	.cfi_endproc
	.type	s2275,@function
	.size	s2275,.-s2275
..LNs2275.1113:
.LNs2275:
	.data
# -- End  s2275
	.text
.L_2__routine_start_s112_6:
# -- Begin  s112
	.text
       .align    16,0x90
	.globl s112
s112:
..B7.1:
	.cfi_startproc
..___tag_value_s112.310:
..L311:

..LN1114:
	.loc    1  314  is_stmt 1
        push      r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1115:
        push      r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1116:
        push      r14
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1117:
        push      r15
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1118:
        push      rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1119:
        push      rbp
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1120:
        sub       rsp, 40
	.cfi_def_cfa_offset 96
..LN1121:
	.loc    1  322  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.2(%rip)]
..___tag_value_s112.326:
..LN1122:
        call      init@PLT
..___tag_value_s112.327:
..LN1123:
..B7.2:
..LN1124:
	.loc    1  323  is_stmt 1
        call      clock@PLT
..LN1125:
..B7.14:
..LN1126:
        mov       QWORD PTR [rsp], rax
..LN1127:
..B7.3:
..LN1128:
	.loc    1  330  is_stmt 1
        mov       r11, QWORD PTR [c@GOTPCREL(%rip)]
..LN1129:
	.loc    1  325  is_stmt 1
        xor       ecx, ecx
..LN1130:
	.loc    1  330  is_stmt 1
        mov       r10, QWORD PTR [d@GOTPCREL(%rip)]
..LN1131:
        mov       r12d, ecx
..LN1132:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]
..LN1133:
	.loc    1  327  is_stmt 1
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]
..LN1134:
	.loc    1  330  is_stmt 1
        mov       r13, rdi
..LN1135:
	.loc    1  327  is_stmt 1
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]
..LN1136:
	.loc    1  330  is_stmt 1
        mov       r14, rsi
..LN1137:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]
..LN1138:
        mov       r15, r9
..LN1139:
        mov       rdx, QWORD PTR [bb@GOTPCREL(%rip)]
..LN1140:
        mov       rbp, rdx
..LN1141:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]
..LN1142:
        mov       rbx, rax
..LN1143:
        mov       QWORD PTR [24+rsp], r8
..LN1144:
        mov       QWORD PTR [16+rsp], r10
..LN1145:
        mov       QWORD PTR [8+rsp], r11
..LN1146:
..B7.4:
..L328:
                # optimization report
                # %s was not vectorized: vector dependence prevents vectorization%s
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
..LN1147:
	.loc    1  325  is_stmt 1
..LN1148:
	.loc    1  327  is_stmt 1
        xor       r10d, r10d
..LN1149:
        xor       r8d, r8d
        .align    16,0x90
..LN1150:
..B7.5:
..L329:
                # optimization report
                # LOOP WAS UNROLLED BY 6
                # %s was not vectorized: vectorization possible but seems inefficient. Use vector always directive or -vec-threshold0 to override 
                # VECTORIZATION SPEEDUP COEFFECIENT 0.224487
                # VECTOR TRIP COUNT IS KNOWN CONSTANT
                # VECTOR LENGTH 4
..LN1151:
	.loc    1  328  is_stmt 1
        movss     xmm0, DWORD PTR [127992+r8+r13]
..LN1152:
	.loc    1  327  is_stmt 1
        inc       r10d
..LN1153:
	.loc    1  328  is_stmt 1
        movss     xmm1, DWORD PTR [127988+r8+r13]
..LN1154:
        addss     xmm0, DWORD PTR [127992+r8+r14]
..LN1155:
        addss     xmm1, DWORD PTR [127988+r8+r14]
..LN1156:
        movss     DWORD PTR [127996+r8+r13], xmm0
..LN1157:
        movss     DWORD PTR [127992+r8+r13], xmm1
..LN1158:
	.loc    1  327  is_stmt 1
        add       r8, -8
..LN1159:
        cmp       r10d, 15999
..LN1160:
        jb        ..B7.5
..LN1161:
..B7.6:
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
        movss     xmm0, DWORD PTR [r13]
..LN1163:
	.loc    1  330  is_stmt 1
        mov       rdi, r13
..LN1164:
        push      rbx
	.cfi_def_cfa_offset 104
..LN1165:
        push      rbp
	.cfi_def_cfa_offset 112
..LN1166:
        mov       rsi, r14
..LN1167:
        mov       r9, r15
..LN1168:
        mov       rdx, QWORD PTR [24+rsp]
..LN1169:
        mov       rcx, QWORD PTR [32+rsp]
..LN1170:
        mov       r8, QWORD PTR [40+rsp]
..LN1171:
	.loc    1  328  is_stmt 1
        addss     xmm0, DWORD PTR [r14]
..LN1172:
        movss     DWORD PTR [4+r13], xmm0
..LN1173:
	.loc    1  330  is_stmt 1
        pxor      xmm0, xmm0
..___tag_value_s112.333:
..LN1174:
        call      dummy@PLT
..___tag_value_s112.334:
..LN1175:
..B7.15:
..LN1176:
        add       rsp, 16
	.cfi_def_cfa_offset 96
..LN1177:
..B7.7:
..LN1178:
	.loc    1  325  is_stmt 1
        inc       r12d
..LN1179:
        cmp       r12d, 200000
..LN1180:
        jb        ..B7.4
..LN1181:
..B7.8:
..LN1182:
	.loc    1  332  is_stmt 1
        call      clock@PLT
..LN1183:
..B7.9:
..LN1184:
	.loc    1  334  is_stmt 1
        sub       rax, QWORD PTR [rsp]
..LN1185:
        pxor      xmm0, xmm0
..LN1186:
        cvtsi2sd  xmm0, rax
..LN1187:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]
..LN1188:
        lea       rdi, QWORD PTR [.L_2__STRING.10(%rip)]
..LN1189:
        mov       eax, 1
..___tag_value_s112.336:
..LN1190:
        call      printf@PLT
..___tag_value_s112.337:
..LN1191:
..B7.10:
..LN1192:
	.loc    1  335  is_stmt 1
        mov       edi, 1
..___tag_value_s112.338:
..LN1193:
        call      check@PLT
..___tag_value_s112.339:
..LN1194:
..B7.11:
..LN1195:
	.loc    1  336  is_stmt 1
        xor       eax, eax
..LN1196:
	.loc    1  336  epilogue_begin  is_stmt 1
        add       rsp, 40
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1197:
        pop       rbp
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1198:
        pop       rbx
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1199:
        pop       r15
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1200:
        pop       r14
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1201:
        pop       r13
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1202:
        pop       r12
	.cfi_def_cfa_offset 8
..LN1203:
        ret       
        .align    16,0x90
..LN1204:
..LN1205:
	.cfi_endproc
	.type	s112,@function
	.size	s112,.-s112
..LNs112.1206:
.LNs112:
	.data
# -- End  s112
	.text
.L_2__routine_start_s312_7:
# -- Begin  s312
	.text
       .align    16,0x90
	.globl s312
s312:
..B8.1:
	.cfi_startproc
..___tag_value_s312.357:
..L358:

..LN1207:
	.loc    1  258  is_stmt 1
        push      r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1208:
        push      r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1209:
        push      r14
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1210:
        push      r15
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1211:
        push      rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1212:
        push      rbp
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1213:
        sub       rsp, 40
	.cfi_def_cfa_offset 96
..LN1214:
	.loc    1  266  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.1(%rip)]
..___tag_value_s312.373:
..LN1215:
        call      init@PLT
..___tag_value_s312.374:
..LN1216:
..B8.2:
..LN1217:
	.loc    1  267  is_stmt 1
        call      clock@PLT
..LN1218:
..B8.14:
..LN1219:
        mov       QWORD PTR [rsp], rax
..LN1220:
..B8.3:
..LN1221:
	.loc    1  275  is_stmt 1
        mov       r11, QWORD PTR [b@GOTPCREL(%rip)]
..LN1222:
	.loc    1  270  is_stmt 1
        xor       ecx, ecx
..LN1223:
	.loc    1  275  is_stmt 1
        mov       r10, QWORD PTR [c@GOTPCREL(%rip)]
..LN1224:
        mov       r12d, ecx
..LN1225:
        mov       rsi, QWORD PTR [d@GOTPCREL(%rip)]
..LN1226:
	.loc    1  272  is_stmt 1
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]
..LN1227:
	.loc    1  275  is_stmt 1
        mov       r13, rdi
..LN1228:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]
..LN1229:
        mov       r14, r8
..LN1230:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]
..LN1231:
        mov       r15, r9
..LN1232:
        mov       rdx, QWORD PTR [bb@GOTPCREL(%rip)]
..LN1233:
        mov       rbp, rdx
..LN1234:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]
..LN1235:
        mov       rbx, rax
..LN1236:
        mov       QWORD PTR [16+rsp], rsi
..LN1237:
        mov       QWORD PTR [24+rsp], r10
..LN1238:
        mov       QWORD PTR [8+rsp], r11
..LN1239:
..B8.4:
..L375:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1240:
	.loc    1  270  is_stmt 1
..LN1241:
	.loc    1  269  is_stmt 1
        movups    xmm0, XMMWORD PTR [.L_2il0floatpacket.3(%rip)]
..LN1242:
	.loc    1  272  is_stmt 1
        xor       esi, esi
..LN1243:
..B8.5:
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
        mulps     xmm0, XMMWORD PTR [r13+rsi*4]
..LN1245:
        mulps     xmm0, XMMWORD PTR [16+r13+rsi*4]
..LN1246:
        mulps     xmm0, XMMWORD PTR [32+r13+rsi*4]
..LN1247:
        mulps     xmm0, XMMWORD PTR [48+r13+rsi*4]
..LN1248:
	.loc    1  272  is_stmt 1
        add       rsi, 16
..LN1249:
        cmp       rsi, 32000
..LN1250:
        jb        ..B8.5
..LN1251:
..B8.6:
..LN1252:
	.loc    1  269  is_stmt 1
        movaps    xmm1, xmm0
..LN1253:
	.loc    1  275  is_stmt 1
        mov       rdi, r13
..LN1254:
	.loc    1  269  is_stmt 1
        movhlps   xmm1, xmm0
..LN1255:
	.loc    1  275  is_stmt 1
        mov       r8, r14
..LN1256:
	.loc    1  269  is_stmt 1
        mulps     xmm0, xmm1
..LN1257:
	.loc    1  275  is_stmt 1
        mov       r9, r15
..LN1258:
	.loc    1  269  is_stmt 1
        movaps    xmm2, xmm0
..LN1259:
        shufps    xmm2, xmm0, 245
..LN1260:
        mulss     xmm0, xmm2
..LN1261:
	.loc    1  275  is_stmt 1
        push      rbx
	.cfi_def_cfa_offset 104
..LN1262:
        push      rbp
	.cfi_def_cfa_offset 112
..LN1263:
        mov       rsi, QWORD PTR [24+rsp]
..LN1264:
        mov       rdx, QWORD PTR [40+rsp]
..LN1265:
        mov       rcx, QWORD PTR [32+rsp]
..LN1266:
	.loc    1  269  is_stmt 1
        movss     DWORD PTR [48+rsp], xmm0
..___tag_value_s312.379:
..LN1267:
	.loc    1  275  is_stmt 1
        call      dummy@PLT
..___tag_value_s312.380:
..LN1268:
..B8.15:
..LN1269:
        add       rsp, 16
	.cfi_def_cfa_offset 96
..LN1270:
..B8.7:
..LN1271:
	.loc    1  270  is_stmt 1
        inc       r12d
..LN1272:
        cmp       r12d, 200000
..LN1273:
        jb        ..B8.4
..LN1274:
..B8.8:
..LN1275:
	.loc    1  277  is_stmt 1
        call      clock@PLT
..LN1276:
..B8.9:
..LN1277:
	.loc    1  279  is_stmt 1
        sub       rax, QWORD PTR [rsp]
..LN1278:
        pxor      xmm0, xmm0
..LN1279:
        cvtsi2sd  xmm0, rax
..LN1280:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]
..LN1281:
        lea       rdi, QWORD PTR [.L_2__STRING.7(%rip)]
..LN1282:
        mov       eax, 1
..___tag_value_s312.382:
..LN1283:
        call      printf@PLT
..___tag_value_s312.383:
..LN1284:
..B8.10:
..LN1285:
	.loc    1  280  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]
..LN1286:
	.loc    1  281  is_stmt 1
        mov       edi, -1
..LN1287:
	.loc    1  280  is_stmt 1
        movss     xmm0, DWORD PTR [32+rsp]
..LN1288:
        movss     DWORD PTR [rax], xmm0
..___tag_value_s312.384:
..LN1289:
	.loc    1  281  is_stmt 1
        call      check@PLT
..___tag_value_s312.385:
..LN1290:
..B8.11:
..LN1291:
	.loc    1  282  is_stmt 1
        xor       eax, eax
..LN1292:
	.loc    1  282  epilogue_begin  is_stmt 1
        add       rsp, 40
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1293:
        pop       rbp
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1294:
        pop       rbx
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1295:
        pop       r15
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1296:
        pop       r14
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1297:
        pop       r13
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1298:
        pop       r12
	.cfi_def_cfa_offset 8
..LN1299:
        ret       
        .align    16,0x90
..LN1300:
..LN1301:
	.cfi_endproc
	.type	s312,@function
	.size	s312,.-s312
..LNs312.1302:
.LNs312:
	.data
# -- End  s312
	.text
.L_2__routine_start_s317_8:
# -- Begin  s317
	.text
       .align    16,0x90
	.globl s317
s317:
..B9.1:
	.cfi_startproc
..___tag_value_s317.403:
..L404:

..LN1303:
	.loc    1  285  is_stmt 1
        push      r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
..LN1304:
        push      r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
..LN1305:
        push      r14
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
..LN1306:
        push      r15
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
..LN1307:
        push      rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
..LN1308:
        push      rbp
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
..LN1309:
        sub       rsp, 40
	.cfi_def_cfa_offset 96
..LN1310:
	.loc    1  295  prologue_end  is_stmt 1
        lea       rdi, QWORD PTR [.L_2__STRING.8(%rip)]
..___tag_value_s317.419:
..LN1311:
        call      init@PLT
..___tag_value_s317.420:
..LN1312:
..B9.2:
..LN1313:
	.loc    1  296  is_stmt 1
        call      clock@PLT
..LN1314:
..B9.14:
..LN1315:
        mov       QWORD PTR [rsp], rax
..LN1316:
..B9.3:
..LN1317:
	.loc    1  304  is_stmt 1
        mov       r11, QWORD PTR [a@GOTPCREL(%rip)]
..LN1318:
	.loc    1  299  is_stmt 1
        xor       ecx, ecx
..LN1319:
	.loc    1  304  is_stmt 1
        mov       r10, QWORD PTR [c@GOTPCREL(%rip)]
..LN1320:
        mov       r13d, ecx
..LN1321:
        mov       rdi, QWORD PTR [d@GOTPCREL(%rip)]
..LN1322:
        mov       rsi, QWORD PTR [b@GOTPCREL(%rip)]
..LN1323:
        mov       r14, rsi
..LN1324:
        mov       r8, QWORD PTR [e@GOTPCREL(%rip)]
..LN1325:
        mov       r15, r8
..LN1326:
        mov       r9, QWORD PTR [aa@GOTPCREL(%rip)]
..LN1327:
        mov       rbp, r9
..LN1328:
        mov       rdx, QWORD PTR [bb@GOTPCREL(%rip)]
..LN1329:
        mov       r12, rdx
..LN1330:
        mov       rax, QWORD PTR [cc@GOTPCREL(%rip)]
..LN1331:
        mov       rbx, rax
..LN1332:
        mov       QWORD PTR [16+rsp], rdi
..LN1333:
        mov       QWORD PTR [24+rsp], r10
..LN1334:
        mov       QWORD PTR [8+rsp], r11
..LN1335:
..B9.4:
..L421:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1336:
	.loc    1  299  is_stmt 1
..LN1337:
	.loc    1  298  is_stmt 1
        movups    xmm0, XMMWORD PTR [.L_2il0floatpacket.3(%rip)]
..LN1338:
	.loc    1  301  is_stmt 1
        xor       edi, edi
..LN1339:
        movups    xmm1, XMMWORD PTR [.L_2il0floatpacket.4(%rip)]
..LN1340:
..B9.5:
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
        mulps     xmm0, xmm1
..LN1342:
	.loc    1  301  is_stmt 1
        add       edi, 16
..LN1343:
	.loc    1  302  is_stmt 1
        mulps     xmm0, xmm1
..LN1344:
        mulps     xmm0, xmm1
..LN1345:
        mulps     xmm0, xmm1
..LN1346:
	.loc    1  301  is_stmt 1
        cmp       edi, 16000
..LN1347:
        jb        ..B9.5
..LN1348:
..B9.6:
..LN1349:
	.loc    1  298  is_stmt 1
        movaps    xmm1, xmm0
..LN1350:
	.loc    1  304  is_stmt 1
        mov       rsi, r14
..LN1351:
	.loc    1  298  is_stmt 1
        movhlps   xmm1, xmm0
..LN1352:
	.loc    1  304  is_stmt 1
        mov       r8, r15
..LN1353:
	.loc    1  298  is_stmt 1
        mulps     xmm0, xmm1
..LN1354:
	.loc    1  304  is_stmt 1
        mov       r9, rbp
..LN1355:
	.loc    1  298  is_stmt 1
        movaps    xmm2, xmm0
..LN1356:
        shufps    xmm2, xmm0, 245
..LN1357:
        mulss     xmm0, xmm2
..LN1358:
	.loc    1  304  is_stmt 1
        push      rbx
	.cfi_def_cfa_offset 104
..LN1359:
        push      r12
	.cfi_def_cfa_offset 112
..LN1360:
        mov       rdi, QWORD PTR [24+rsp]
..LN1361:
        mov       rdx, QWORD PTR [40+rsp]
..LN1362:
        mov       rcx, QWORD PTR [32+rsp]
..LN1363:
	.loc    1  298  is_stmt 1
        movss     DWORD PTR [48+rsp], xmm0
..___tag_value_s317.425:
..LN1364:
	.loc    1  304  is_stmt 1
        call      dummy@PLT
..___tag_value_s317.426:
..LN1365:
..B9.15:
..LN1366:
        add       rsp, 16
	.cfi_def_cfa_offset 96
..LN1367:
..B9.7:
..LN1368:
	.loc    1  299  is_stmt 1
        inc       r13d
..LN1369:
        cmp       r13d, 400000
..LN1370:
        jb        ..B9.4
..LN1371:
..B9.8:
..LN1372:
	.loc    1  306  is_stmt 1
        call      clock@PLT
..LN1373:
..B9.9:
..LN1374:
	.loc    1  308  is_stmt 1
        sub       rax, QWORD PTR [rsp]
..LN1375:
        pxor      xmm0, xmm0
..LN1376:
        cvtsi2sd  xmm0, rax
..LN1377:
        mulsd     xmm0, QWORD PTR [.L_2il0floatpacket.0(%rip)]
..LN1378:
        lea       rdi, QWORD PTR [.L_2__STRING.9(%rip)]
..LN1379:
        mov       eax, 1
..___tag_value_s317.428:
..LN1380:
        call      printf@PLT
..___tag_value_s317.429:
..LN1381:
..B9.10:
..LN1382:
	.loc    1  309  is_stmt 1
        mov       rax, QWORD PTR [temp@GOTPCREL(%rip)]
..LN1383:
	.loc    1  310  is_stmt 1
        mov       edi, -1
..LN1384:
	.loc    1  309  is_stmt 1
        movss     xmm0, DWORD PTR [32+rsp]
..LN1385:
        movss     DWORD PTR [rax], xmm0
..___tag_value_s317.430:
..LN1386:
	.loc    1  310  is_stmt 1
        call      check@PLT
..___tag_value_s317.431:
..LN1387:
..B9.11:
..LN1388:
	.loc    1  311  is_stmt 1
        xor       eax, eax
..LN1389:
	.loc    1  311  epilogue_begin  is_stmt 1
        add       rsp, 40
	.cfi_def_cfa_offset 56
	.cfi_restore 6
..LN1390:
        pop       rbp
	.cfi_def_cfa_offset 48
	.cfi_restore 3
..LN1391:
        pop       rbx
	.cfi_def_cfa_offset 40
	.cfi_restore 15
..LN1392:
        pop       r15
	.cfi_def_cfa_offset 32
	.cfi_restore 14
..LN1393:
        pop       r14
	.cfi_def_cfa_offset 24
	.cfi_restore 13
..LN1394:
        pop       r13
	.cfi_def_cfa_offset 16
	.cfi_restore 12
..LN1395:
        pop       r12
	.cfi_def_cfa_offset 8
..LN1396:
        ret       
        .align    16,0x90
..LN1397:
..LN1398:
	.cfi_endproc
	.type	s317,@function
	.size	s317,.-s317
..LNs317.1399:
.LNs317:
	.data
# -- End  s317
	.text
.L_2__routine_start_set1d_9:
# -- Begin  set1d
	.text
       .align    16,0x90
	.globl set1d
set1d:
# parameter 1(arr): rdi
# parameter 2(value): xmm0
# parameter 3(stride): esi
..B10.1:
	.cfi_startproc
..___tag_value_set1d.449:
..L450:

..LN1400:
	.loc    1  78  is_stmt 1
        movsxd    rcx, esi
..LN1401:
	.loc    1  79  prologue_end  is_stmt 1
        cmp       esi, -1
..LN1402:
        jne       ..B10.18
..LN1403:
..B10.2:
..LN1404:
	.loc    1  80  is_stmt 1
        mov       rdx, rdi
..LN1405:
        and       rdx, 15
..LN1406:
        test      edx, edx
..LN1407:
        je        ..B10.7
..LN1408:
..B10.3:
..LN1409:
        test      dl, 3
..LN1410:
        jne       ..B10.41
..LN1411:
..B10.4:
..LN1412:
        neg       edx
..LN1413:
        xor       ecx, ecx
..LN1414:
        add       edx, 16
..LN1415:
        xor       eax, eax
..LN1416:
        shr       edx, 2
..LN1417:
..B10.5:
..L452:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN1418:
	.loc    1  81  is_stmt 1
        inc       ecx
..LN1419:
        pxor      xmm0, xmm0
..LN1420:
        cvtsi2ss  xmm0, ecx
..LN1421:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN1422:
        divss     xmm1, xmm0
..LN1423:
        movss     DWORD PTR [rdi+rax*4], xmm1
..LN1424:
        inc       rax
..LN1425:
	.loc    1  80  is_stmt 1
        cmp       ecx, edx
..LN1426:
        jb        ..B10.5
..LN1427:
..B10.7:
..LN1428:
        mov       esi, edx
..LN1429:
	.loc    1  81  is_stmt 1
        lea       ecx, DWORD PTR [1+rdx]
..LN1430:
	.loc    1  80  is_stmt 1
        neg       esi
..LN1431:
	.loc    1  81  is_stmt 1
        lea       r9d, DWORD PTR [2+rdx]
..LN1432:
	.loc    1  80  is_stmt 1
        and       esi, 15
..LN1433:
	.loc    1  81  is_stmt 1
        lea       r10d, DWORD PTR [3+rdx]
..LN1434:
	.loc    1  80  is_stmt 1
        neg       esi
..LN1435:
	.loc    1  81  is_stmt 1
        lea       r11d, DWORD PTR [4+rdx]
..LN1436:
        mov       eax, 4
..LN1437:
        movd      xmm1, ecx
..LN1438:
        movd      xmm2, r9d
..LN1439:
        movd      xmm4, r10d
..LN1440:
        movd      xmm3, r11d
..LN1441:
	.loc    1  80  is_stmt 1
        lea       r8d, DWORD PTR [32000+rsi]
..LN1442:
	.loc    1  81  is_stmt 1
        punpcklqdq xmm1, xmm2
..LN1443:
        movd      xmm0, eax
..LN1444:
        punpcklqdq xmm4, xmm3
..LN1445:
	.loc    1  80  is_stmt 1
        mov       eax, r8d
..LN1446:
	.loc    1  81  is_stmt 1
        pshufd    xmm0, xmm0, 0
..LN1447:
        shufps    xmm1, xmm4, 136
..LN1448:
	.loc    1  80  is_stmt 1
        mov       edx, edx
        .align    16,0x90
..LN1449:
..B10.8:
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
        cvtdq2ps  xmm2, xmm1
..LN1451:
        paddd     xmm1, xmm0
..LN1452:
        cvtdq2ps  xmm4, xmm1
..LN1453:
        rcpps     xmm3, xmm2
..LN1454:
        rcpps     xmm5, xmm4
..LN1455:
        mulps     xmm2, xmm3
..LN1456:
        mulps     xmm4, xmm5
..LN1457:
        mulps     xmm2, xmm3
..LN1458:
        addps     xmm3, xmm3
..LN1459:
        mulps     xmm4, xmm5
..LN1460:
        addps     xmm5, xmm5
..LN1461:
        subps     xmm3, xmm2
..LN1462:
        subps     xmm5, xmm4
..LN1463:
        paddd     xmm1, xmm0
..LN1464:
        cvtdq2ps  xmm6, xmm1
..LN1465:
        paddd     xmm1, xmm0
..LN1466:
        cvtdq2ps  xmm8, xmm1
..LN1467:
        rcpps     xmm7, xmm6
..LN1468:
        rcpps     xmm9, xmm8
..LN1469:
        mulps     xmm6, xmm7
..LN1470:
        mulps     xmm8, xmm9
..LN1471:
        mulps     xmm6, xmm7
..LN1472:
        addps     xmm7, xmm7
..LN1473:
        mulps     xmm8, xmm9
..LN1474:
        addps     xmm9, xmm9
..LN1475:
        subps     xmm7, xmm6
..LN1476:
        subps     xmm9, xmm8
..LN1477:
        movups    XMMWORD PTR [rdi+rdx*4], xmm3
..LN1478:
        paddd     xmm1, xmm0
..LN1479:
        movups    XMMWORD PTR [16+rdi+rdx*4], xmm5
..LN1480:
        movups    XMMWORD PTR [32+rdi+rdx*4], xmm7
..LN1481:
        movups    XMMWORD PTR [48+rdi+rdx*4], xmm9
..LN1482:
	.loc    1  80  is_stmt 1
        add       rdx, 16
..LN1483:
        cmp       rdx, rax
..LN1484:
        jb        ..B10.8
..LN1485:
..B10.9:
..LN1486:
        lea       r9d, DWORD PTR [32001+rsi]
..LN1487:
        cmp       r9d, 32000
..LN1488:
        ja        ..B10.40
..LN1489:
..B10.10:
..LN1490:
        mov       edx, r8d
..LN1491:
        neg       edx
..LN1492:
        add       edx, 32000
..LN1493:
        cmp       edx, 4
..LN1494:
        jb        ..B10.42
..LN1495:
..B10.11:
..LN1496:
	.loc    1  81  is_stmt 1
        movd      xmm1, r9d
..LN1497:
        lea       r10d, DWORD PTR [32002+rsi]
..LN1498:
	.loc    1  80  is_stmt 1
        mov       ecx, edx
..LN1499:
	.loc    1  81  is_stmt 1
        lea       r11d, DWORD PTR [32003+rsi]
..LN1500:
        add       esi, 32004
..LN1501:
	.loc    1  80  is_stmt 1
        and       ecx, -4
..LN1502:
	.loc    1  81  is_stmt 1
        movd      xmm2, r10d
..LN1503:
        movd      xmm4, r11d
..LN1504:
        movd      xmm3, esi
..LN1505:
	.loc    1  80  is_stmt 1
        xor       esi, esi
..LN1506:
	.loc    1  81  is_stmt 1
        punpcklqdq xmm1, xmm2
..LN1507:
        punpcklqdq xmm4, xmm3
..LN1508:
        shufps    xmm1, xmm4, 136
..LN1509:
..B10.12:
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
        cvtdq2ps  xmm2, xmm1
..LN1512:
        rcpps     xmm3, xmm2
..LN1513:
        mulps     xmm2, xmm3
..LN1514:
	.loc    1  80  is_stmt 1
        add       esi, 4
..LN1515:
	.loc    1  81  is_stmt 1
        mulps     xmm2, xmm3
..LN1516:
        addps     xmm3, xmm3
..LN1517:
        paddd     xmm1, xmm0
..LN1518:
        subps     xmm3, xmm2
..LN1519:
        movups    XMMWORD PTR [rdi+rax*4], xmm3
..LN1520:
	.loc    1  80  is_stmt 1
        add       rax, 4
..LN1521:
        cmp       esi, ecx
..LN1522:
        jb        ..B10.12
..LN1523:
..B10.14:
..LN1524:
        add       r8d, ecx
..LN1525:
        movsxd    rax, r8d
..LN1526:
        cmp       ecx, edx
..LN1527:
        jae       ..B10.40
..LN1528:
..B10.16:
..L455:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 2.173828
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.281250
..LN1529:
	.loc    1  81  is_stmt 1
        inc       r8d
..LN1530:
        pxor      xmm0, xmm0
..LN1531:
        cvtsi2ss  xmm0, r8d
..LN1532:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN1533:
	.loc    1  80  is_stmt 1
        inc       ecx
..LN1534:
	.loc    1  81  is_stmt 1
        divss     xmm1, xmm0
..LN1535:
        movss     DWORD PTR [rdi+rax*4], xmm1
..LN1536:
	.loc    1  80  is_stmt 1
        inc       rax
..LN1537:
        cmp       ecx, edx
..LN1538:
        jb        ..B10.16
..LN1539:
        jmp       ..B10.40
..LN1540:
..B10.18:
..LN1541:
	.loc    1  79  is_stmt 1
        cmp       esi, -2
..LN1542:
        jne       ..B10.35
..LN1543:
..B10.19:
..LN1544:
	.loc    1  84  is_stmt 1
        mov       rax, rdi
..LN1545:
        and       rax, 15
..LN1546:
        test      eax, eax
..LN1547:
        je        ..B10.24
..LN1548:
..B10.20:
..LN1549:
        test      al, 3
..LN1550:
        jne       ..B10.43
..LN1551:
..B10.21:
..LN1552:
        neg       eax
..LN1553:
        xor       ecx, ecx
..LN1554:
        add       eax, 16
..LN1555:
        xor       edx, edx
..LN1556:
        shr       eax, 2
..LN1557:
..B10.22:
..L456:
                # optimization report
                # PEELED LOOP FOR VECTORIZATION
..LN1558:
	.loc    1  85  is_stmt 1
        inc       ecx
..LN1559:
        pxor      xmm0, xmm0
..LN1560:
        mov       esi, ecx
..LN1561:
        imul      esi, ecx
..LN1562:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN1563:
        cvtsi2ss  xmm0, esi
..LN1564:
        divss     xmm1, xmm0
..LN1565:
        movss     DWORD PTR [rdi+rdx*4], xmm1
..LN1566:
        inc       rdx
..LN1567:
	.loc    1  84  is_stmt 1
        cmp       ecx, eax
..LN1568:
        jb        ..B10.22
..LN1569:
..B10.24:
..LN1570:
        mov       esi, eax
..LN1571:
	.loc    1  85  is_stmt 1
        mov       edx, 4
..LN1572:
	.loc    1  84  is_stmt 1
        neg       esi
..LN1573:
	.loc    1  85  is_stmt 1
        lea       ecx, DWORD PTR [1+rax]
..LN1574:
	.loc    1  84  is_stmt 1
        and       esi, 15
..LN1575:
	.loc    1  85  is_stmt 1
        lea       r9d, DWORD PTR [2+rax]
..LN1576:
	.loc    1  84  is_stmt 1
        neg       esi
..LN1577:
	.loc    1  85  is_stmt 1
        lea       r10d, DWORD PTR [3+rax]
..LN1578:
        movd      xmm0, edx
..LN1579:
        lea       r11d, DWORD PTR [4+rax]
..LN1580:
        pshufd    xmm2, xmm0, 0
..LN1581:
        movd      xmm0, ecx
..LN1582:
        movd      xmm1, r9d
..LN1583:
        movd      xmm4, r10d
..LN1584:
	.loc    1  84  is_stmt 1
        lea       r8d, DWORD PTR [32000+rsi]
..LN1585:
	.loc    1  85  is_stmt 1
        movd      xmm3, r11d
..LN1586:
	.loc    1  84  is_stmt 1
        mov       edx, r8d
..LN1587:
	.loc    1  85  is_stmt 1
        punpcklqdq xmm0, xmm1
..LN1588:
        punpcklqdq xmm4, xmm3
..LN1589:
        shufps    xmm0, xmm4, 136
..LN1590:
	.loc    1  84  is_stmt 1
        mov       eax, eax
..LN1591:
	.loc    1  85  is_stmt 1
        movdqu    xmm1, XMMWORD PTR [.L_2il0floatpacket.5(%rip)]
..LN1592:
..B10.25:
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
        movaps    xmm3, xmm0
..LN1595:
        movaps    xmm4, xmm0
..LN1596:
        psrlq     xmm3, 32
..LN1597:
        pmuludq   xmm4, xmm0
..LN1598:
        paddd     xmm0, xmm2
..LN1599:
        pmuludq   xmm3, xmm3
..LN1600:
        pand      xmm4, xmm1
..LN1601:
        psllq     xmm3, 32
..LN1602:
        por       xmm4, xmm3
..LN1603:
        movaps    xmm8, xmm0
..LN1604:
        cvtdq2ps  xmm5, xmm4
..LN1605:
        pmuludq   xmm8, xmm0
..LN1606:
        rcpps     xmm6, xmm5
..LN1607:
        movaps    xmm7, xmm0
..LN1608:
        paddd     xmm0, xmm2
..LN1609:
        movaps    xmm12, xmm0
..LN1610:
        movaps    xmm11, xmm0
..LN1611:
        pmuludq   xmm12, xmm0
..LN1612:
        paddd     xmm0, xmm2
..LN1613:
        mulps     xmm5, xmm6
..LN1614:
        movaps    xmm15, xmm0
..LN1615:
        psrlq     xmm7, 32
..LN1616:
        psrlq     xmm11, 32
..LN1617:
        psrlq     xmm15, 32
..LN1618:
        movaps    xmm3, xmm0
..LN1619:
        pand      xmm8, xmm1
..LN1620:
        pmuludq   xmm7, xmm7
..LN1621:
        pand      xmm12, xmm1
..LN1622:
        mulps     xmm5, xmm6
..LN1623:
        addps     xmm6, xmm6
..LN1624:
        pmuludq   xmm11, xmm11
..LN1625:
        pmuludq   xmm3, xmm0
..LN1626:
        pmuludq   xmm15, xmm15
..LN1627:
        subps     xmm6, xmm5
..LN1628:
        psllq     xmm7, 32
..LN1629:
        psllq     xmm11, 32
..LN1630:
        pand      xmm3, xmm1
..LN1631:
        psllq     xmm15, 32
..LN1632:
        por       xmm8, xmm7
..LN1633:
        por       xmm12, xmm11
..LN1634:
        por       xmm3, xmm15
..LN1635:
        paddd     xmm0, xmm2
..LN1636:
        cvtdq2ps  xmm9, xmm8
..LN1637:
        cvtdq2ps  xmm13, xmm12
..LN1638:
        cvtdq2ps  xmm4, xmm3
..LN1639:
        rcpps     xmm10, xmm9
..LN1640:
        rcpps     xmm14, xmm13
..LN1641:
        rcpps     xmm5, xmm4
..LN1642:
        mulps     xmm9, xmm10
..LN1643:
        mulps     xmm13, xmm14
..LN1644:
        mulps     xmm4, xmm5
..LN1645:
        mulps     xmm9, xmm10
..LN1646:
        addps     xmm10, xmm10
..LN1647:
        mulps     xmm13, xmm14
..LN1648:
        addps     xmm14, xmm14
..LN1649:
        mulps     xmm4, xmm5
..LN1650:
        addps     xmm5, xmm5
..LN1651:
        subps     xmm10, xmm9
..LN1652:
        subps     xmm14, xmm13
..LN1653:
        subps     xmm5, xmm4
..LN1654:
        movups    XMMWORD PTR [rdi+rax*4], xmm6
..LN1655:
        movups    XMMWORD PTR [16+rdi+rax*4], xmm10
..LN1656:
        movups    XMMWORD PTR [32+rdi+rax*4], xmm14
..LN1657:
        movups    XMMWORD PTR [48+rdi+rax*4], xmm5
..LN1658:
	.loc    1  84  is_stmt 1
        add       rax, 16
..LN1659:
        cmp       rax, rdx
..LN1660:
        jb        ..B10.25
..LN1661:
..B10.26:
..LN1662:
        lea       r9d, DWORD PTR [32001+rsi]
..LN1663:
        cmp       r9d, 32000
..LN1664:
        ja        ..B10.40
..LN1665:
..B10.27:
..LN1666:
        mov       eax, r8d
..LN1667:
        neg       eax
..LN1668:
        add       eax, 32000
..LN1669:
        cmp       eax, 4
..LN1670:
        jb        ..B10.44
..LN1671:
..B10.28:
..LN1672:
	.loc    1  85  is_stmt 1
        movd      xmm0, r9d
..LN1673:
        lea       r10d, DWORD PTR [32002+rsi]
..LN1674:
	.loc    1  84  is_stmt 1
        mov       ecx, eax
..LN1675:
	.loc    1  85  is_stmt 1
        lea       r11d, DWORD PTR [32003+rsi]
..LN1676:
        add       esi, 32004
..LN1677:
	.loc    1  84  is_stmt 1
        and       ecx, -4
..LN1678:
	.loc    1  85  is_stmt 1
        movd      xmm3, r10d
..LN1679:
        movd      xmm5, r11d
..LN1680:
        movd      xmm4, esi
..LN1681:
	.loc    1  84  is_stmt 1
        xor       esi, esi
..LN1682:
	.loc    1  85  is_stmt 1
        punpcklqdq xmm0, xmm3
..LN1683:
        punpcklqdq xmm5, xmm4
..LN1684:
        shufps    xmm0, xmm5, 136
        .align    16,0x90
..LN1685:
..B10.29:
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
        movaps    xmm3, xmm0
..LN1688:
        movaps    xmm4, xmm0
..LN1689:
        psrlq     xmm3, 32
..LN1690:
	.loc    1  84  is_stmt 1
        add       esi, 4
..LN1691:
	.loc    1  85  is_stmt 1
        pmuludq   xmm4, xmm0
..LN1692:
        paddd     xmm0, xmm2
..LN1693:
        pmuludq   xmm3, xmm3
..LN1694:
        pand      xmm4, xmm1
..LN1695:
        psllq     xmm3, 32
..LN1696:
        por       xmm4, xmm3
..LN1697:
        cvtdq2ps  xmm5, xmm4
..LN1698:
        rcpps     xmm6, xmm5
..LN1699:
        mulps     xmm5, xmm6
..LN1700:
        mulps     xmm5, xmm6
..LN1701:
        addps     xmm6, xmm6
..LN1702:
        subps     xmm6, xmm5
..LN1703:
        movups    XMMWORD PTR [rdi+rdx*4], xmm6
..LN1704:
	.loc    1  84  is_stmt 1
        add       rdx, 4
..LN1705:
        cmp       esi, ecx
..LN1706:
        jb        ..B10.29
..LN1707:
..B10.31:
..LN1708:
        add       r8d, ecx
..LN1709:
        movsxd    rdx, r8d
..LN1710:
        cmp       ecx, eax
..LN1711:
        jae       ..B10.40
..LN1712:
..B10.33:
..L459:
                # optimization report
                # REMAINDER LOOP FOR VECTORIZATION
                # VECTORIZATION SPEEDUP COEFFECIENT 2.125000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 4
                # NORMALIZED VECTORIZATION OVERHEAD 0.281250
..LN1713:
	.loc    1  85  is_stmt 1
        inc       r8d
..LN1714:
        pxor      xmm0, xmm0
..LN1715:
        mov       esi, r8d
..LN1716:
	.loc    1  84  is_stmt 1
        inc       ecx
..LN1717:
	.loc    1  85  is_stmt 1
        imul      esi, r8d
..LN1718:
        movss     xmm1, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN1719:
        cvtsi2ss  xmm0, esi
..LN1720:
        divss     xmm1, xmm0
..LN1721:
        movss     DWORD PTR [rdi+rdx*4], xmm1
..LN1722:
	.loc    1  84  is_stmt 1
        inc       rdx
..LN1723:
        cmp       ecx, eax
..LN1724:
        jb        ..B10.33
..LN1725:
        jmp       ..B10.40
..LN1726:
..B10.35:
..LN1727:
	.loc    1  88  is_stmt 1
        test      esi, esi
..LN1728:
        jne       ..B10.37
..LN1729:
..B10.36:
..LN1730:
	.loc    1  89  is_stmt 1
        movss     DWORD PTR [rdi], xmm0
..LN1731:
        jmp       ..B10.40
..LN1732:
..B10.37:
..LN1733:
	.loc    1  88  is_stmt 1
        xor       r8d, r8d
..LN1734:
        lea       rax, QWORD PTR [31999+rcx]
..LN1735:
        cmp       rcx, -1
..LN1736:
        je        ..B10.49
..LN1737:
..B10.50:
..LN1738:
        movsxd    rdx, eax
..LN1739:
        cmp       rdx, rax
..LN1740:
        jne       ..B10.49
..LN1741:
..B10.48:
..LN1742:
        cdq       
..LN1743:
        idiv      esi
..LN1744:
        movsxd    rax, eax
..LN1745:
..B10.47:
..LN1746:
        mov       edx, eax
..LN1747:
	.loc    1  89  is_stmt 1
        xor       eax, eax
..LN1748:
..B10.38:
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
        inc       r8d
..LN1750:
	.loc    1  89  is_stmt 1
        movss     DWORD PTR [rdi+rax*4], xmm0
..LN1751:
	.loc    1  88  is_stmt 1
        add       rax, rcx
..LN1752:
        cmp       r8d, edx
..LN1753:
        jl        ..B10.38
..LN1754:
..B10.40:
..LN1755:
	.loc    1  92  is_stmt 1
        xor       eax, eax
..LN1756:
	.loc    1  92  epilogue_begin  is_stmt 1
        ret       
..LN1757:
..B10.41:
..LN1758:
	.loc    1  80  is_stmt 1
        xor       r8d, r8d
..LN1759:
        mov       edx, 32000
..LN1760:
        xor       ecx, ecx
..LN1761:
        jmp       ..B10.14
..LN1762:
..B10.42:
..LN1763:
        xor       ecx, ecx
..LN1764:
        jmp       ..B10.14
..LN1765:
..B10.43:
..LN1766:
	.loc    1  84  is_stmt 1
        xor       r8d, r8d
..LN1767:
        mov       eax, 32000
..LN1768:
        xor       ecx, ecx
..LN1769:
        jmp       ..B10.31
..LN1770:
..B10.44:
..LN1771:
        xor       ecx, ecx
..LN1772:
        jmp       ..B10.31
..LN1773:
..B10.49:
..LN1774:
	.loc    1  88  is_stmt 1
        cqo       
..LN1775:
        idiv      rcx
..LN1776:
        jmp       ..B10.47
        .align    16,0x90
..LN1777:
..LN1778:
	.cfi_endproc
	.type	set1d,@function
	.size	set1d,.-set1d
..LNset1d.1779:
.LNset1d:
	.data
# -- End  set1d
	.text
.L_2__routine_start_init_10:
# -- Begin  init
	.text
       .align    16,0x90
	.globl init
init:
# parameter 1(name): rdi
..B11.1:
	.cfi_startproc
..___tag_value_init.466:
..L467:

..LN1780:
	.loc    1  174  is_stmt 1
        push      rsi
	.cfi_def_cfa_offset 16
..LN1781:
	.loc    1  185  prologue_end  is_stmt 1
        lea       rsi, QWORD PTR [.L_2__STRING.3(%rip)]
..LN1782:
	.loc    1  174  is_stmt 1
        mov       rcx, rdi
..L470:
..LN1783:
	.loc    1  185  is_stmt 1
        mov       dl, BYTE PTR [rdi]
..LN1784:
        cmp       dl, BYTE PTR [rsi]
..LN1785:
        jne       ..L472
..LN1786:
        test      dl, dl
..LN1787:
        je        ..L471
..LN1788:
        mov       dl, BYTE PTR [1+rdi]
..LN1789:
        cmp       dl, BYTE PTR [1+rsi]
..LN1790:
        jne       ..L472
..LN1791:
        add       rdi, 2
..LN1792:
        add       rsi, 2
..LN1793:
        test      dl, dl
..LN1794:
        jne       ..L470
..L471:
..LN1795:
        xor       eax, eax
..LN1796:
        jmp       ..L473
..L472:
..LN1797:
        sbb       eax, eax
..LN1798:
        or        eax, 1
..L473:
..LN1799:
..B11.14:
..LN1800:
        test      eax, eax
..LN1801:
        je        ..B11.7
..LN1802:
..B11.2:
..LN1803:
	.loc    1  190  is_stmt 1
        mov       rdi, rcx
..LN1804:
        lea       rsi, QWORD PTR [.L_2__STRING.2(%rip)]
..L474:
..LN1805:
        mov       dl, BYTE PTR [rdi]
..LN1806:
        cmp       dl, BYTE PTR [rsi]
..LN1807:
        jne       ..L476
..LN1808:
        test      dl, dl
..LN1809:
        je        ..L475
..LN1810:
        mov       dl, BYTE PTR [1+rdi]
..LN1811:
        cmp       dl, BYTE PTR [1+rsi]
..LN1812:
        jne       ..L476
..LN1813:
        add       rdi, 2
..LN1814:
        add       rsi, 2
..LN1815:
        test      dl, dl
..LN1816:
        jne       ..L474
..L475:
..LN1817:
        xor       eax, eax
..LN1818:
        jmp       ..L477
..L476:
..LN1819:
        sbb       eax, eax
..LN1820:
        or        eax, 1
..L477:
..LN1821:
..B11.15:
..LN1822:
        test      eax, eax
..LN1823:
        je        ..B11.5
..LN1824:
..B11.3:
..LN1825:
	.loc    1  193  is_stmt 1
        mov       rdi, rcx
..LN1826:
        lea       rsi, QWORD PTR [.L_2__STRING.1(%rip)]
..L478:
..LN1827:
        mov       dl, BYTE PTR [rdi]
..LN1828:
        cmp       dl, BYTE PTR [rsi]
..LN1829:
        jne       ..L480
..LN1830:
        test      dl, dl
..LN1831:
        je        ..L479
..LN1832:
        mov       dl, BYTE PTR [1+rdi]
..LN1833:
        cmp       dl, BYTE PTR [1+rsi]
..LN1834:
        jne       ..L480
..LN1835:
        add       rdi, 2
..LN1836:
        add       rsi, 2
..LN1837:
        test      dl, dl
..LN1838:
        jne       ..L478
..L479:
..LN1839:
        xor       eax, eax
..LN1840:
        jmp       ..L481
..L480:
..LN1841:
        sbb       eax, eax
..LN1842:
        or        eax, 1
..L481:
..LN1843:
..B11.16:
..LN1844:
        test      eax, eax
..LN1845:
        jne       ..B11.11
..LN1846:
..B11.4:
..LN1847:
	.loc    1  194  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.7(%rip)]
..LN1848:
        mov       esi, 1
..LN1849:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]
..___tag_value_init.482:
..LN1850:
        call      set1d@PLT
..___tag_value_init.483:
..LN1851:
        jmp       ..B11.11
..LN1852:
..B11.5:
..LN1853:
	.loc    1  191  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.2(%rip)]
..LN1854:
        mov       esi, 1
..LN1855:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]
..___tag_value_init.484:
..LN1856:
        call      set1d@PLT
..___tag_value_init.485:
..LN1857:
..B11.6:
..LN1858:
	.loc    1  192  is_stmt 1
        mov       esi, -2
..LN1859:
        pxor      xmm0, xmm0
..LN1860:
        mov       rdi, QWORD PTR [b@GOTPCREL(%rip)]
..___tag_value_init.486:
..LN1861:
        call      set1d@PLT
..___tag_value_init.487:
..LN1862:
        jmp       ..B11.11
..LN1863:
..B11.7:
..LN1864:
	.loc    1  186  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]
..LN1865:
        mov       esi, 1
..LN1866:
        mov       rdi, QWORD PTR [a@GOTPCREL(%rip)]
..___tag_value_init.488:
..LN1867:
        call      set1d@PLT
..___tag_value_init.489:
..LN1868:
..B11.8:
..LN1869:
	.loc    1  187  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]
..LN1870:
        mov       esi, 1
..LN1871:
        mov       rdi, QWORD PTR [b@GOTPCREL(%rip)]
..___tag_value_init.490:
..LN1872:
        call      set1d@PLT
..___tag_value_init.491:
..LN1873:
..B11.9:
..LN1874:
	.loc    1  188  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]
..LN1875:
        mov       esi, 1
..LN1876:
        mov       rdi, QWORD PTR [c@GOTPCREL(%rip)]
..___tag_value_init.492:
..LN1877:
        call      set1d@PLT
..___tag_value_init.493:
..LN1878:
..B11.10:
..LN1879:
	.loc    1  189  is_stmt 1
        movss     xmm0, DWORD PTR [.L_2il0floatpacket.6(%rip)]
..LN1880:
        mov       esi, 1
..LN1881:
        mov       rdi, QWORD PTR [d@GOTPCREL(%rip)]
..___tag_value_init.494:
..LN1882:
        call      set1d@PLT
..___tag_value_init.495:
..LN1883:
..B11.11:
..LN1884:
	.loc    1  197  is_stmt 1
        xor       eax, eax
..LN1885:
	.loc    1  197  epilogue_begin  is_stmt 1
        pop       rcx
	.cfi_def_cfa_offset 8
..LN1886:
        ret       
        .align    16,0x90
..LN1887:
..LN1888:
	.cfi_endproc
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
	.4byte 0x00000a69
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
	.8byte ..LN0
//	DW_AT_high_pc:
	.8byte ..LNinit.1889-..LN0
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
	.4byte .debug_str+0x1a6
	.4byte .debug_str+0x1a6
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
	.4byte 0x00000718
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
	.4byte 0x00000711
//	DW_AT_name:
	.4byte .debug_str+0x13b
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
	.4byte .debug_str+0x141
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte .debug_str+0x135
	.4byte .debug_str+0x135
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
	.4byte 0x0000071d
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
	.4byte 0x00000711
//	DW_AT_name:
	.4byte .debug_str+0x13b
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
	.4byte .debug_str+0x141
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte .debug_str+0x14d
	.4byte .debug_str+0x14d
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
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x153
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x158
//	DW_AT_type:
	.4byte 0x00000711
//	DW_AT_location:
	.2byte 0x6301
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x15d
//	DW_AT_type:
	.4byte 0x00000711
//	DW_AT_location:
	.2byte 0x6401
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x7e
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x162
//	DW_AT_type:
	.4byte 0x00000711
//	DW_AT_location:
	.2byte 0x6501
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x7f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x167
//	DW_AT_type:
	.4byte 0x00000711
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x80
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x16c
//	DW_AT_type:
	.4byte 0x00000711
//	DW_AT_location:
	.2byte 0x6601
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x88
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x171
//	DW_AT_type:
	.4byte 0x00000711
//	DW_AT_location:
	.2byte 0x6701
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x89
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x177
//	DW_AT_type:
	.4byte 0x00000711
//	DW_AT_location:
	.2byte 0x6901
//	DW_TAG_variable:
	.byte 0x0a
//	DW_AT_decl_line:
	.byte 0x8a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x17d
//	DW_AT_type:
	.4byte 0x00000711
//	DW_AT_location:
	.2byte 0x6201
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x93
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x183
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte .debug_str+0x1ac
	.4byte .debug_str+0x1ac
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
	.4byte 0x000007cd
//	DW_AT_name:
	.4byte .debug_str+0x153
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
	.4byte 0x00000711
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb0
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1b6
//	DW_AT_type:
	.4byte 0x00000711
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb1
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1bb
//	DW_AT_type:
	.4byte 0x00000711
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xb2
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x00656e6f
//	DW_AT_type:
	.4byte 0x00000711
//	DW_TAG_variable:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0xb3
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte 0x006f7774
//	DW_AT_type:
	.4byte 0x00000711
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb4
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c0
//	DW_AT_type:
	.4byte 0x00000711
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb5
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c6
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb6
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1cb
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xb7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1d0
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
	.4byte 0x000006e8
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
	.4byte 0x00000718
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
	.4byte 0x00000718
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
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0xe7
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x18c
	.4byte .debug_str+0x18c
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
	.4byte .debug_str+0xeb
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x10a
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x110
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0xec
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11a
//	DW_AT_type:
	.4byte 0x0000070a
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x197
	.4byte .debug_str+0x197
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
	.4byte .debug_str+0xeb
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0107
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x10a
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0107
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x110
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0107
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11a
//	DW_AT_type:
	.4byte 0x0000070a
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x010d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x19c
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x1a1
	.4byte .debug_str+0x1a1
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
	.4byte .debug_str+0xeb
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x10a
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x110
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0124
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11a
//	DW_AT_type:
	.4byte 0x0000070a
//	DW_TAG_variable:
	.byte 0x13
//	DW_AT_decl_line:
	.2byte 0x012a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0071
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x192
	.4byte .debug_str+0x192
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
	.4byte .debug_str+0xeb
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x013f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x10a
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x013f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x110
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x013f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11a
//	DW_AT_type:
	.4byte 0x0000070a
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
	.4byte 0x00000033
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
	.4byte 0x00000033
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
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0xe6
	.4byte .debug_str+0xe6
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
	.4byte .debug_str+0xeb
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_AT_location:
	.2byte 0x5301
//	DW_TAG_variable:
	.byte 0x10
//	DW_AT_decl_line:
	.2byte 0x0154
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x10a
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_AT_location:
	.2byte 0x5001
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0154
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x110
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.2byte 0x0154
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x11a
//	DW_AT_type:
	.4byte 0x0000070a
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
	.4byte 0x000006e8
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
	.4byte 0x00000711
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
	.4byte 0x00000711
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
	.4byte .debug_str+0xf3
//	DW_AT_type:
	.4byte 0x000006f8
//	DW_TAG_typedef:
	.byte 0x16
//	DW_AT_decl_line:
	.byte 0x87
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0xfb
//	DW_AT_type:
	.4byte 0x00000703
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0x105
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x128
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x12f
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x00000711
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x00000722
//	DW_TAG_array_type:
	.byte 0x18
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0x148
	.4byte .debug_str+0x148
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
	.4byte 0x00000711
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
	.4byte 0x00000711
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
	.4byte .debug_str+0xeb
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x10a
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x110
//	DW_AT_type:
	.4byte 0x000006ed
//	DW_TAG_variable:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x11a
//	DW_AT_type:
	.4byte 0x0000070a
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
	.4byte 0x00000033
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
	.4byte 0x00000033
	.byte 0x00
	.byte 0x00
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x15
//	DW_AT_type:
	.4byte 0x000007d2
//	DW_TAG_base_type:
	.byte 0x17
//	DW_AT_byte_size:
	.byte 0x01
//	DW_AT_encoding:
	.byte 0x06
//	DW_AT_name:
	.4byte .debug_str+0x1b1
//	DW_TAG_variable:
	.byte 0x1a
//	DW_AT_decl_line:
	.byte 0x36
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0058
//	DW_AT_type:
	.4byte 0x000007ed
//	DW_AT_location:
	.2byte 0x0309
	.8byte X
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x0000080e
//	DW_AT_location:
	.2byte 0x0309
	.8byte Y
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x0000082f
//	DW_AT_location:
	.2byte 0x0309
	.8byte Z
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000850
//	DW_AT_location:
	.2byte 0x0309
	.8byte U
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000871
//	DW_AT_location:
	.2byte 0x0309
	.8byte V
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte .debug_str+0x186
//	DW_AT_type:
	.4byte 0x00000894
//	DW_AT_location:
	.2byte 0x0309
	.8byte array
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x000008b5
//	DW_AT_location:
	.2byte 0x0309
	.8byte x
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte .debug_str+0x1d6
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte .debug_str+0x1db
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
	.4byte 0x00000902
//	DW_AT_location:
	.2byte 0x0309
	.8byte a
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000923
//	DW_AT_location:
	.2byte 0x0309
	.8byte b
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000944
//	DW_AT_location:
	.2byte 0x0309
	.8byte c
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000965
//	DW_AT_location:
	.2byte 0x0309
	.8byte d
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000986
//	DW_AT_location:
	.2byte 0x0309
	.8byte e
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x000009a8
//	DW_AT_location:
	.2byte 0x0309
	.8byte aa
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x000009cb
//	DW_AT_location:
	.2byte 0x0309
	.8byte bb
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x000009ee
//	DW_AT_location:
	.2byte 0x0309
	.8byte cc
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte 0x00000a11
//	DW_AT_location:
	.2byte 0x0309
	.8byte tt
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_array_type:
	.byte 0x1b
//	DW_AT_type:
	.4byte 0x00000711
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
	.4byte .debug_str+0x1e4
//	DW_AT_type:
	.4byte 0x00000a35
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
	.4byte 0x00000718
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
	.4byte 0x00000718
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
	.8byte 0x65762d6f6e662d20
	.8byte 0x73612d65736f6272
	.2byte 0x006d
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
