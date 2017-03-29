	.text
	.intel_syntax noprefix
	.file	"tsc.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI0_1:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
.LCPI0_2:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
.LCPI0_3:
	.quad	5                       # 0x5
	.quad	5                       # 0x5
.LCPI0_4:
	.quad	8                       # 0x8
	.quad	8                       # 0x8
	.text
	.globl	set1d
	.p2align	4, 0x90
	.type	set1d,@function
set1d:                                  # @set1d
	.cfi_startproc
# BB#0:                                 # %entry
	cmp	esi, -1
	je	.LBB0_4
# BB#1:                                 # %entry
	cmp	esi, -2
	jne	.LBB0_6
# BB#2:                                 # %vector.body.preheader
	mov	eax, 1
	movq	xmm0, rax
	pslldq	xmm0, 8                 # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	xmm2, xmmword ptr [rip + .LCPI0_0] # xmm2 = [2,3]
	mov	eax, 4
	movdqa	xmm8, xmmword ptr [rip + .LCPI0_1] # xmm8 = [1,1]
	movaps	xmm3, xmmword ptr [rip + .LCPI0_2] # xmm3 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	movdqa	xmm4, xmmword ptr [rip + .LCPI0_3] # xmm4 = [5,5]
	movdqa	xmm5, xmmword ptr [rip + .LCPI0_4] # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	xmm6, xmm0
	paddq	xmm6, xmm8
	movdqa	xmm1, xmm2
	paddq	xmm1, xmm8
	movdqa	xmm7, xmm1
	psrlq	xmm7, 32
	pmuludq	xmm7, xmm1
	psllq	xmm7, 32
	pmuludq	xmm1, xmm1
	paddq	xmm1, xmm7
	paddq	xmm1, xmm7
	movdqa	xmm7, xmm6
	psrlq	xmm7, 32
	pmuludq	xmm7, xmm6
	psllq	xmm7, 32
	pmuludq	xmm6, xmm6
	paddq	xmm6, xmm7
	paddq	xmm6, xmm7
	pshufd	xmm6, xmm6, 232         # xmm6 = xmm6[0,2,2,3]
	pshufd	xmm1, xmm1, 232         # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	xmm6, xmm1      # xmm6 = xmm6[0],xmm1[0]
	cvtdq2ps	xmm1, xmm6
	rcpps	xmm6, xmm1
	mulps	xmm1, xmm6
	movaps	xmm7, xmm3
	subps	xmm7, xmm1
	mulps	xmm7, xmm6
	addps	xmm7, xmm6
	movups	xmmword ptr [rdi + 4*rax - 16], xmm7
	movdqa	xmm1, xmm0
	paddq	xmm1, xmm4
	movdqa	xmm6, xmm2
	paddq	xmm6, xmm4
	movdqa	xmm7, xmm6
	psrlq	xmm7, 32
	pmuludq	xmm7, xmm6
	psllq	xmm7, 32
	pmuludq	xmm6, xmm6
	paddq	xmm6, xmm7
	paddq	xmm6, xmm7
	movdqa	xmm7, xmm1
	psrlq	xmm7, 32
	pmuludq	xmm7, xmm1
	psllq	xmm7, 32
	pmuludq	xmm1, xmm1
	paddq	xmm1, xmm7
	paddq	xmm1, xmm7
	pshufd	xmm1, xmm1, 232         # xmm1 = xmm1[0,2,2,3]
	pshufd	xmm6, xmm6, 232         # xmm6 = xmm6[0,2,2,3]
	punpcklqdq	xmm1, xmm6      # xmm1 = xmm1[0],xmm6[0]
	cvtdq2ps	xmm1, xmm1
	rcpps	xmm6, xmm1
	mulps	xmm1, xmm6
	movaps	xmm7, xmm3
	subps	xmm7, xmm1
	mulps	xmm7, xmm6
	addps	xmm7, xmm6
	movups	xmmword ptr [rdi + 4*rax], xmm7
	paddq	xmm0, xmm5
	paddq	xmm2, xmm5
	add	rax, 8
	cmp	rax, 32004
	jne	.LBB0_3
	jmp	.LBB0_22
.LBB0_4:                                # %vector.body70.preheader
	mov	eax, 1
	movq	xmm0, rax
	pslldq	xmm0, 8                 # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	xmm1, xmmword ptr [rip + .LCPI0_0] # xmm1 = [2,3]
	mov	eax, 4
	movdqa	xmm8, xmmword ptr [rip + .LCPI0_1] # xmm8 = [1,1]
	movaps	xmm2, xmmword ptr [rip + .LCPI0_2] # xmm2 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	movdqa	xmm4, xmmword ptr [rip + .LCPI0_3] # xmm4 = [5,5]
	movdqa	xmm5, xmmword ptr [rip + .LCPI0_4] # xmm5 = [8,8]
	.p2align	4, 0x90
.LBB0_5:                                # %vector.body70
                                        # =>This Inner Loop Header: Depth=1
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm0
	paddq	xmm7, xmm8
	pshufd	xmm7, xmm7, 232         # xmm7 = xmm7[0,2,2,3]
	pshufd	xmm6, xmm6, 232         # xmm6 = xmm6[0,2,2,3]
	punpcklqdq	xmm7, xmm6      # xmm7 = xmm7[0],xmm6[0]
	cvtdq2ps	xmm6, xmm7
	rcpps	xmm7, xmm6
	mulps	xmm6, xmm7
	movaps	xmm3, xmm2
	subps	xmm3, xmm6
	mulps	xmm3, xmm7
	addps	xmm3, xmm7
	movups	xmmword ptr [rdi + 4*rax - 16], xmm3
	movdqa	xmm3, xmm1
	paddq	xmm3, xmm4
	movdqa	xmm6, xmm0
	paddq	xmm6, xmm4
	pshufd	xmm6, xmm6, 232         # xmm6 = xmm6[0,2,2,3]
	pshufd	xmm3, xmm3, 232         # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	xmm6, xmm3      # xmm6 = xmm6[0],xmm3[0]
	cvtdq2ps	xmm3, xmm6
	rcpps	xmm6, xmm3
	mulps	xmm3, xmm6
	movaps	xmm7, xmm2
	subps	xmm7, xmm3
	mulps	xmm7, xmm6
	addps	xmm7, xmm6
	movups	xmmword ptr [rdi + 4*rax], xmm7
	paddq	xmm0, xmm5
	paddq	xmm1, xmm5
	add	rax, 8
	cmp	rax, 32004
	jne	.LBB0_5
	jmp	.LBB0_22
.LBB0_6:                                # %for.body30.preheader
	movsxd	r9, esi
	mov	eax, 31999
	xor	edx, edx
	div	r9
	inc	rax
	cmp	rax, 8
	jae	.LBB0_8
# BB#7:
	xor	edx, edx
	jmp	.LBB0_21
.LBB0_8:                                # %min.iters.checked84
	mov	rdx, rax
	and	rdx, 65528
	je	.LBB0_9
# BB#10:                                # %vector.scevcheck
	cmp	esi, 1
	jne	.LBB0_11
# BB#12:                                # %vector.ph86
	movaps	xmm1, xmm0
	shufps	xmm1, xmm1, 0           # xmm1 = xmm1[0,0,0,0]
	lea	r8, [rdx - 8]
	mov	r10d, r8d
	shr	r10d, 3
	inc	r10d
	and	r10, 3
	je	.LBB0_13
# BB#14:                                # %vector.body81.prol.preheader
	lea	rcx, [rdi + 16]
	mov	r11, r9
	shl	r11, 5
	xor	esi, esi
	.p2align	4, 0x90
.LBB0_15:                               # %vector.body81.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	xmmword ptr [rcx - 16], xmm1
	movups	xmmword ptr [rcx], xmm1
	add	rsi, 8
	add	rcx, r11
	dec	r10
	jne	.LBB0_15
	jmp	.LBB0_16
.LBB0_9:
	xor	edx, edx
	jmp	.LBB0_21
.LBB0_11:
	xor	edx, edx
	jmp	.LBB0_21
.LBB0_13:
	xor	esi, esi
.LBB0_16:                               # %vector.body81.prol.loopexit
	cmp	r8, 24
	jb	.LBB0_19
# BB#17:                                # %vector.ph86.new
	mov	rcx, rsi
	imul	rcx, r9
	lea	rcx, [rdi + 4*rcx]
	mov	r8, r9
	shl	r8, 7
	mov	r10, r9
	shl	r10, 5
	.p2align	4, 0x90
