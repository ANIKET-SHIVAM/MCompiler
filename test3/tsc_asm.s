	.text
	.file	"tsc.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	set1d
	.p2align	4, 0x90
	.type	set1d,@function
set1d:                                  # @set1d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	%esi, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	jne	.LBB0_6
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32000, -20(%rbp)       # imm = 0x7D00
	jge	.LBB0_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movss	%xmm0, (%rcx,%rdx,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_2
.LBB0_5:                                # %for.end
	jmp	.LBB0_18
.LBB0_6:                                # %if.else
	cmpl	$-2, -16(%rbp)
	jne	.LBB0_12
# BB#7:                                 # %if.then6
	movl	$0, -24(%rbp)
.LBB0_8:                                # %for.cond8
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32000, -24(%rbp)       # imm = 0x7D00
	jge	.LBB0_11
# BB#9:                                 # %for.body11
                                        #   in Loop: Header=BB0_8 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movslq	-24(%rbp), %rsi
	movss	%xmm0, (%rdx,%rsi,4)
# BB#10:                                # %for.inc20
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_8
.LBB0_11:                               # %for.end22
	jmp	.LBB0_17
.LBB0_12:                               # %if.else23
	movl	$0, -28(%rbp)
.LBB0_13:                               # %for.cond25
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32000, -28(%rbp)       # imm = 0x7D00
	jge	.LBB0_16
# BB#14:                                # %for.body28
                                        #   in Loop: Header=BB0_13 Depth=1
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# BB#15:                                # %for.inc31
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-16(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_13
.LBB0_16:                               # %for.end33
	jmp	.LBB0_17
.LBB0_17:                               # %if.end
	jmp	.LBB0_18
.LBB0_18:                               # %if.end34
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	set1d, .Lfunc_end0-set1d
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	set2d
	.p2align	4, 0x90
	.type	set2d,@function
set2d:                                  # @set2d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi3:
	.cfi_def_cfa_offset 16
.Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	%esi, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	jne	.LBB1_10
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	cmpl	$180, -20(%rbp)
	jge	.LBB1_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$0, -24(%rbp)
.LBB1_4:                                # %for.cond2
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$180, -24(%rbp)
	jge	.LBB1_7
# BB#5:                                 # %for.body4
                                        #   in Loop: Header=BB1_4 Depth=2
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$720, %rdx, %rdx        # imm = 0x2D0
	addq	%rdx, %rcx
	movslq	-24(%rbp), %rdx
	movss	%xmm0, (%rcx,%rdx,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_4
.LBB1_7:                                # %for.end
                                        #   in Loop: Header=BB1_2 Depth=1
	jmp	.LBB1_8
.LBB1_8:                                # %for.inc9
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_2
.LBB1_9:                                # %for.end11
	jmp	.LBB1_30
.LBB1_10:                               # %if.else
	cmpl	$-2, -16(%rbp)
	jne	.LBB1_20
# BB#11:                                # %if.then14
	movl	$0, -28(%rbp)
.LBB1_12:                               # %for.cond16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	cmpl	$180, -28(%rbp)
	jge	.LBB1_19
# BB#13:                                # %for.body19
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$0, -32(%rbp)
.LBB1_14:                               # %for.cond21
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$180, -32(%rbp)
	jge	.LBB1_17
# BB#15:                                # %for.body24
                                        #   in Loop: Header=BB1_14 Depth=2
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	imulq	$720, %rsi, %rsi        # imm = 0x2D0
	addq	%rsi, %rdx
	movslq	-32(%rbp), %rsi
	movss	%xmm0, (%rdx,%rsi,4)
# BB#16:                                # %for.inc35
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_14
.LBB1_17:                               # %for.end37
                                        #   in Loop: Header=BB1_12 Depth=1
	jmp	.LBB1_18
.LBB1_18:                               # %for.inc38
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_12
.LBB1_19:                               # %for.end40
	jmp	.LBB1_29
.LBB1_20:                               # %if.else41
	movl	$0, -36(%rbp)
.LBB1_21:                               # %for.cond43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	cmpl	$180, -36(%rbp)
	jge	.LBB1_28
# BB#22:                                # %for.body46
                                        #   in Loop: Header=BB1_21 Depth=1
	movl	$0, -40(%rbp)
.LBB1_23:                               # %for.cond48
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$180, -40(%rbp)
	jge	.LBB1_26
# BB#24:                                # %for.body51
                                        #   in Loop: Header=BB1_23 Depth=2
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$720, %rcx, %rcx        # imm = 0x2D0
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# BB#25:                                # %for.inc56
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	-16(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_23
.LBB1_26:                               # %for.end58
                                        #   in Loop: Header=BB1_21 Depth=1
	jmp	.LBB1_27
.LBB1_27:                               # %for.inc59
                                        #   in Loop: Header=BB1_21 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_21
.LBB1_28:                               # %for.end61
	jmp	.LBB1_29
.LBB1_29:                               # %if.end
	jmp	.LBB1_30
.LBB1_30:                               # %if.end62
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	set2d, .Lfunc_end1-set2d
	.cfi_endproc

	.globl	check
	.p2align	4, 0x90
	.type	check,@function
check:                                  # @check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi6:
	.cfi_def_cfa_offset 16
.Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32000, -28(%rbp)       # imm = 0x7D00
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movss	a(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-8(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movslq	-28(%rbp), %rax
	movss	b(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movslq	-28(%rbp), %rax
	movss	c(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movslq	-28(%rbp), %rax
	movss	d(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-20(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movslq	-28(%rbp), %rax
	movss	e(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	xorps	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movss	%xmm0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB2_5:                                # %for.cond14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	cmpl	$180, -44(%rbp)
	jge	.LBB2_12
# BB#6:                                 # %for.body16
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	$0, -48(%rbp)
.LBB2_7:                                # %for.cond17
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$180, -48(%rbp)
	jge	.LBB2_10
# BB#8:                                 # %for.body19
                                        #   in Loop: Header=BB2_7 Depth=2
	movabsq	$cc, %rax
	movabsq	$bb, %rcx
	movabsq	$aa, %rdx
	movslq	-44(%rbp), %rsi
	imulq	$720, %rsi, %rsi        # imm = 0x2D0
	addq	%rsi, %rdx
	movslq	-48(%rbp), %rsi
	movss	(%rdx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movslq	-44(%rbp), %rdx
	imulq	$720, %rdx, %rdx        # imm = 0x2D0
	addq	%rdx, %rcx
	movslq	-48(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	-36(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movslq	-44(%rbp), %rcx
	imulq	$720, %rcx, %rcx        # imm = 0x2D0
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	-40(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
# BB#9:                                 # %for.inc35
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               # %for.end37
                                        #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               # %for.inc38
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_5
.LBB2_12:                               # %for.end40
	xorps	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB2_13:                               # %for.cond42
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32400, -56(%rbp)       # imm = 0x7E90
	jge	.LBB2_16
# BB#14:                                # %for.body44
                                        #   in Loop: Header=BB2_13 Depth=1
	movslq	-56(%rbp), %rax
	movss	array(,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	-52(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
# BB#15:                                # %for.inc48
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_13
.LBB2_16:                               # %for.end50
	cmpl	$1, -4(%rbp)
	jne	.LBB2_18
# BB#17:                                # %if.then
	movabsq	$.L.str, %rdi
	cvtss2sd	-8(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB2_18:                               # %if.end
	cmpl	$2, -4(%rbp)
	jne	.LBB2_20
# BB#19:                                # %if.then54
	movabsq	$.L.str, %rdi
	cvtss2sd	-12(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB2_20:                               # %if.end57
	cmpl	$3, -4(%rbp)
	jne	.LBB2_22
# BB#21:                                # %if.then60
	movabsq	$.L.str, %rdi
	cvtss2sd	-16(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB2_22:                               # %if.end63
	cmpl	$4, -4(%rbp)
	jne	.LBB2_24
# BB#23:                                # %if.then66
	movabsq	$.L.str, %rdi
	cvtss2sd	-20(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB2_24:                               # %if.end69
	cmpl	$5, -4(%rbp)
	jne	.LBB2_26
# BB#25:                                # %if.then72
	movabsq	$.L.str, %rdi
	cvtss2sd	-24(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB2_26:                               # %if.end75
	cmpl	$11, -4(%rbp)
	jne	.LBB2_28
# BB#27:                                # %if.then78
	movabsq	$.L.str, %rdi
	cvtss2sd	-32(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB2_28:                               # %if.end81
	cmpl	$22, -4(%rbp)
	jne	.LBB2_30
# BB#29:                                # %if.then84
	movabsq	$.L.str, %rdi
	cvtss2sd	-36(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB2_30:                               # %if.end87
	cmpl	$33, -4(%rbp)
	jne	.LBB2_32
# BB#31:                                # %if.then90
	movabsq	$.L.str, %rdi
	cvtss2sd	-40(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB2_32:                               # %if.end93
	cmpl	$0, -4(%rbp)
	jne	.LBB2_34
# BB#33:                                # %if.then96
	movabsq	$.L.str, %rdi
	cvtss2sd	-52(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB2_34:                               # %if.end99
	cmpl	$12, -4(%rbp)
	jne	.LBB2_36
# BB#35:                                # %if.then102
	movabsq	$.L.str, %rdi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB2_36:                               # %if.end106
	cmpl	$25, -4(%rbp)
	jne	.LBB2_38
# BB#37:                                # %if.then109
	movabsq	$.L.str, %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB2_38:                               # %if.end113
	cmpl	$13, -4(%rbp)
	jne	.LBB2_40
# BB#39:                                # %if.then116
	movabsq	$.L.str, %rdi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB2_40:                               # %if.end120
	cmpl	$123, -4(%rbp)
	jne	.LBB2_42
# BB#41:                                # %if.then123
	movabsq	$.L.str, %rdi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB2_42:                               # %if.end128
	cmpl	$1122, -4(%rbp)         # imm = 0x462
	jne	.LBB2_44
# BB#43:                                # %if.then131
	movabsq	$.L.str, %rdi
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-36(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB2_44:                               # %if.end135
	cmpl	$112233, -4(%rbp)       # imm = 0x1B669
	jne	.LBB2_46
# BB#45:                                # %if.then138
	movabsq	$.L.str, %rdi
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-36(%rbp), %xmm0
	addss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB2_46:                               # %if.end143
	cmpl	$111, -4(%rbp)
	jne	.LBB2_48
# BB#47:                                # %if.then146
	movabsq	$.L.str, %rdi
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB2_48:                               # %if.end150
	cmpl	$-1, -4(%rbp)
	jne	.LBB2_50
# BB#49:                                # %if.then153
	movabsq	$.L.str, %rdi
	cvtss2sd	temp, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB2_50:                               # %if.end156
	cmpl	$-12, -4(%rbp)
	jne	.LBB2_52
# BB#51:                                # %if.then159
	movabsq	$.L.str, %rdi
	movss	temp, %xmm0             # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB2_52:                               # %if.end163
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	check, .Lfunc_end2-check
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_0:
	.long	897988541               # float 9.99999997E-7
.LCPI3_1:
	.long	1073741824              # float 2
.LCPI3_2:
	.long	1065353216              # float 1
.LCPI3_3:
	.long	1056964608              # float 0.5
.LCPI3_4:
	.long	1065353224              # float 1.00000095
	.text
	.globl	init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi9:
	.cfi_def_cfa_offset 16
.Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi11:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI3_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI3_3(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	movq	%rdi, -8(%rbp)
	movss	%xmm4, -12(%rbp)
	movss	%xmm4, -16(%rbp)
	movss	%xmm3, -20(%rbp)
	movss	%xmm2, -24(%rbp)
	movss	%xmm1, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	$-1, -40(%rbp)
	movl	$-2, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$a, %rdi
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-36(%rbp), %esi
	callq	set1d
	movabsq	$b, %rdi
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-36(%rbp), %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	set1d
	movabsq	$c, %rdi
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-36(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	set1d
	movabsq	$d, %rdi
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-36(%rbp), %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	set1d
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB3_9
.LBB3_2:                                # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then7
	movabsq	$a, %rdi
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-36(%rbp), %esi
	callq	set1d
	movabsq	$b, %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-44(%rbp), %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	set1d
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_8
.LBB3_4:                                # %if.else10
	movq	-8(%rbp), %rdi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_6
# BB#5:                                 # %if.then13
	movabsq	$a, %rdi
	movss	.LCPI3_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	-36(%rbp), %esi
	callq	set1d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %if.else15
	jmp	.LBB3_7
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end16
	jmp	.LBB3_9
.LBB3_9:                                # %if.end17
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	init, .Lfunc_end3-init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI4_0:
	.long	1065353216              # float 1
.LCPI4_1:
	.long	1073741824              # float 2
	.text
	.globl	set
	.p2align	4, 0x90
	.type	set,@function
set:                                    # @set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi12:
	.cfi_def_cfa_offset 16
.Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$16, %eax
	movl	%eax, %ecx
	movl	$128000, %eax           # imm = 0x1F400
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	memalign
	movabsq	$.L.str.4, %rdi
	movq	%rax, xx
	movb	$0, %al
	callq	printf
	movl	$0, -28(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32000, -28(%rbp)       # imm = 0x7D00
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$4, %eax
	movq	-8(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	-28(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movq	-8(%rbp), %rcx
	movl	-28(%rbp), %esi
	addl	$3, %esi
	movslq	%esi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	-28(%rbp), %esi
	addl	$4, %esi
	movslq	%esi, %rdx
	movl	%eax, (%rcx,%rdx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movabsq	$a, %rdi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$1, %esi
	callq	set1d
	movabsq	$b, %rdi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$1, %esi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	set1d
	movabsq	$c, %rdi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$1, %esi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	set1d
	movabsq	$d, %rdi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$1, %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	set1d
	movabsq	$e, %rdi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$1, %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	set1d
	movabsq	$aa, %rdi
	xorps	%xmm0, %xmm0
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	set2d
	movabsq	$bb, %rdi
	xorps	%xmm0, %xmm0
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	set2d
	movabsq	$cc, %rdi
	xorps	%xmm0, %xmm0
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	set2d
	movl	$0, -32(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB4_5:                                # %for.cond27
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32000, -32(%rbp)       # imm = 0x7D00
	jge	.LBB4_8
# BB#6:                                 # %for.body29
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	$4, %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %edx
	movslq	-32(%rbp), %rsi
	movl	%edx, indx(,%rsi,4)
# BB#7:                                 # %for.inc34
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end35
	movss	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm1, (%rax)
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	set, .Lfunc_end4-set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	s242
	.p2align	4, 0x90
	.type	s242,@function
s242:                                   # @s242
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi15:
	.cfi_def_cfa_offset 16
.Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi17:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.1, %rdi
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	callq	init
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	clock
	movq	%rax, -16(%rbp)
	movl	$0, -44(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	cmpl	$200000, -44(%rbp)      # imm = 0x30D40
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, -48(%rbp)
.LBB5_3:                                # %for.cond2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$32000, -48(%rbp)       # imm = 0x7D00
	jge	.LBB5_6
# BB#4:                                 # %for.body4
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movss	a(,%rcx,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-4(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movslq	-48(%rbp), %rcx
	addss	b(,%rcx,4), %xmm0
	movslq	-48(%rbp), %rcx
	addss	c(,%rcx,4), %xmm0
	movslq	-48(%rbp), %rcx
	addss	d(,%rcx,4), %xmm0
	movslq	-48(%rbp), %rcx
	movss	%xmm0, a(,%rcx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$a, %rdi
	movabsq	$b, %rsi
	movabsq	$c, %rdx
	movabsq	$d, %rcx
	movabsq	$e, %r8
	movabsq	$aa, %r9
	movabsq	$bb, %rax
	movabsq	$cc, %r10
	xorps	%xmm0, %xmm0
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	dummy
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#7:                                 # %for.inc18
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end20
	callq	clock
	movabsq	$.L.str.5, %rdi
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	cvtsi2sdq	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	check
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	s242, .Lfunc_end5-s242
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI6_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	s2275
	.p2align	4, 0x90
	.type	s2275,@function
s2275:                                  # @s2275
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi18:
	.cfi_def_cfa_offset 16
.Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi20:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.6, %rdi
	callq	init
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	clock
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_5 Depth 3
	cmpl	$200000, -36(%rbp)      # imm = 0x30D40
	jge	.LBB6_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -40(%rbp)
.LBB6_3:                                # %for.cond2
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_5 Depth 3
	cmpl	$180, -40(%rbp)
	jge	.LBB6_10
# BB#4:                                 # %for.body4
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	$0, -44(%rbp)
.LBB6_5:                                # %for.cond5
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$180, -44(%rbp)
	jge	.LBB6_8
# BB#6:                                 # %for.body7
                                        #   in Loop: Header=BB6_5 Depth=3
	movabsq	$aa, %rax
	movabsq	$cc, %rcx
	movabsq	$bb, %rdx
	movslq	-44(%rbp), %rsi
	imulq	$720, %rsi, %rsi        # imm = 0x2D0
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movslq	-40(%rbp), %rsi
	movss	(%rdi,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-44(%rbp), %rsi
	imulq	$720, %rsi, %rsi        # imm = 0x2D0
	addq	%rsi, %rdx
	movslq	-40(%rbp), %rsi
	movss	(%rdx,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	-44(%rbp), %rdx
	imulq	$720, %rdx, %rdx        # imm = 0x2D0
	addq	%rdx, %rcx
	movslq	-40(%rbp), %rdx
	mulss	(%rcx,%rdx,4), %xmm1
	addss	%xmm1, %xmm0
	movslq	-44(%rbp), %rcx
	imulq	$720, %rcx, %rcx        # imm = 0x2D0
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=2
	movslq	-40(%rbp), %rax
	movss	b(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-40(%rbp), %rax
	movss	c(,%rax,4), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movslq	-40(%rbp), %rax
	mulss	d(,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	movslq	-40(%rbp), %rax
	movss	%xmm0, a(,%rax,4)
# BB#9:                                 # %for.inc32
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_3
.LBB6_10:                               # %for.end34
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$a, %rdi
	movabsq	$b, %rsi
	movabsq	$c, %rdx
	movabsq	$d, %rcx
	movabsq	$e, %r8
	movabsq	$aa, %r9
	movabsq	$bb, %rax
	movabsq	$cc, %r10
	xorps	%xmm0, %xmm0
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	dummy
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#11:                                # %for.inc36
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_12:                               # %for.end38
	callq	clock
	movabsq	$.L.str.7, %rdi
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cvtsi2sdq	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$11, %edi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	check
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	s2275, .Lfunc_end6-s2275
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI7_0:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI7_1:
	.long	1065353216              # float 1
	.text
	.globl	s312
	.p2align	4, 0x90
	.type	s312,@function
s312:                                   # @s312
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi21:
	.cfi_def_cfa_offset 16
.Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi23:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.3, %rdi
	callq	init
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	clock
	movq	%rax, -8(%rbp)
	movl	$0, -40(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	cmpl	$200000, -40(%rbp)      # imm = 0x30D40
	jge	.LBB7_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movss	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movl	$0, -44(%rbp)
.LBB7_3:                                # %for.cond2
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$32000, -44(%rbp)       # imm = 0x7D00
	jge	.LBB7_6
# BB#4:                                 # %for.body4
                                        #   in Loop: Header=BB7_3 Depth=2
	movslq	-44(%rbp), %rax
	movss	a(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$a, %rdi
	movabsq	$b, %rsi
	movabsq	$c, %rdx
	movabsq	$d, %rcx
	movabsq	$e, %r8
	movabsq	$aa, %r9
	movabsq	$bb, %rax
	movabsq	$cc, %r10
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	dummy
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#7:                                 # %for.inc6
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %for.end8
	callq	clock
	movabsq	$.L.str.8, %rdi
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cvtsi2sdq	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, temp
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	check
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	s312, .Lfunc_end7-s312
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI8_0:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI8_1:
	.long	1065353216              # float 1
.LCPI8_2:
	.long	1065185444              # float 0.990000009
	.text
	.globl	s317
	.p2align	4, 0x90
	.type	s317,@function
s317:                                   # @s317
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi24:
	.cfi_def_cfa_offset 16
.Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi26:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.9, %rdi
	callq	init
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	clock
	movq	%rax, -8(%rbp)
	movl	$0, -40(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	cmpl	$400000, -40(%rbp)      # imm = 0x61A80
	jge	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movss	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movl	$0, -44(%rbp)
.LBB8_3:                                # %for.cond2
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16000, -44(%rbp)       # imm = 0x3E80
	jge	.LBB8_6
# BB#4:                                 # %for.body4
                                        #   in Loop: Header=BB8_3 Depth=2
	movss	.LCPI8_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$a, %rdi
	movabsq	$b, %rsi
	movabsq	$c, %rdx
	movabsq	$d, %rcx
	movabsq	$e, %r8
	movabsq	$aa, %r9
	movabsq	$bb, %rax
	movabsq	$cc, %r10
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	dummy
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#7:                                 # %for.inc6
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end8
	callq	clock
	movabsq	$.L.str.10, %rdi
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cvtsi2sdq	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, temp
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	check
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	s317, .Lfunc_end8-s317
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI9_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	s112
	.p2align	4, 0x90
	.type	s112,@function
s112:                                   # @s112
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi27:
	.cfi_def_cfa_offset 16
.Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.2, %rdi
	callq	init
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	clock
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	cmpl	$200000, -36(%rbp)      # imm = 0x30D40
	jge	.LBB9_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$31998, -40(%rbp)       # imm = 0x7CFE
.LBB9_3:                                # %for.cond2
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -40(%rbp)
	jl	.LBB9_6
# BB#4:                                 # %for.body4
                                        #   in Loop: Header=BB9_3 Depth=2
	movslq	-40(%rbp), %rax
	movss	a(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-40(%rbp), %rax
	addss	b(,%rax,4), %xmm0
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movss	%xmm0, a(,%rax,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$a, %rdi
	movabsq	$b, %rsi
	movabsq	$c, %rdx
	movabsq	$d, %rcx
	movabsq	$e, %r8
	movabsq	$aa, %r9
	movabsq	$bb, %rax
	movabsq	$cc, %r10
	xorps	%xmm0, %xmm0
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	dummy
	movl	%eax, -48(%rbp)         # 4-byte Spill
# BB#7:                                 # %for.inc11
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end12
	callq	clock
	movabsq	$.L.str.11, %rdi
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cvtsi2sdq	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	check
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	s112, .Lfunc_end9-s112
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI10_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Lcfi30:
	.cfi_def_cfa_offset 16
.Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi32:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$16, %eax
	movl	%eax, %edi
	movl	$128000, %eax           # imm = 0x1F400
	movl	%eax, %esi
	movl	$0, -4(%rbp)
	movl	$1, -44(%rbp)
	movl	$1, -48(%rbp)
	callq	memalign
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	set
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	clock
	movabsq	$.L.str.13, %rdi
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	printf
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	s242
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	s2275
	movabsq	$.L.str.14, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	s112
	movabsq	$.L.str.15, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	s312
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	s317
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	clock
	movabsq	$.L.str.16, %rdi
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	cvtsi2sdq	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
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
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

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

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Loop \t Time(Sec) \t Checksum \n"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"For ICC:\n"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"For GCC:\n"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"For LLVM:\n"
	.size	.L.str.15, 11

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

	.ident	"clang version 4.0.0 (tags/RELEASE_400/final)"
	.section	".note.GNU-stack","",@progbits