.LBB0_18:                               # %vector.body81
                                        # =>This Inner Loop Header: Depth=1
	movups	xmmword ptr [rcx], xmm1
	movups	xmmword ptr [rcx + 16], xmm1
	lea	r11, [rcx + r10]
	movups	xmmword ptr [rcx + r10], xmm1
	movups	xmmword ptr [rcx + r10 + 16], xmm1
	movups	xmmword ptr [r10 + r11], xmm1
	movups	xmmword ptr [r10 + r11 + 16], xmm1
	lea	r11, [r11 + r10]
	movups	xmmword ptr [r10 + r11], xmm1
	movups	xmmword ptr [r10 + r11 + 16], xmm1
	add	rsi, 32
	add	rcx, r8
	cmp	rsi, rdx
	jne	.LBB0_18
.LBB0_19:                               # %middle.block82
	cmp	rax, rdx
	je	.LBB0_22
# BB#20:
	imul	rdx, r9
	.p2align	4, 0x90
.LBB0_21:                               # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	movss	dword ptr [rdi + 4*rdx], xmm0
	add	rdx, r9
	cmp	rdx, 32000
	jl	.LBB0_21
.LBB0_22:                               # %if.end36
	xor	eax, eax
	ret
.Lfunc_end0:
	.size	set1d, .Lfunc_end0-set1d
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_0:
	.long	1065353216              # float 1
	.text
	.globl	set2d
	.p2align	4, 0x90
	.type	set2d,@function
set2d:                                  # @set2d
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	push	r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	push	r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	push	r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	push	r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	push	rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
.Ltmp6:
	.cfi_offset rbx, -56
.Ltmp7:
	.cfi_offset r12, -48
.Ltmp8:
	.cfi_offset r13, -40
.Ltmp9:
	.cfi_offset r14, -32
.Ltmp10:
	.cfi_offset r15, -24
.Ltmp11:
	.cfi_offset rbp, -16
	mov	r8d, esi
	cmp	r8d, -1
	je	.LBB1_4
# BB#1:                                 # %entry
	cmp	r8d, -2
	jne	.LBB1_6
# BB#2:                                 # %for.cond23.preheader.preheader
	add	rdi, 716
	mov	eax, 1
	movss	xmm0, dword ptr [rip + .LCPI1_0] # xmm0 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB1_3:                                # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	mov	ecx, eax
	imul	ecx, ecx
	xorps	xmm2, xmm2
	cvtsi2ss	xmm2, ecx
	movaps	xmm1, xmm0
	divss	xmm1, xmm2
	movaps	xmm2, xmm1
	shufps	xmm2, xmm2, 0           # xmm2 = xmm2[0,0,0,0]
	movups	xmmword ptr [rdi - 716], xmm2
	movups	xmmword ptr [rdi - 700], xmm2
	movups	xmmword ptr [rdi - 684], xmm2
	movups	xmmword ptr [rdi - 668], xmm2
	movups	xmmword ptr [rdi - 652], xmm2
	movups	xmmword ptr [rdi - 636], xmm2
	movups	xmmword ptr [rdi - 620], xmm2
	movups	xmmword ptr [rdi - 604], xmm2
	movups	xmmword ptr [rdi - 588], xmm2
	movups	xmmword ptr [rdi - 572], xmm2
	movups	xmmword ptr [rdi - 556], xmm2
	movups	xmmword ptr [rdi - 540], xmm2
	movups	xmmword ptr [rdi - 524], xmm2
	movups	xmmword ptr [rdi - 508], xmm2
	movups	xmmword ptr [rdi - 492], xmm2
	movups	xmmword ptr [rdi - 476], xmm2
	movups	xmmword ptr [rdi - 460], xmm2
	movups	xmmword ptr [rdi - 444], xmm2
	movups	xmmword ptr [rdi - 428], xmm2
	movups	xmmword ptr [rdi - 412], xmm2
	movups	xmmword ptr [rdi - 396], xmm2
	movups	xmmword ptr [rdi - 380], xmm2
	movups	xmmword ptr [rdi - 364], xmm2
	movups	xmmword ptr [rdi - 348], xmm2
	movups	xmmword ptr [rdi - 332], xmm2
	movups	xmmword ptr [rdi - 316], xmm2
	movups	xmmword ptr [rdi - 300], xmm2
	movups	xmmword ptr [rdi - 284], xmm2
	movups	xmmword ptr [rdi - 268], xmm2
	movups	xmmword ptr [rdi - 252], xmm2
	movups	xmmword ptr [rdi - 236], xmm2
	movups	xmmword ptr [rdi - 220], xmm2
	movups	xmmword ptr [rdi - 204], xmm2
	movups	xmmword ptr [rdi - 188], xmm2
	movups	xmmword ptr [rdi - 172], xmm2
	movups	xmmword ptr [rdi - 156], xmm2
	movups	xmmword ptr [rdi - 140], xmm2
	movups	xmmword ptr [rdi - 124], xmm2
	movups	xmmword ptr [rdi - 108], xmm2
	movups	xmmword ptr [rdi - 92], xmm2
	movups	xmmword ptr [rdi - 76], xmm2
	movups	xmmword ptr [rdi - 60], xmm2
	movups	xmmword ptr [rdi - 44], xmm2
	movups	xmmword ptr [rdi - 28], xmm2
	movss	dword ptr [rdi - 12], xmm1
	movss	dword ptr [rdi - 8], xmm1
	movss	dword ptr [rdi - 4], xmm1
	movss	dword ptr [rdi], xmm1
	add	rdi, 720
	inc	rax
	cmp	rax, 181
	jne	.LBB1_3
	jmp	.LBB1_22
.LBB1_4:                                # %for.cond2.preheader.preheader
	add	rdi, 716
	mov	rax, -180
	movss	xmm0, dword ptr [rip + .LCPI1_0] # xmm0 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB1_5:                                # %for.body5
                                        # =>This Inner Loop Header: Depth=1
	lea	ecx, [rax + 181]
	xorps	xmm2, xmm2
	cvtsi2ss	xmm2, ecx
	movaps	xmm1, xmm0
	divss	xmm1, xmm2
	movaps	xmm2, xmm1
	shufps	xmm2, xmm2, 0           # xmm2 = xmm2[0,0,0,0]
	movups	xmmword ptr [rdi - 716], xmm2
	movups	xmmword ptr [rdi - 700], xmm2
	movups	xmmword ptr [rdi - 684], xmm2
	movups	xmmword ptr [rdi - 668], xmm2
	movups	xmmword ptr [rdi - 652], xmm2
	movups	xmmword ptr [rdi - 636], xmm2
	movups	xmmword ptr [rdi - 620], xmm2
	movups	xmmword ptr [rdi - 604], xmm2
	movups	xmmword ptr [rdi - 588], xmm2
	movups	xmmword ptr [rdi - 572], xmm2
	movups	xmmword ptr [rdi - 556], xmm2
	movups	xmmword ptr [rdi - 540], xmm2
	movups	xmmword ptr [rdi - 524], xmm2
	movups	xmmword ptr [rdi - 508], xmm2
	movups	xmmword ptr [rdi - 492], xmm2
	movups	xmmword ptr [rdi - 476], xmm2
	movups	xmmword ptr [rdi - 460], xmm2
	movups	xmmword ptr [rdi - 444], xmm2
	movups	xmmword ptr [rdi - 428], xmm2
	movups	xmmword ptr [rdi - 412], xmm2
	movups	xmmword ptr [rdi - 396], xmm2
	movups	xmmword ptr [rdi - 380], xmm2
	movups	xmmword ptr [rdi - 364], xmm2
	movups	xmmword ptr [rdi - 348], xmm2
	movups	xmmword ptr [rdi - 332], xmm2
	movups	xmmword ptr [rdi - 316], xmm2
	movups	xmmword ptr [rdi - 300], xmm2
	movups	xmmword ptr [rdi - 284], xmm2
	movups	xmmword ptr [rdi - 268], xmm2
	movups	xmmword ptr [rdi - 252], xmm2
	movups	xmmword ptr [rdi - 236], xmm2
	movups	xmmword ptr [rdi - 220], xmm2
	movups	xmmword ptr [rdi - 204], xmm2
	movups	xmmword ptr [rdi - 188], xmm2
	movups	xmmword ptr [rdi - 172], xmm2
	movups	xmmword ptr [rdi - 156], xmm2
	movups	xmmword ptr [rdi - 140], xmm2
	movups	xmmword ptr [rdi - 124], xmm2
	movups	xmmword ptr [rdi - 108], xmm2
	movups	xmmword ptr [rdi - 92], xmm2
	movups	xmmword ptr [rdi - 76], xmm2
	movups	xmmword ptr [rdi - 60], xmm2
	movups	xmmword ptr [rdi - 44], xmm2
	movups	xmmword ptr [rdi - 28], xmm2
	movss	dword ptr [rdi - 12], xmm1
	movss	dword ptr [rdi - 8], xmm1
	movss	dword ptr [rdi - 4], xmm1
	movss	dword ptr [rdi], xmm1
	add	rdi, 720
	inc	rax
	jne	.LBB1_5
	jmp	.LBB1_22
.LBB1_6:                                # %for.cond52.preheader.preheader
	movsxd	r11, r8d
	mov	eax, 179
	xor	edx, edx
	div	r11
	inc	rax
	mov	esi, eax
	and	esi, 504
	lea	rcx, [rsi - 8]
	mov	qword ptr [rsp - 16], rcx # 8-byte Spill
	mov	r10d, ecx
	shr	r10d, 3
	inc	r10d
	mov	rcx, r11
	imul	rcx, rsi
	mov	qword ptr [rsp - 32], rcx # 8-byte Spill
	movaps	xmm1, xmm0
	shufps	xmm1, xmm1, 0           # xmm1 = xmm1[0,0,0,0]
	and	r10d, 3
	mov	r12, r11
	shl	r12, 5
	lea	rcx, [4*r11]
	mov	qword ptr [rsp - 40], rcx # 8-byte Spill
	mov	rcx, r11
	shl	rcx, 7
	mov	qword ptr [rsp - 48], rcx # 8-byte Spill
	xor	r15d, r15d
	lea	r9, [rdi + 16]
	mov	dword ptr [rsp - 52], r8d # 4-byte Spill
	mov	qword ptr [rsp - 8], rax # 8-byte Spill
	mov	qword ptr [rsp - 24], r10 # 8-byte Spill
	jmp	.LBB1_7
.LBB1_14:                               #   in Loop: Header=BB1_7 Depth=1
	xor	edx, edx
.LBB1_17:                               # %vector.body140.prol.loopexit
                                        #   in Loop: Header=BB1_7 Depth=1
	cmp	qword ptr [rsp - 16], 24 # 8-byte Folded Reload
	jb	.LBB1_20
# BB#18:                                # %vector.ph145.new
                                        #   in Loop: Header=BB1_7 Depth=1
	lea	rbp, [rdx + 8]
	mov	rax, qword ptr [rsp - 40] # 8-byte Reload
	imul	rbp, rax
	lea	r8, [rdx + 24]
	imul	r8, rax
	mov	r14, rax
	imul	r14, rdx
	lea	r10, [rdx + 16]
	imul	r10, rax
	mov	rax, qword ptr [rsp - 48] # 8-byte Reload
	mov	r13, r9
	.p2align	4, 0x90
.LBB1_19:                               # %vector.body140
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	xmmword ptr [r14 + r13 - 16], xmm1
	movups	xmmword ptr [r14 + r13], xmm1
	movups	xmmword ptr [rbp + r13 - 16], xmm1
	movups	xmmword ptr [rbp + r13], xmm1
	movups	xmmword ptr [r10 + r13 - 16], xmm1
	movups	xmmword ptr [r10 + r13], xmm1
	movups	xmmword ptr [r8 + r13 - 16], xmm1
	movups	xmmword ptr [r8 + r13], xmm1
	add	rdx, 32
	add	r13, rax
	cmp	rdx, rsi
	jne	.LBB1_19
.LBB1_20:                               # %middle.block141
                                        #   in Loop: Header=BB1_7 Depth=1
	mov	rax, qword ptr [rsp - 8] # 8-byte Reload
	cmp	rax, rsi
	mov	rdx, qword ptr [rsp - 32] # 8-byte Reload
	mov	r8d, dword ptr [rsp - 52] # 4-byte Reload
	mov	r10, qword ptr [rsp - 24] # 8-byte Reload
	jne	.LBB1_9
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_7:                                # %for.cond52.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_10 Depth 2
	cmp	rax, 7
	jbe	.LBB1_8
# BB#11:                                # %min.iters.checked143
                                        #   in Loop: Header=BB1_7 Depth=1
	test	rsi, rsi
	je	.LBB1_8
# BB#12:                                # %vector.scevcheck
                                        #   in Loop: Header=BB1_7 Depth=1
	cmp	r8d, 1
	jne	.LBB1_8
# BB#13:                                # %vector.ph145
                                        #   in Loop: Header=BB1_7 Depth=1
	test	r10, r10
	je	.LBB1_14
# BB#15:                                # %vector.body140.prol.preheader
                                        #   in Loop: Header=BB1_7 Depth=1
	mov	rbp, r9
	xor	edx, edx
	mov	rbx, r10
	.p2align	4, 0x90
.LBB1_16:                               # %vector.body140.prol
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	xmmword ptr [rbp - 16], xmm1
	movups	xmmword ptr [rbp], xmm1
	add	rdx, 8
	add	rbp, r12
	dec	rbx
	jne	.LBB1_16
	jmp	.LBB1_17
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_7 Depth=1
	xor	edx, edx
.LBB1_9:                                # %for.body56.preheader
                                        #   in Loop: Header=BB1_7 Depth=1
	lea	rbp, [rdi + 4*rdx]
	xor	ebx, ebx
	.p2align	4, 0x90
.LBB1_10:                               # %for.body56
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	dword ptr [rbp + 4*rbx], xmm0
	add	rbx, r11
	lea	rcx, [rdx + rbx]
	cmp	rcx, 180
	jl	.LBB1_10
.LBB1_21:                               # %for.cond.cleanup55
                                        #   in Loop: Header=BB1_7 Depth=1
	inc	r15
	add	r9, 720
	add	rdi, 720
	cmp	r15, 180
	jne	.LBB1_7
.LBB1_22:                               # %if.end67
	xor	eax, eax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end1:
	.size	set2d, .Lfunc_end1-set2d
	.cfi_endproc

	.globl	check
	.p2align	4, 0x90
	.type	check,@function
check:                                  # @check
	.cfi_startproc
# BB#0:                                 # %entry
                                        # kill: %EDI<def> %EDI<kill> %RDI<def>
	xorps	xmm10, xmm10
	xor	eax, eax
	mov	r8, qword ptr [rip + a@GOTPCREL]
	mov	r9, qword ptr [rip + b@GOTPCREL]
	mov	rsi, qword ptr [rip + c@GOTPCREL]
	mov	rcx, qword ptr [rip + d@GOTPCREL]
	mov	rdx, qword ptr [rip + e@GOTPCREL]
	xorps	xmm11, xmm11
	xorps	xmm6, xmm6
	xorps	xmm3, xmm3
	xorps	xmm7, xmm7
	xorps	xmm2, xmm2
	xorps	xmm0, xmm0
	xorps	xmm1, xmm1
	xorps	xmm5, xmm5
	xorps	xmm4, xmm4
	.p2align	4, 0x90
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addps	xmm5, xmmword ptr [r8 + rax]
	addps	xmm4, xmmword ptr [r8 + rax + 16]
	addps	xmm0, xmmword ptr [r9 + rax]
	addps	xmm1, xmmword ptr [r9 + rax + 16]
	addps	xmm7, xmmword ptr [rsi + rax]
	addps	xmm2, xmmword ptr [rsi + rax + 16]
	addps	xmm6, xmmword ptr [rcx + rax]
	addps	xmm3, xmmword ptr [rcx + rax + 16]
	addps	xmm10, xmmword ptr [rdx + rax]
	addps	xmm11, xmmword ptr [rdx + rax + 16]
	add	rax, 32
	cmp	rax, 128000
	jne	.LBB2_1
# BB#2:                                 # %middle.block
	push	r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	push	r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	push	rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset rbx, -32
.Ltmp16:
	.cfi_offset r14, -24
.Ltmp17:
	.cfi_offset r15, -16
	addps	xmm4, xmm5
	movaps	xmm5, xmm4
	movhlps	xmm5, xmm5              # xmm5 = xmm5[1,1]
	addps	xmm5, xmm4
	movaps	xmm8, xmm5
	shufps	xmm8, xmm8, 229         # xmm8 = xmm8[1,1,2,3]
	addps	xmm8, xmm5
	addps	xmm1, xmm0
	movaps	xmm0, xmm1
	movhlps	xmm0, xmm0              # xmm0 = xmm0[1,1]
	addps	xmm0, xmm1
	movaps	xmm12, xmm0
	shufps	xmm12, xmm12, 229       # xmm12 = xmm12[1,1,2,3]
	addps	xmm12, xmm0
	addps	xmm2, xmm7
	movaps	xmm0, xmm2
	movhlps	xmm0, xmm0              # xmm0 = xmm0[1,1]
	addps	xmm0, xmm2
	movaps	xmm9, xmm0
	shufps	xmm9, xmm9, 229         # xmm9 = xmm9[1,1,2,3]
	addps	xmm9, xmm0
	addps	xmm3, xmm6
	movaps	xmm0, xmm3
	movhlps	xmm0, xmm0              # xmm0 = xmm0[1,1]
	addps	xmm0, xmm3
	movaps	xmm3, xmm0
	shufps	xmm3, xmm3, 229         # xmm3 = xmm3[1,1,2,3]
	addps	xmm3, xmm0
	addps	xmm11, xmm10
	movaps	xmm0, xmm11
	movhlps	xmm0, xmm0              # xmm0 = xmm0[1,1]
	addps	xmm0, xmm11
	movaps	xmm4, xmm0
	shufps	xmm4, xmm4, 229         # xmm4 = xmm4[1,1,2,3]
	addps	xmm4, xmm0
	mov	r8, qword ptr [rip + aa@GOTPCREL]
	lea	r11, [r8 + 16]
	mov	r9, qword ptr [rip + bb@GOTPCREL]
	lea	r14, [r9 + 16]
	mov	r10, qword ptr [rip + cc@GOTPCREL]
	lea	r15, [r10 + 16]
	xorps	xmm5, xmm5
	xor	eax, eax
	xorps	xmm6, xmm6
	xorps	xmm7, xmm7
	.p2align	4, 0x90
.LBB2_3:                                # %for.cond18.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	xorps	xmm0, xmm0
	movss	xmm0, xmm7              # xmm0 = xmm7[0],xmm0[1,2,3]
	xorps	xmm7, xmm7
	movss	xmm7, xmm6              # xmm7 = xmm6[0],xmm7[1,2,3]
	xorps	xmm6, xmm6
	movss	xmm6, xmm5              # xmm6 = xmm5[0],xmm6[1,2,3]
	mov	ecx, 176
	mov	rbx, r15
	mov	rsi, r14
	mov	rdx, r11
	xorps	xmm5, xmm5
	xorps	xmm2, xmm2
	xorps	xmm1, xmm1
	.p2align	4, 0x90
.LBB2_4:                                # %vector.body310
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addps	xmm0, xmmword ptr [rdx - 16]
	addps	xmm1, xmmword ptr [rdx]
	addps	xmm7, xmmword ptr [rsi - 16]
	addps	xmm2, xmmword ptr [rsi]
	addps	xmm6, xmmword ptr [rbx - 16]
	addps	xmm5, xmmword ptr [rbx]
	add	rdx, 32
	add	rsi, 32
	add	rbx, 32
	add	rcx, -8
	jne	.LBB2_4
# BB#5:                                 # %for.body21
                                        #   in Loop: Header=BB2_3 Depth=1
	addps	xmm1, xmm0
	movaps	xmm0, xmm1
	movhlps	xmm0, xmm0              # xmm0 = xmm0[1,1]
	addps	xmm0, xmm1
	addps	xmm2, xmm7
	movaps	xmm1, xmm2
	movhlps	xmm1, xmm1              # xmm1 = xmm1[1,1]
	addps	xmm1, xmm2
	addps	xmm5, xmm6
	movaps	xmm2, xmm5
	movhlps	xmm2, xmm2              # xmm2 = xmm2[1,1]
	addps	xmm2, xmm5
	movaps	xmm5, xmm2
	shufps	xmm5, xmm5, 229         # xmm5 = xmm5[1,1,2,3]
	addps	xmm5, xmm2
	movaps	xmm6, xmm1
	shufps	xmm6, xmm6, 229         # xmm6 = xmm6[1,1,2,3]
	addps	xmm6, xmm1
	movaps	xmm7, xmm0
	shufps	xmm7, xmm7, 229         # xmm7 = xmm7[1,1,2,3]
	addps	xmm7, xmm0
	imul	rcx, rax, 720
	addss	xmm7, dword ptr [r8 + rcx + 704]
	addss	xmm6, dword ptr [r9 + rcx + 704]
	addss	xmm5, dword ptr [r10 + rcx + 704]
	addss	xmm7, dword ptr [r8 + rcx + 708]
	addss	xmm6, dword ptr [r9 + rcx + 708]
	addss	xmm5, dword ptr [r10 + rcx + 708]
	addss	xmm7, dword ptr [r8 + rcx + 712]
	addss	xmm6, dword ptr [r9 + rcx + 712]
	addss	xmm5, dword ptr [r10 + rcx + 712]
	addss	xmm7, dword ptr [r8 + rcx + 716]
	addss	xmm6, dword ptr [r9 + rcx + 716]
	addss	xmm5, dword ptr [r10 + rcx + 716]
	inc	rax
	add	r11, 720
	add	r14, 720
	add	r15, 720
	cmp	rax, 180
	jne	.LBB2_3
# BB#6:                                 # %vector.body353.preheader
	xorps	xmm0, xmm0
	mov	eax, 20
	mov	rcx, qword ptr [rip + array@GOTPCREL]
	xorps	xmm1, xmm1
	pop	rbx
	pop	r14
	pop	r15
	.p2align	4, 0x90
.LBB2_7:                                # %vector.body353
                                        # =>This Inner Loop Header: Depth=1
	addps	xmm0, xmmword ptr [rcx + 4*rax - 80]
	addps	xmm1, xmmword ptr [rcx + 4*rax - 64]
	addps	xmm0, xmmword ptr [rcx + 4*rax - 48]
	addps	xmm1, xmmword ptr [rcx + 4*rax - 32]
	addps	xmm0, xmmword ptr [rcx + 4*rax - 16]
	addps	xmm1, xmmword ptr [rcx + 4*rax]
	add	rax, 24
	cmp	rax, 32420
	jne	.LBB2_7
# BB#8:                                 # %middle.block354
	lea	eax, [rdi + 12]
	cmp	eax, 135
	ja	.LBB2_12
# BB#9:                                 # %middle.block354
	lea	rcx, [rip + .LJTI2_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB2_10:                               # %if.then162
	mov	rax, qword ptr [rip + temp@GOTPCREL]
	addss	xmm12, dword ptr [rax]
.LBB2_11:                               # %if.then57
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm12
	jmp	.LBB2_31
.LBB2_12:                               # %middle.block354
	cmp	edi, 1122
	je	.LBB2_29
# BB#13:                                # %middle.block354
	cmp	edi, 112233
	jne	.LBB2_15
# BB#14:                                # %if.then141
	addss	xmm6, xmm7
	addss	xmm6, xmm5
	jmp	.LBB2_30
.LBB2_15:                               # %if.end166
	ret
.LBB2_16:                               # %if.then156
	mov	rax, qword ptr [rip + temp@GOTPCREL]
	movss	xmm0, dword ptr [rax]   # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	jmp	.LBB2_31
.LBB2_17:                               # %if.then99
	addps	xmm1, xmm0
	movaps	xmm0, xmm1
	movhlps	xmm0, xmm0              # xmm0 = xmm0[1,1]
	addps	xmm0, xmm1
	movaps	xmm1, xmm0
	shufps	xmm1, xmm1, 229         # xmm1 = xmm1[1,1,2,3]
	addps	xmm1, xmm0
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm1
	jmp	.LBB2_31
.LBB2_18:                               # %if.then
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm8
	jmp	.LBB2_31
.LBB2_19:                               # %if.then69
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm3
	jmp	.LBB2_31
.LBB2_20:                               # %if.then105
	addss	xmm12, xmm8
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm12
	jmp	.LBB2_31
.LBB2_21:                               # %if.then119
	addss	xmm9, xmm8
.LBB2_22:                               # %if.then63
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm9
	jmp	.LBB2_31
.LBB2_23:                               # %if.then112
	addss	xmm4, xmm12
.LBB2_24:                               # %if.then75
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm4
	jmp	.LBB2_31
.LBB2_25:                               # %if.then93
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm5
	jmp	.LBB2_31
.LBB2_26:                               # %if.then149
	addss	xmm7, xmm8
.LBB2_27:                               # %if.then81
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm7
	jmp	.LBB2_31
.LBB2_28:                               # %if.then126
	addss	xmm12, xmm8
	addss	xmm12, xmm9
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm12
	jmp	.LBB2_31
.LBB2_29:                               # %if.then134
	addss	xmm6, xmm7
.LBB2_30:                               # %if.then87
	xorps	xmm0, xmm0
	cvtss2sd	xmm0, xmm6
.LBB2_31:                               # %if.then
	lea	rdi, [rip + .L.str]
	mov	al, 1
	jmp	printf@PLT              # TAILCALL
.Lfunc_end2:
	.size	check, .Lfunc_end2-check
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI2_0:
	.long	.LBB2_10-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_16-.LJTI2_0
	.long	.LBB2_17-.LJTI2_0
	.long	.LBB2_18-.LJTI2_0
	.long	.LBB2_11-.LJTI2_0
	.long	.LBB2_22-.LJTI2_0
	.long	.LBB2_19-.LJTI2_0
	.long	.LBB2_24-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_27-.LJTI2_0
	.long	.LBB2_20-.LJTI2_0
	.long	.LBB2_21-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_30-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_23-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_25-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_26-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_28-.LJTI2_0

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_0:
	.long	1065353224              # float 1.00000095
.LCPI3_1:
	.long	1065353216              # float 1
.LCPI3_2:
	.long	897988541               # float 9.99999997E-7
	.text
	.globl	init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset rbx, -16
	mov	rbx, rdi
	lea	rsi, [rip + .L.str.1]
	call	strcmp@PLT
	test	eax, eax
	je	.LBB3_1
# BB#2:                                 # %cond.end96
	lea	rsi, [rip + .L.str.2]
	mov	rdi, rbx
	call	strcmp@PLT
	test	eax, eax
	je	.LBB3_3
# BB#4:                                 # %cond.end157
	lea	rsi, [rip + .L.str.3]
	mov	rdi, rbx
	call	strcmp@PLT
	test	eax, eax
	jne	.LBB3_7
# BB#5:                                 # %if.then160
	mov	rdi, qword ptr [rip + a@GOTPCREL]
	movss	xmm0, dword ptr [rip + .LCPI3_0] # xmm0 = mem[0],zero,zero,zero
	mov	esi, 1
	jmp	.LBB3_6
.LBB3_1:                                # %if.then37
	mov	rdi, qword ptr [rip + a@GOTPCREL]
	movss	xmm0, dword ptr [rip + .LCPI3_2] # xmm0 = mem[0],zero,zero,zero
	mov	esi, 1
	call	set1d@PLT
	mov	rdi, qword ptr [rip + b@GOTPCREL]
	mov	esi, 1
	movss	xmm0, dword ptr [rip + .LCPI3_2] # xmm0 = mem[0],zero,zero,zero
	call	set1d@PLT
	mov	rdi, qword ptr [rip + c@GOTPCREL]
	mov	esi, 1
	movss	xmm0, dword ptr [rip + .LCPI3_2] # xmm0 = mem[0],zero,zero,zero
	call	set1d@PLT
	mov	rdi, qword ptr [rip + d@GOTPCREL]
	mov	esi, 1
	movss	xmm0, dword ptr [rip + .LCPI3_2] # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB3_6
.LBB3_3:                                # %if.then99
	mov	rdi, qword ptr [rip + a@GOTPCREL]
	movss	xmm0, dword ptr [rip + .LCPI3_1] # xmm0 = mem[0],zero,zero,zero
	mov	esi, 1
	call	set1d@PLT
	mov	rdi, qword ptr [rip + b@GOTPCREL]
	xorps	xmm0, xmm0
	mov	esi, -2
.LBB3_6:                                # %if.end165
	call	set1d@PLT
.LBB3_7:                                # %if.end165
	xor	eax, eax
	pop	rbx
	ret
.Lfunc_end3:
	.size	init, .Lfunc_end3-init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI4_0:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_1:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI4_2:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
.LCPI4_3:
	.quad	5                       # 0x5
	.quad	5                       # 0x5
.LCPI4_4:
	.long	4294967292              # 0xfffffffc
	.long	4294967292              # 0xfffffffc
	.long	4294967292              # 0xfffffffc
	.long	4294967292              # 0xfffffffc
.LCPI4_5:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI4_6:
	.quad	8                       # 0x8
	.quad	8                       # 0x8
	.text
	.globl	set
	.p2align	4, 0x90
	.type	set,@function
set:                                    # @set
	.cfi_startproc
# BB#0:                                 # %entry
	push	r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	push	r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	push	rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset rbx, -32
.Ltmp24:
	.cfi_offset r14, -24
.Ltmp25:
	.cfi_offset r15, -16
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	edi, 16
	mov	esi, 128000
	call	memalign@PLT
	mov	rcx, qword ptr [rip + xx@GOTPCREL]
	mov	qword ptr [rcx], rax
	mov	edi, 10
	call	putchar@PLT
	xor	eax, eax
	.p2align	4, 0x90
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	lea	ecx, [rax + 4]
	mov	dword ptr [rbx + 4*rax], ecx
	lea	ecx, [rax + 2]
	mov	dword ptr [rbx + 4*rax + 4], ecx
	mov	dword ptr [rbx + 4*rax + 8], eax
	lea	ecx, [rax + 3]
	mov	dword ptr [rbx + 4*rax + 12], ecx
	lea	ecx, [rax + 1]
	mov	dword ptr [rbx + 4*rax + 16], ecx
	lea	ecx, [rax + 9]
	mov	dword ptr [rbx + 4*rax + 20], ecx
	lea	ecx, [rax + 7]
	mov	dword ptr [rbx + 4*rax + 24], ecx
	lea	ecx, [rax + 5]
	mov	dword ptr [rbx + 4*rax + 28], ecx
	lea	ecx, [rax + 8]
	mov	dword ptr [rbx + 4*rax + 32], ecx
	lea	ecx, [rax + 6]
	mov	dword ptr [rbx + 4*rax + 36], ecx
	add	rax, 10
	cmp	rax, 32000
	jl	.LBB4_1
# BB#2:                                 # %for.cond.cleanup
	mov	rdi, qword ptr [rip + a@GOTPCREL]
	movss	xmm0, dword ptr [rip + .LCPI4_0] # xmm0 = mem[0],zero,zero,zero
	mov	esi, 1
	call	set1d@PLT
	mov	rdi, qword ptr [rip + b@GOTPCREL]
	mov	esi, 1
	movss	xmm0, dword ptr [rip + .LCPI4_0] # xmm0 = mem[0],zero,zero,zero
	call	set1d@PLT
	mov	rdi, qword ptr [rip + c@GOTPCREL]
	mov	esi, 1
	movss	xmm0, dword ptr [rip + .LCPI4_0] # xmm0 = mem[0],zero,zero,zero
	call	set1d@PLT
	mov	rdi, qword ptr [rip + d@GOTPCREL]
	mov	esi, 1
	movss	xmm0, dword ptr [rip + .LCPI4_0] # xmm0 = mem[0],zero,zero,zero
	call	set1d@PLT
	mov	rdi, qword ptr [rip + e@GOTPCREL]
	mov	esi, 1
	movss	xmm0, dword ptr [rip + .LCPI4_0] # xmm0 = mem[0],zero,zero,zero
	call	set1d@PLT
	mov	rdi, qword ptr [rip + aa@GOTPCREL]
	xorps	xmm0, xmm0
	mov	esi, -1
	call	set2d@PLT
	mov	rdi, qword ptr [rip + bb@GOTPCREL]
	xorps	xmm0, xmm0
	mov	esi, -1
	call	set2d@PLT
	mov	rdi, qword ptr [rip + cc@GOTPCREL]
	xorps	xmm0, xmm0
	mov	esi, -1
	call	set2d@PLT
	mov	eax, 1
	movq	xmm4, rax
	pslldq	xmm4, 8                 # xmm4 = zero,zero,zero,zero,zero,zero,zero,zero,xmm4[0,1,2,3,4,5,6,7]
	movdqa	xmm3, xmmword ptr [rip + .LCPI4_1] # xmm3 = [2,3]
	mov	eax, 4
	movdqa	xmm8, xmmword ptr [rip + .LCPI4_2] # xmm8 = [1,1]
	movdqa	xmm9, xmmword ptr [rip + .LCPI4_3] # xmm9 = [5,5]
	movdqa	xmm10, xmmword ptr [rip + .LCPI4_4] # xmm10 = [4294967292,4294967292,4294967292,4294967292]
	movdqa	xmm5, xmmword ptr [rip + .LCPI4_5] # xmm5 = [1,1,1,1]
	mov	rcx, qword ptr [rip + indx@GOTPCREL]
	movdqa	xmm6, xmmword ptr [rip + .LCPI4_6] # xmm6 = [8,8]
	.p2align	4, 0x90
.LBB4_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	xmm7, xmm3
	paddq	xmm7, xmm8
	movdqa	xmm0, xmm4
	paddq	xmm0, xmm8
	movdqa	xmm1, xmm3
	paddq	xmm1, xmm9
	movdqa	xmm2, xmm4
	paddq	xmm2, xmm9
	pshufd	xmm0, xmm0, 232         # xmm0 = xmm0[0,2,2,3]
	pshufd	xmm7, xmm7, 232         # xmm7 = xmm7[0,2,2,3]
	punpcklqdq	xmm0, xmm7      # xmm0 = xmm0[0],xmm7[0]
	pshufd	xmm2, xmm2, 232         # xmm2 = xmm2[0,2,2,3]
	pshufd	xmm1, xmm1, 232         # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	xmm2, xmm1      # xmm2 = xmm2[0],xmm1[0]
	movdqa	xmm1, xmm0
	psrad	xmm1, 31
	psrld	xmm1, 30
	paddd	xmm1, xmm0
	pand	xmm1, xmm10
	psubd	xmm0, xmm1
	movdqa	xmm1, xmm2
	psrad	xmm1, 31
	psrld	xmm1, 30
	paddd	xmm1, xmm2
	pand	xmm1, xmm10
	psubd	xmm2, xmm1
	paddd	xmm0, xmm5
	paddd	xmm2, xmm5
	movdqa	xmmword ptr [rcx + 4*rax - 16], xmm0
	movdqa	xmmword ptr [rcx + 4*rax], xmm2
	paddq	xmm4, xmm6
	paddq	xmm3, xmm6
	add	rax, 8
	cmp	rax, 32004
	jne	.LBB4_3
# BB#4:                                 # %for.cond.cleanup29
	mov	dword ptr [r15], 1065353216
	mov	dword ptr [r14], 1073741824
	pop	rbx
	pop	r14
	pop	r15
	ret
.Lfunc_end4:
	.size	set, .Lfunc_end4-set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	s242
	.p2align	4, 0x90
	.type	s242,@function
s242:                                   # @s242
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	push	r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	push	r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	push	r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	push	r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	push	rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	sub	rsp, 24
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset rbx, -56
.Ltmp34:
	.cfi_offset r12, -48
.Ltmp35:
	.cfi_offset r13, -40
.Ltmp36:
	.cfi_offset r14, -32
.Ltmp37:
	.cfi_offset r15, -24
.Ltmp38:
	.cfi_offset rbp, -16
	movss	dword ptr [rsp + 12], xmm1 # 4-byte Spill
	movss	dword ptr [rsp + 8], xmm0 # 4-byte Spill
	lea	rdi, [rip + .L.str.1]
	call	init@PLT
	call	clock@PLT
	movss	xmm1, dword ptr [rsp + 8] # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mov	qword ptr [rsp + 16], rax # 8-byte Spill
	addss	xmm1, dword ptr [rsp + 12] # 4-byte Folded Reload
	xor	ebp, ebp
	mov	r15, qword ptr [rip + a@GOTPCREL]
	mov	r12, qword ptr [rip + b@GOTPCREL]
	mov	r13, qword ptr [rip + c@GOTPCREL]
	mov	rbx, qword ptr [rip + d@GOTPCREL]
	mov	r14, qword ptr [rip + aa@GOTPCREL]
	movss	dword ptr [rsp + 8], xmm1 # 4-byte Spill
	.p2align	4, 0x90
.LBB5_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
	movss	xmm0, dword ptr [r15]   # xmm0 = mem[0],zero,zero,zero
	mov	eax, 2
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_5:                                # %for.body5.1
                                        #   in Loop: Header=BB5_2 Depth=2
	addss	xmm0, xmm1
	addss	xmm0, dword ptr [r12 + 4*rax]
	addss	xmm0, dword ptr [r13 + 4*rax]
	addss	xmm0, dword ptr [rbx + 4*rax]
	movss	dword ptr [r15 + 4*rax], xmm0
	add	rax, 2
.LBB5_2:                                # %for.body5
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addss	xmm0, xmm1
	addss	xmm0, dword ptr [r12 + 4*rax - 4]
	addss	xmm0, dword ptr [r13 + 4*rax - 4]
	addss	xmm0, dword ptr [rbx + 4*rax - 4]
	movss	dword ptr [r15 + 4*rax - 4], xmm0
	cmp	rax, 32000
	jne	.LBB5_5
# BB#3:                                 # %for.cond.cleanup4
                                        #   in Loop: Header=BB5_1 Depth=1
	xorps	xmm0, xmm0
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, rbx
	mov	r8, qword ptr [rip + e@GOTPCREL]
	mov	r9, r14
	push	qword ptr [rip + cc@GOTPCREL]
.Ltmp39:
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rip + bb@GOTPCREL]
.Ltmp40:
	.cfi_adjust_cfa_offset 8
	call	dummy@PLT
	movss	xmm1, dword ptr [rsp + 24] # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	add	rsp, 16
.Ltmp41:
	.cfi_adjust_cfa_offset -16
	inc	ebp
	cmp	ebp, 200000
	jne	.LBB5_1
# BB#4:                                 # %for.cond.cleanup
	call	clock@PLT
	sub	rax, qword ptr [rsp + 16] # 8-byte Folded Reload
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, qword ptr [rip + .LCPI5_0]
	lea	rdi, [rip + .L.str.5]
	mov	al, 1
	call	printf@PLT
	mov	edi, 1
	call	check@PLT
	xor	eax, eax
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end5:
	.size	s242, .Lfunc_end5-s242
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI6_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	s2275
	.p2align	4, 0x90
	.type	s2275,@function
s2275:                                  # @s2275
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	push	r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	push	r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	push	r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	push	r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	push	rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	sub	rsp, 24
.Ltmp48:
	.cfi_def_cfa_offset 80
.Ltmp49:
	.cfi_offset rbx, -56
.Ltmp50:
	.cfi_offset r12, -48
.Ltmp51:
	.cfi_offset r13, -40
.Ltmp52:
	.cfi_offset r14, -32
.Ltmp53:
	.cfi_offset r15, -24
.Ltmp54:
	.cfi_offset rbp, -16
	lea	rdi, [rip + .L.str.6]
	call	init@PLT
	xor	ebx, ebx
	call	clock@PLT
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	mov	r9, qword ptr [rip + aa@GOTPCREL]
	mov	rbp, qword ptr [rip + bb@GOTPCREL]
	mov	r11, qword ptr [rip + cc@GOTPCREL]
	mov	r12, qword ptr [rip + b@GOTPCREL]
	mov	r13, qword ptr [rip + c@GOTPCREL]
	mov	r15, qword ptr [rip + d@GOTPCREL]
	mov	r14, qword ptr [rip + a@GOTPCREL]
	.p2align	4, 0x90
.LBB6_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #       Child Loop BB6_3 Depth 3
	mov	qword ptr [rsp + 16], rbx # 8-byte Spill
	mov	r8, r11
	mov	r10, rbp
	mov	rbx, r9
	xor	esi, esi
	.p2align	4, 0x90
.LBB6_2:                                # %for.cond6.preheader
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_3 Depth 3
	mov	edi, 180
	mov	rax, r8
	mov	rcx, rbp
	mov	rdx, rbx
	.p2align	4, 0x90
.LBB6_3:                                # %for.body9
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	xmm0, dword ptr [rax]   # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rcx]
	addss	xmm0, dword ptr [rdx]
	movss	dword ptr [rdx], xmm0
	movss	xmm0, dword ptr [rax + 720] # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rcx + 720]
	addss	xmm0, dword ptr [rdx + 720]
	movss	dword ptr [rdx + 720], xmm0
	add	rdx, 1440
	add	rcx, 1440
	add	rax, 1440
	add	rdi, -2
	jne	.LBB6_3
# BB#4:                                 # %for.cond.cleanup8
                                        #   in Loop: Header=BB6_2 Depth=2
	movss	xmm0, dword ptr [r15 + 4*rsi] # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [r13 + 4*rsi]
	addss	xmm0, dword ptr [r12 + 4*rsi]
	movss	dword ptr [r14 + 4*rsi], xmm0
	inc	rsi
	add	rbx, 4
	add	rbp, 4
	add	r8, 4
	cmp	rsi, 180
	jne	.LBB6_2
# BB#5:                                 # %for.cond.cleanup4
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	xmm0, xmm0
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, qword ptr [rip + e@GOTPCREL]
	mov	rbx, r9
	push	r11
.Ltmp55:
	.cfi_adjust_cfa_offset 8
	mov	rbp, r10
	push	rbp
.Ltmp56:
	.cfi_adjust_cfa_offset 8
	call	dummy@PLT
	mov	r11, qword ptr [rip + cc@GOTPCREL]
	mov	r9, rbx
	add	rsp, 16
.Ltmp57:
	.cfi_adjust_cfa_offset -16
	mov	rbx, qword ptr [rsp + 16] # 8-byte Reload
	inc	ebx
	cmp	ebx, 200000
	jne	.LBB6_1
# BB#6:                                 # %for.cond.cleanup
	call	clock@PLT
	sub	rax, qword ptr [rsp + 8] # 8-byte Folded Reload
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, qword ptr [rip + .LCPI6_0]
	lea	rdi, [rip + .L.str.7]
	mov	al, 1
	call	printf@PLT
	mov	edi, 11
	call	check@PLT
	xor	eax, eax
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end6:
	.size	s2275, .Lfunc_end6-s2275
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI7_0:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI7_1:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	s312
	.p2align	4, 0x90
	.type	s312,@function
s312:                                   # @s312
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	push	r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	push	r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	push	r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	push	r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	push	rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	sub	rsp, 40
.Ltmp64:
	.cfi_def_cfa_offset 96
.Ltmp65:
	.cfi_offset rbx, -56
.Ltmp66:
	.cfi_offset r12, -48
.Ltmp67:
	.cfi_offset r13, -40
.Ltmp68:
	.cfi_offset r14, -32
.Ltmp69:
	.cfi_offset r15, -24
.Ltmp70:
	.cfi_offset rbp, -16
	lea	rdi, [rip + .L.str.3]
	call	init@PLT
	xor	r15d, r15d
	call	clock@PLT
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	mov	rbx, qword ptr [rip + a@GOTPCREL]
	mov	r12, qword ptr [rip + c@GOTPCREL]
	mov	r13, qword ptr [rip + d@GOTPCREL]
	mov	rbp, qword ptr [rip + e@GOTPCREL]
	mov	r14, qword ptr [rip + aa@GOTPCREL]
	.p2align	4, 0x90
.LBB7_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_2 Depth 2
	mov	eax, 28
	movaps	xmm0, xmmword ptr [rip + .LCPI7_0] # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	movaps	xmm1, xmm0
	.p2align	4, 0x90
.LBB7_2:                                # %vector.body
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulps	xmm1, xmmword ptr [rbx + 4*rax - 112]
	mulps	xmm0, xmmword ptr [rbx + 4*rax - 96]
	mulps	xmm1, xmmword ptr [rbx + 4*rax - 80]
	mulps	xmm0, xmmword ptr [rbx + 4*rax - 64]
	mulps	xmm1, xmmword ptr [rbx + 4*rax - 48]
	mulps	xmm0, xmmword ptr [rbx + 4*rax - 32]
	mulps	xmm1, xmmword ptr [rbx + 4*rax - 16]
	mulps	xmm0, xmmword ptr [rbx + 4*rax]
	add	rax, 32
	cmp	rax, 32028
	jne	.LBB7_2
# BB#3:                                 # %middle.block
                                        #   in Loop: Header=BB7_1 Depth=1
	mulps	xmm0, xmm1
	movaps	xmm1, xmm0
	movhlps	xmm1, xmm1              # xmm1 = xmm1[1,1]
	mulps	xmm1, xmm0
	movaps	xmm0, xmm1
	shufps	xmm0, xmm0, 229         # xmm0 = xmm0[1,1,2,3]
	mulps	xmm0, xmm1
	mov	rdi, rbx
	mov	rsi, qword ptr [rip + b@GOTPCREL]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r14
	movaps	xmmword ptr [rsp + 16], xmm0 # 16-byte Spill
	push	qword ptr [rip + cc@GOTPCREL]
.Ltmp71:
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rip + bb@GOTPCREL]
.Ltmp72:
	.cfi_adjust_cfa_offset 8
	call	dummy@PLT
	add	rsp, 16
.Ltmp73:
	.cfi_adjust_cfa_offset -16
	inc	r15d
	cmp	r15d, 200000
	jne	.LBB7_1
# BB#4:                                 # %for.cond.cleanup
	call	clock@PLT
	sub	rax, qword ptr [rsp + 8] # 8-byte Folded Reload
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, qword ptr [rip + .LCPI7_1]
	lea	rdi, [rip + .L.str.8]
	mov	al, 1
	call	printf@PLT
	mov	rax, qword ptr [rip + temp@GOTPCREL]
	movaps	xmm0, xmmword ptr [rsp + 16] # 16-byte Reload
	movss	dword ptr [rax], xmm0
	mov	edi, -1
	call	check@PLT
	xor	eax, eax
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end7:
	.size	s312, .Lfunc_end7-s312
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI8_0:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
.LCPI8_1:
	.long	1064057089              # float 0.92274481
	.long	1064057089              # float 0.92274481
	.long	1064057089              # float 0.92274481
	.long	1064057089              # float 0.92274481
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI8_2:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	s317
	.p2align	4, 0x90
	.type	s317,@function
s317:                                   # @s317
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	push	r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	push	r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	push	r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	push	r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	push	rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	sub	rsp, 40
.Ltmp80:
	.cfi_def_cfa_offset 96
.Ltmp81:
	.cfi_offset rbx, -56
.Ltmp82:
	.cfi_offset r12, -48
.Ltmp83:
	.cfi_offset r13, -40
.Ltmp84:
	.cfi_offset r14, -32
.Ltmp85:
	.cfi_offset r15, -24
.Ltmp86:
	.cfi_offset rbp, -16
	lea	rdi, [rip + .L.str.9]
	call	init@PLT
	xor	r15d, r15d
	call	clock@PLT
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	movaps	xmm2, xmmword ptr [rip + .LCPI8_1] # xmm2 = [9.227448e-01,9.227448e-01,9.227448e-01,9.227448e-01]
	mov	r12, qword ptr [rip + b@GOTPCREL]
	mov	r13, qword ptr [rip + c@GOTPCREL]
	mov	rbx, qword ptr [rip + d@GOTPCREL]
	mov	rbp, qword ptr [rip + e@GOTPCREL]
	mov	r14, qword ptr [rip + aa@GOTPCREL]
	.p2align	4, 0x90
.LBB8_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2 Depth 2
	mov	eax, 16000
	movaps	xmm0, xmmword ptr [rip + .LCPI8_0] # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	movaps	xmm1, xmm0
	.p2align	4, 0x90
.LBB8_2:                                # %vector.body
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulps	xmm1, xmm2
	mulps	xmm0, xmm2
	add	eax, -64
	jne	.LBB8_2
# BB#3:                                 # %middle.block
                                        #   in Loop: Header=BB8_1 Depth=1
	mulps	xmm0, xmm1
	movaps	xmm1, xmm0
	movhlps	xmm1, xmm1              # xmm1 = xmm1[1,1]
	mulps	xmm1, xmm0
	movaps	xmm0, xmm1
	shufps	xmm0, xmm0, 229         # xmm0 = xmm0[1,1,2,3]
	mulps	xmm0, xmm1
	mov	rdi, qword ptr [rip + a@GOTPCREL]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, rbx
	mov	r8, rbp
	mov	r9, r14
	movaps	xmmword ptr [rsp + 16], xmm0 # 16-byte Spill
	push	qword ptr [rip + cc@GOTPCREL]
.Ltmp87:
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rip + bb@GOTPCREL]
.Ltmp88:
	.cfi_adjust_cfa_offset 8
	call	dummy@PLT
	movaps	xmm2, xmmword ptr [rip + .LCPI8_1] # xmm2 = [9.227448e-01,9.227448e-01,9.227448e-01,9.227448e-01]
	add	rsp, 16
.Ltmp89:
	.cfi_adjust_cfa_offset -16
	inc	r15d
	cmp	r15d, 400000
	jne	.LBB8_1
# BB#4:                                 # %for.cond.cleanup
	call	clock@PLT
	sub	rax, qword ptr [rsp + 8] # 8-byte Folded Reload
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, qword ptr [rip + .LCPI8_2]
	lea	rdi, [rip + .L.str.10]
	mov	al, 1
	call	printf@PLT
	mov	rax, qword ptr [rip + temp@GOTPCREL]
	movaps	xmm0, xmmword ptr [rsp + 16] # 16-byte Reload
	movss	dword ptr [rax], xmm0
	mov	edi, -1
	call	check@PLT
	xor	eax, eax
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end8:
	.size	s317, .Lfunc_end8-s317
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI9_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	s112
	.p2align	4, 0x90
	.type	s112,@function
s112:                                   # @s112
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	push	r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	push	r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	push	r13
.Ltmp93:
	.cfi_def_cfa_offset 40
	push	r12
.Ltmp94:
	.cfi_def_cfa_offset 48
	push	rbx
.Ltmp95:
	.cfi_def_cfa_offset 56
	push	rax
.Ltmp96:
	.cfi_def_cfa_offset 64
.Ltmp97:
	.cfi_offset rbx, -56
.Ltmp98:
	.cfi_offset r12, -48
.Ltmp99:
	.cfi_offset r13, -40
.Ltmp100:
	.cfi_offset r14, -32
.Ltmp101:
	.cfi_offset r15, -24
.Ltmp102:
	.cfi_offset rbp, -16
	lea	rdi, [rip + .L.str.2]
	call	init@PLT
	xor	r12d, r12d
	call	clock@PLT
	mov	qword ptr [rsp], rax    # 8-byte Spill
	mov	rbx, qword ptr [rip + a@GOTPCREL]
	mov	r15, qword ptr [rip + b@GOTPCREL]
	mov	r13, qword ptr [rip + d@GOTPCREL]
	mov	rbp, qword ptr [rip + e@GOTPCREL]
	mov	r14, qword ptr [rip + aa@GOTPCREL]
	.p2align	4, 0x90
.LBB9_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
	xor	eax, eax
	jmp	.LBB9_2
	.p2align	4, 0x90
.LBB9_5:                                # %for.body5.1
                                        #   in Loop: Header=BB9_2 Depth=2
	movss	xmm0, dword ptr [r15 + 4*rax + 127988] # xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbx + 4*rax + 127988]
	movss	dword ptr [rbx + 4*rax + 127992], xmm0
	add	rax, -2
.LBB9_2:                                # %for.body5
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rcx, [rax + 31998]
	movss	xmm0, dword ptr [r15 + 4*rax + 127992] # xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbx + 4*rax + 127992]
	movss	dword ptr [rbx + 4*rax + 127996], xmm0
	test	rcx, rcx
	jg	.LBB9_5
# BB#3:                                 # %for.cond.cleanup4
                                        #   in Loop: Header=BB9_1 Depth=1
	xorps	xmm0, xmm0
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rip + c@GOTPCREL]
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r14
	push	qword ptr [rip + cc@GOTPCREL]
.Ltmp103:
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rip + bb@GOTPCREL]
.Ltmp104:
	.cfi_adjust_cfa_offset 8
	call	dummy@PLT
	add	rsp, 16
.Ltmp105:
	.cfi_adjust_cfa_offset -16
	inc	r12d
	cmp	r12d, 200000
	jne	.LBB9_1
# BB#4:                                 # %for.cond.cleanup
	call	clock@PLT
	sub	rax, qword ptr [rsp]    # 8-byte Folded Reload
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, qword ptr [rip + .LCPI9_0]
	lea	rdi, [rip + .L.str.11]
	mov	al, 1
	call	printf@PLT
	mov	edi, 1
	call	check@PLT
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end9:
	.size	s112, .Lfunc_end9-s112
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI10_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	push	rbx
.Ltmp106:
	.cfi_def_cfa_offset 16
	sub	rsp, 16
.Ltmp107:
	.cfi_def_cfa_offset 32
.Ltmp108:
	.cfi_offset rbx, -16
	mov	edi, 16
	mov	esi, 128000
	call	memalign@PLT
	lea	rsi, [rsp + 12]
	lea	rdx, [rsp + 8]
	mov	rdi, rax
	call	set@PLT
	lea	rdi, [rip + .Lstr]
	call	puts@PLT
	call	clock@PLT
	mov	rbx, rax
	lea	rdi, [rip + .Lstr.17]
	call	puts@PLT
	movss	xmm0, dword ptr [rsp + 12] # xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rsp + 8] # xmm1 = mem[0],zero,zero,zero
	call	s242@PLT
	call	s2275@PLT
	lea	rdi, [rip + .Lstr.18]
	call	puts@PLT
	call	s112@PLT
	lea	rdi, [rip + .Lstr.19]
	call	puts@PLT
	call	s312@PLT
	call	s317@PLT
	call	clock@PLT
	sub	rax, rbx
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, qword ptr [rip + .LCPI10_0]
	lea	rdi, [rip + .L.str.16]
	mov	al, 1
	call	printf@PLT
	xor	eax, eax
	add	rsp, 16
	pop	rbx
	ret
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc

	.type	a,@object               # @a
	.comm	a,128000,16
	.type	b,@object               # @b
	.comm	b,128000,16
	.type	c,@object               # @c
	.comm	c,128000,16
	.type	d,@object               # @d
	.comm	d,128000,16
	.type	e,@object               # @e
	.comm	e,128000,16
	.type	aa,@object              # @aa
	.comm	aa,129600,16
	.type	bb,@object              # @bb
	.comm	bb,129600,16
	.type	cc,@object              # @cc
	.comm	cc,129600,16
	.type	array,@object           # @array
	.comm	array,129600,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f \n"
	.size	.L.str, 5

	.type	temp,@object            # @temp
	.comm	temp,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"s242 "
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"s112 "
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"s312 "
	.size	.L.str.3, 6

	.type	xx,@object              # @xx
	.comm	xx,8,8
	.type	indx,@object            # @indx
	.comm	indx,128000,16
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"S242\t %.2f \t\t"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"s275 "
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"S2275\t %.2f \t\t"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"S312\t %.2f \t\t"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"s317 "
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"S317\t %.2f \t\t"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"S112\t %.2f \t\t"
	.size	.L.str.11, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Total running time:\t %.5f \n"
	.size	.L.str.16, 28

	.type	X,@object               # @X
	.comm	X,128000,16
	.type	Y,@object               # @Y
	.comm	Y,128000,16
	.type	Z,@object               # @Z
	.comm	Z,128000,16
	.type	U,@object               # @U
	.comm	U,128000,16
	.type	V,@object               # @V
	.comm	V,128000,16
	.type	x,@object               # @x
	.comm	x,128000,16
	.type	temp_int,@object        # @temp_int
	.comm	temp_int,4,4
	.type	tt,@object              # @tt
	.comm	tt,129600,16
	.type	yy,@object              # @yy
	.comm	yy,8,8
	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"Loop \t Time(Sec) \t Checksum "
	.size	.Lstr, 29

	.type	.Lstr.17,@object        # @str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.17:
	.asciz	"For ICC:"
	.size	.Lstr.17, 9

	.type	.Lstr.18,@object        # @str.18
.Lstr.18:
	.asciz	"For GCC:"
	.size	.Lstr.18, 9

	.type	.Lstr.19,@object        # @str.19
.Lstr.19:
	.asciz	"For LLVM:"
	.size	.Lstr.19, 10


	.ident	"clang version 4.0.0 (trunk 286860)"
	.section	".note.GNU-stack","",@progbits
