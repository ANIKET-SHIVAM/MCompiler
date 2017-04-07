	.text
	.file	"tsc_extract.bc"
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -32(%rbp)
	movl	%esi, -4(%rbp)
	cmpl	$-1, %esi
	je	.LBB0_1
# BB#2:                                 # %if.else
	cmpl	$-2, -4(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %codeRepl1
	movl	$0, -24(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	set1d_for.cond8
	jmp	.LBB0_5
.LBB0_1:                                # %codeRepl
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	set1d_for.cond
	jmp	.LBB0_5
.LBB0_4:                                # %codeRepl2
	movl	$0, -20(%rbp)
	leaq	-20(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	callq	set1d_for.cond25
.LBB0_5:                                # %if.end34
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	set1d, .Lfunc_end0-set1d
	.cfi_endproc

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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -32(%rbp)
	movl	%esi, -4(%rbp)
	cmpl	$-1, %esi
	je	.LBB1_1
# BB#2:                                 # %if.else
	cmpl	$-2, -4(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %codeRepl1
	movl	$0, -24(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	set2d_for.cond16
	jmp	.LBB1_5
.LBB1_1:                                # %codeRepl
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	set2d_for.cond
	jmp	.LBB1_5
.LBB1_4:                                # %codeRepl2
	movl	$0, -20(%rbp)
	leaq	-20(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-4(%rbp), %r8
	callq	set2d_for.cond43
.LBB1_5:                                # %if.end62
	xorl	%eax, %eax
	addq	$48, %rsp
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
# BB#0:                                 # %for.end50
	pushq	%rbp
.Lcfi6:
	.cfi_def_cfa_offset 16
.Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -52(%rbp)
	leaq	-52(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	leaq	-8(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	-32(%rbp), %r9
	callq	check_for.cond
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -48(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rcx
	leaq	-28(%rbp), %r8
	callq	check_for.cond14
	movl	$0, -36(%rbp)
	movl	$0, -44(%rbp)
	leaq	-44(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	callq	check_for.cond42
	cmpl	$1, -4(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_2:                                # %if.end
	cmpl	$2, -4(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then54
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_4:                                # %if.end57
	cmpl	$3, -4(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then60
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_6:                                # %if.end63
	cmpl	$4, -4(%rbp)
	jne	.LBB2_8
# BB#7:                                 # %if.then66
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_8:                                # %if.end69
	cmpl	$5, -4(%rbp)
	jne	.LBB2_10
# BB#9:                                 # %if.then72
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_10:                               # %if.end75
	cmpl	$11, -4(%rbp)
	jne	.LBB2_12
# BB#11:                                # %if.then78
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_12:                               # %if.end81
	cmpl	$22, -4(%rbp)
	jne	.LBB2_14
# BB#13:                                # %if.then84
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_14:                               # %if.end87
	cmpl	$33, -4(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then90
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_16:                               # %if.end93
	cmpl	$0, -4(%rbp)
	jne	.LBB2_18
# BB#17:                                # %if.then96
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_18:                               # %if.end99
	cmpl	$12, -4(%rbp)
	jne	.LBB2_20
# BB#19:                                # %if.then102
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_20:                               # %if.end106
	cmpl	$25, -4(%rbp)
	jne	.LBB2_22
# BB#21:                                # %if.then109
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_22:                               # %if.end113
	cmpl	$13, -4(%rbp)
	jne	.LBB2_24
# BB#23:                                # %if.then116
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_24:                               # %if.end120
	cmpl	$123, -4(%rbp)
	jne	.LBB2_26
# BB#25:                                # %if.then123
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-8(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_26:                               # %if.end128
	cmpl	$1122, -4(%rbp)         # imm = 0x462
	jne	.LBB2_28
# BB#27:                                # %if.then131
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_28:                               # %if.end135
	cmpl	$112233, -4(%rbp)       # imm = 0x1B669
	jne	.LBB2_30
# BB#29:                                # %if.then138
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-20(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_30:                               # %if.end143
	cmpl	$111, -4(%rbp)
	jne	.LBB2_32
# BB#31:                                # %if.then146
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_32:                               # %if.end150
	cmpl	$-1, -4(%rbp)
	jne	.LBB2_34
# BB#33:                                # %if.then153
	movss	temp(%rip), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_34:                               # %if.end156
	cmpl	$-12, -4(%rbp)
	jne	.LBB2_36
# BB#35:                                # %if.then159
	movss	temp(%rip), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
.LBB2_36:                               # %if.end163
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	check, .Lfunc_end2-check
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_0:
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -44(%rbp)
	movl	$1056964608, -40(%rbp)  # imm = 0x3F000000
	movl	$1065353216, -24(%rbp)  # imm = 0x3F800000
	movl	$1073741824, -36(%rbp)  # imm = 0x40000000
	movl	$897988541, -8(%rbp)    # imm = 0x358637BD
	movl	$1, -4(%rbp)
	movl	$-1, -32(%rbp)
	movl	$-2, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.1, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_1
# BB#2:                                 # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_3
# BB#4:                                 # %if.else10
	movq	-16(%rbp), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_7
# BB#5:                                 # %if.then13
	movl	-4(%rbp), %esi
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$a, %edi
	jmp	.LBB3_6
.LBB3_1:                                # %if.then
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-4(%rbp), %esi
	movl	$a, %edi
	callq	set1d
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-4(%rbp), %esi
	movl	$b, %edi
	callq	set1d
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-4(%rbp), %esi
	movl	$c, %edi
	callq	set1d
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-4(%rbp), %esi
	movl	$d, %edi
	jmp	.LBB3_6
.LBB3_3:                                # %if.then7
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-4(%rbp), %esi
	movl	$a, %edi
	callq	set1d
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %esi
	movl	$b, %edi
.LBB3_6:                                # %if.end17
	callq	set1d
.LBB3_7:                                # %if.end17
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	init, .Lfunc_end3-init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI4_0:
	.long	1065353216              # float 1
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
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$16, %edi
	movl	$128000, %esi           # imm = 0x1F400
	callq	memalign
	movq	%rax, xx(%rip)
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, -8(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	set_for.cond
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$a, %edi
	movl	$1, %esi
	callq	set1d
	movl	$b, %edi
	movl	$1, %esi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	set1d
	movl	$c, %edi
	movl	$1, %esi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	set1d
	movl	$d, %edi
	movl	$1, %esi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	set1d
	movl	$e, %edi
	movl	$1, %esi
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	set1d
	movl	$aa, %edi
	xorps	%xmm0, %xmm0
	movl	$-1, %esi
	callq	set2d
	movl	$bb, %edi
	xorps	%xmm0, %xmm0
	movl	$-1, %esi
	callq	set2d
	movl	$cc, %edi
	xorps	%xmm0, %xmm0
	movl	$-1, %esi
	callq	set2d
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rdi
	callq	set_for.cond27
	movq	-24(%rbp), %rax
	movl	$1065353216, (%rax)     # imm = 0x3F800000
	movq	-16(%rbp), %rax
	movl	$1073741824, (%rax)     # imm = 0x40000000
	addq	$32, %rsp
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
	subq	$48, %rsp
	movss	%xmm0, -16(%rbp)
	movss	%xmm1, -12(%rbp)
	movl	$.L.str.1, %edi
	callq	init
	callq	clock
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$199999, -8(%rbp)       # imm = 0x30D3F
	jle	.LBB5_2
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:                                # %for.inc18
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	$a, %edi
	movl	$b, %esi
	movl	$c, %edx
	movl	$d, %ecx
	movl	$e, %r8d
	movl	$aa, %r9d
	xorps	%xmm0, %xmm0
	pushq	$cc
	pushq	$bb
	callq	dummy
	addq	$16, %rsp
	incl	-8(%rbp)
	cmpl	$199999, -8(%rbp)       # imm = 0x30D3F
	jg	.LBB5_6
.LBB5_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movl	$1, -4(%rbp)
	cmpl	$31999, -4(%rbp)        # imm = 0x7CFF
	jg	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                # %for.inc
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movss	a-4(,%rax,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	addss	b(,%rax,4), %xmm0
	addss	c(,%rax,4), %xmm0
	addss	d(,%rax,4), %xmm0
	movss	%xmm0, a(,%rax,4)
	incl	-4(%rbp)
	cmpl	$31999, -4(%rbp)        # imm = 0x7CFF
	jle	.LBB5_4
	jmp	.LBB5_5
.LBB5_6:                                # %for.end20
	callq	clock
	movq	%rax, -48(%rbp)
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$.L.str.5, %edi
	movb	$1, %al
	callq	printf
	movl	$1, %edi
	callq	check
	xorl	%eax, %eax
	addq	$48, %rsp
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
	subq	$48, %rsp
	movl	$.L.str.6, %edi
	callq	init
	callq	clock
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$199999, -12(%rbp)      # imm = 0x30D3F
	jle	.LBB6_2
	jmp	.LBB6_9
	.p2align	4, 0x90
.LBB6_8:                                # %for.end34
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$a, %edi
	movl	$b, %esi
	movl	$c, %edx
	movl	$d, %ecx
	movl	$e, %r8d
	movl	$aa, %r9d
	xorps	%xmm0, %xmm0
	pushq	$cc
	pushq	$bb
	callq	dummy
	addq	$16, %rsp
	incl	-12(%rbp)
	cmpl	$199999, -12(%rbp)      # imm = 0x30D3F
	jg	.LBB6_9
.LBB6_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #       Child Loop BB6_6 Depth 3
	movl	$0, -4(%rbp)
	cmpl	$179, -4(%rbp)
	jle	.LBB6_4
	jmp	.LBB6_8
	.p2align	4, 0x90
.LBB6_7:                                # %for.end
                                        #   in Loop: Header=BB6_4 Depth=2
	movslq	-4(%rbp), %rax
	movss	c(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	d(,%rax,4), %xmm0
	addss	b(,%rax,4), %xmm0
	movss	%xmm0, a(,%rax,4)
	incl	-4(%rbp)
	cmpl	$179, -4(%rbp)
	jg	.LBB6_8
.LBB6_4:                                # %for.body4
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_6 Depth 3
	movl	$0, -8(%rbp)
	cmpl	$179, -8(%rbp)
	jg	.LBB6_7
	.p2align	4, 0x90
.LBB6_6:                                # %for.body7
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-8(%rbp), %rax
	imulq	$720, %rax, %rax        # imm = 0x2D0
	movslq	-4(%rbp), %rcx
	movss	bb(%rax,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	cc(%rax,%rcx,4), %xmm0
	addss	aa(%rax,%rcx,4), %xmm0
	movss	%xmm0, aa(%rax,%rcx,4)
	incl	-8(%rbp)
	cmpl	$179, -8(%rbp)
	jle	.LBB6_6
	jmp	.LBB6_7
.LBB6_9:                                # %for.end38
	callq	clock
	movq	%rax, -48(%rbp)
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI6_0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$.L.str.7, %edi
	movb	$1, %al
	callq	printf
	movl	$11, %edi
	callq	check
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	s2275, .Lfunc_end6-s2275
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI7_0:
	.quad	4696837146684686336     # double 1.0E+6
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
	subq	$48, %rsp
	movl	$.L.str.3, %edi
	callq	init
	callq	clock
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$199999, -12(%rbp)      # imm = 0x30D3F
	jle	.LBB7_2
	jmp	.LBB7_6
	.p2align	4, 0x90
.LBB7_5:                                # %for.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$a, %edi
	movl	$b, %esi
	movl	$c, %edx
	movl	$d, %ecx
	movl	$e, %r8d
	movl	$aa, %r9d
	pushq	$cc
	pushq	$bb
	callq	dummy
	addq	$16, %rsp
	incl	-12(%rbp)
	cmpl	$199999, -12(%rbp)      # imm = 0x30D3F
	jg	.LBB7_6
.LBB7_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movl	$1065353216, -4(%rbp)   # imm = 0x3F800000
	movl	$0, -8(%rbp)
	cmpl	$31999, -8(%rbp)        # imm = 0x7CFF
	jg	.LBB7_5
	.p2align	4, 0x90
.LBB7_4:                                # %for.body4
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-8(%rbp), %rax
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	a(,%rax,4), %xmm0
	movss	%xmm0, -4(%rbp)
	incl	-8(%rbp)
	cmpl	$31999, -8(%rbp)        # imm = 0x7CFF
	jle	.LBB7_4
	jmp	.LBB7_5
.LBB7_6:                                # %for.end8
	callq	clock
	movq	%rax, -48(%rbp)
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI7_0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$.L.str.8, %edi
	movb	$1, %al
	callq	printf
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, temp(%rip)
	movl	$-1, %edi
	callq	check
	xorl	%eax, %eax
	addq	$48, %rsp
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
	subq	$48, %rsp
	movl	$.L.str.9, %edi
	callq	init
	callq	clock
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	movss	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cmpl	$399999, -12(%rbp)      # imm = 0x61A7F
	jle	.LBB8_2
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:                                # %for.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$a, %edi
	movl	$b, %esi
	movl	$c, %edx
	movl	$d, %ecx
	movl	$e, %r8d
	movl	$aa, %r9d
	pushq	$cc
	pushq	$bb
	callq	dummy
	movss	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addq	$16, %rsp
	incl	-12(%rbp)
	cmpl	$399999, -12(%rbp)      # imm = 0x61A7F
	jg	.LBB8_6
.LBB8_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movl	$1065353216, -4(%rbp)   # imm = 0x3F800000
	movl	$0, -8(%rbp)
	cmpl	$15999, -8(%rbp)        # imm = 0x3E7F
	jg	.LBB8_5
	.p2align	4, 0x90
.LBB8_4:                                # %for.body4
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	incl	-8(%rbp)
	cmpl	$15999, -8(%rbp)        # imm = 0x3E7F
	jle	.LBB8_4
	jmp	.LBB8_5
.LBB8_6:                                # %for.end8
	callq	clock
	movq	%rax, -48(%rbp)
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI8_0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$.L.str.10, %edi
	movb	$1, %al
	callq	printf
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, temp(%rip)
	movl	$-1, %edi
	callq	check
	xorl	%eax, %eax
	addq	$48, %rsp
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
	subq	$48, %rsp
	movl	$.L.str.2, %edi
	callq	init
	callq	clock
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$199999, -8(%rbp)       # imm = 0x30D3F
	jle	.LBB9_2
	jmp	.LBB9_6
	.p2align	4, 0x90
.LBB9_5:                                # %for.inc11
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$a, %edi
	movl	$b, %esi
	movl	$c, %edx
	movl	$d, %ecx
	movl	$e, %r8d
	movl	$aa, %r9d
	xorps	%xmm0, %xmm0
	pushq	$cc
	pushq	$bb
	callq	dummy
	addq	$16, %rsp
	incl	-8(%rbp)
	cmpl	$199999, -8(%rbp)       # imm = 0x30D3F
	jg	.LBB9_6
.LBB9_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
	movl	$31998, -4(%rbp)        # imm = 0x7CFE
	cmpl	$0, -4(%rbp)
	js	.LBB9_5
	.p2align	4, 0x90
.LBB9_4:                                # %for.inc
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movss	a(,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	b(,%rax,4), %xmm0
	movss	%xmm0, a+4(,%rax,4)
	decl	-4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.LBB9_4
	jmp	.LBB9_5
.LBB9_6:                                # %for.end12
	callq	clock
	movq	%rax, -40(%rbp)
	subq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI9_0(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$.L.str.11, %edi
	movb	$1, %al
	callq	printf
	movl	$1, %edi
	callq	check
	xorl	%eax, %eax
	addq	$48, %rsp
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
	subq	$64, %rsp
	movl	$0, -28(%rbp)
	movl	$1, -24(%rbp)
	movl	$1, -20(%rbp)
	movl	$16, %edi
	movl	$128000, %esi           # imm = 0x1F400
	callq	memalign
	movq	%rax, -40(%rbp)
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	movq	%rax, %rdi
	callq	set
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
	callq	clock
	movq	%rax, -16(%rbp)
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	callq	s242
	callq	s2275
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf
	callq	s112
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	callq	s312
	callq	s317
	callq	clock
	movq	%rax, -64(%rbp)
	subq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI10_0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$.L.str.16, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.p2align	4, 0x90
	.type	set1d_for.cond,@function
set1d_for.cond:                         # @set1d_for.cond
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi33:
	.cfi_def_cfa_offset 16
.Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi35:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jg	.LBB11_3
	.p2align	4, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	leal	1(%rax), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movq	(%rsi), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	incl	(%rdi)
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jle	.LBB11_2
.LBB11_3:                               # %for.end.exitStub
	popq	%rbp
	retq
.Lfunc_end11:
	.size	set1d_for.cond, .Lfunc_end11-set1d_for.cond
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.p2align	4, 0x90
	.type	set1d_for.cond8,@function
set1d_for.cond8:                        # @set1d_for.cond8
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi36:
	.cfi_def_cfa_offset 16
.Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi38:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jg	.LBB12_3
	.p2align	4, 0x90
.LBB12_2:                               # %for.body11
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	leal	1(%rax), %ecx
	imull	%ecx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movq	(%rsi), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	incl	(%rdi)
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jle	.LBB12_2
.LBB12_3:                               # %for.end22.exitStub
	popq	%rbp
	retq
.Lfunc_end12:
	.size	set1d_for.cond8, .Lfunc_end12-set1d_for.cond8
	.cfi_endproc

	.p2align	4, 0x90
	.type	set1d_for.cond25,@function
set1d_for.cond25:                       # @set1d_for.cond25
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi39:
	.cfi_def_cfa_offset 16
.Lcfi40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi41:
	.cfi_def_cfa_register %rbp
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jg	.LBB13_3
	.p2align	4, 0x90
.LBB13_2:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	(%rdx), %r8
	movslq	(%rdi), %rax
	movss	%xmm0, (%r8,%rax,4)
	movl	(%rcx), %eax
	addl	%eax, (%rdi)
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jle	.LBB13_2
.LBB13_3:                               # %for.end33.exitStub
	popq	%rbp
	retq
.Lfunc_end13:
	.size	set1d_for.cond25, .Lfunc_end13-set1d_for.cond25
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.p2align	4, 0x90
	.type	set2d_for.cond,@function
set2d_for.cond:                         # @set2d_for.cond
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi42:
	.cfi_def_cfa_offset 16
.Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi44:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cmpl	$179, (%rdi)
	jle	.LBB14_2
	jmp	.LBB14_6
	.p2align	4, 0x90
.LBB14_4:                               # %for.inc9
                                        #   in Loop: Header=BB14_2 Depth=1
	incl	(%rdi)
	cmpl	$179, (%rdi)
	jg	.LBB14_6
.LBB14_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_5 Depth 2
	movl	$0, (%rsi)
	cmpl	$180, (%rsi)
	jge	.LBB14_4
	.p2align	4, 0x90
.LBB14_5:                               # %for.inc
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rax
	leal	1(%rax), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	imulq	$720, %rax, %rax        # imm = 0x2D0
	addq	(%rdx), %rax
	movslq	(%rsi), %rcx
	movss	%xmm1, (%rax,%rcx,4)
	incl	(%rsi)
	cmpl	$180, (%rsi)
	jl	.LBB14_5
	jmp	.LBB14_4
.LBB14_6:                               # %for.end11.exitStub
	popq	%rbp
	retq
.Lfunc_end14:
	.size	set2d_for.cond, .Lfunc_end14-set2d_for.cond
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.p2align	4, 0x90
	.type	set2d_for.cond16,@function
set2d_for.cond16:                       # @set2d_for.cond16
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi45:
	.cfi_def_cfa_offset 16
.Lcfi46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi47:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cmpl	$179, (%rdi)
	jle	.LBB15_2
	jmp	.LBB15_6
	.p2align	4, 0x90
.LBB15_4:                               # %for.inc38
                                        #   in Loop: Header=BB15_2 Depth=1
	incl	(%rdi)
	cmpl	$179, (%rdi)
	jg	.LBB15_6
.LBB15_2:                               # %for.body19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
	movl	$0, (%rsi)
	cmpl	$180, (%rsi)
	jge	.LBB15_4
	.p2align	4, 0x90
.LBB15_5:                               # %for.inc35
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rax
	leal	1(%rax), %ecx
	imull	%ecx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	imulq	$720, %rax, %rax        # imm = 0x2D0
	addq	(%rdx), %rax
	movslq	(%rsi), %rcx
	movss	%xmm1, (%rax,%rcx,4)
	incl	(%rsi)
	cmpl	$180, (%rsi)
	jl	.LBB15_5
	jmp	.LBB15_4
.LBB15_6:                               # %for.end40.exitStub
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set2d_for.cond16, .Lfunc_end15-set2d_for.cond16
	.cfi_endproc

	.p2align	4, 0x90
	.type	set2d_for.cond43,@function
set2d_for.cond43:                       # @set2d_for.cond43
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi48:
	.cfi_def_cfa_offset 16
.Lcfi49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi50:
	.cfi_def_cfa_register %rbp
	cmpl	$179, (%rdi)
	jle	.LBB16_2
	jmp	.LBB16_6
	.p2align	4, 0x90
.LBB16_4:                               # %for.inc59
                                        #   in Loop: Header=BB16_2 Depth=1
	incl	(%rdi)
	cmpl	$179, (%rdi)
	jg	.LBB16_6
.LBB16_2:                               # %for.body46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	movl	$0, (%rsi)
	cmpl	$180, (%rsi)
	jge	.LBB16_4
	.p2align	4, 0x90
.LBB16_5:                               # %for.inc56
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movslq	(%rdi), %rax
	imulq	$720, %rax, %r9         # imm = 0x2D0
	addq	(%rcx), %r9
	movslq	(%rsi), %rax
	movss	%xmm0, (%r9,%rax,4)
	movl	(%r8), %eax
	addl	%eax, (%rsi)
	cmpl	$180, (%rsi)
	jl	.LBB16_5
	jmp	.LBB16_4
.LBB16_6:                               # %for.end61.exitStub
	popq	%rbp
	retq
.Lfunc_end16:
	.size	set2d_for.cond43, .Lfunc_end16-set2d_for.cond43
	.cfi_endproc

	.p2align	4, 0x90
	.type	check_for.cond42,@function
check_for.cond42:                       # @check_for.cond42
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi51:
	.cfi_def_cfa_offset 16
.Lcfi52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi53:
	.cfi_def_cfa_register %rbp
	cmpl	$32399, (%rdi)          # imm = 0x7E8F
	jg	.LBB17_3
	.p2align	4, 0x90
.LBB17_2:                               # %for.body44
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	array(,%rax,4), %xmm0
	movss	%xmm0, (%rsi)
	incl	(%rdi)
	cmpl	$32399, (%rdi)          # imm = 0x7E8F
	jle	.LBB17_2
.LBB17_3:                               # %for.end50.exitStub
	popq	%rbp
	retq
.Lfunc_end17:
	.size	check_for.cond42, .Lfunc_end17-check_for.cond42
	.cfi_endproc

	.p2align	4, 0x90
	.type	check_for.cond14,@function
check_for.cond14:                       # @check_for.cond14
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi54:
	.cfi_def_cfa_offset 16
.Lcfi55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi56:
	.cfi_def_cfa_register %rbp
	cmpl	$179, (%rdi)
	jle	.LBB18_2
	jmp	.LBB18_6
	.p2align	4, 0x90
.LBB18_4:                               # %for.inc38
                                        #   in Loop: Header=BB18_2 Depth=1
	incl	(%rdi)
	cmpl	$179, (%rdi)
	jg	.LBB18_6
.LBB18_2:                               # %for.body16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_5 Depth 2
	movl	$0, (%rsi)
	cmpl	$180, (%rsi)
	jge	.LBB18_4
	.p2align	4, 0x90
.LBB18_5:                               # %for.inc35
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rdi), %rax
	imulq	$720, %rax, %r9         # imm = 0x2D0
	movslq	(%rsi), %rax
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	aa(%r9,%rax,4), %xmm0
	movss	%xmm0, (%rdx)
	movslq	(%rdi), %rax
	imulq	$720, %rax, %r9         # imm = 0x2D0
	movslq	(%rsi), %rax
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	bb(%r9,%rax,4), %xmm0
	movss	%xmm0, (%rcx)
	movslq	(%rdi), %rax
	imulq	$720, %rax, %r9         # imm = 0x2D0
	movslq	(%rsi), %rax
	movss	(%r8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	cc(%r9,%rax,4), %xmm0
	movss	%xmm0, (%r8)
	incl	(%rsi)
	cmpl	$180, (%rsi)
	jl	.LBB18_5
	jmp	.LBB18_4
.LBB18_6:                               # %for.end40.exitStub
	popq	%rbp
	retq
.Lfunc_end18:
	.size	check_for.cond14, .Lfunc_end18-check_for.cond14
	.cfi_endproc

	.p2align	4, 0x90
	.type	check_for.cond,@function
check_for.cond:                         # @check_for.cond
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi57:
	.cfi_def_cfa_offset 16
.Lcfi58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi59:
	.cfi_def_cfa_register %rbp
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jg	.LBB19_3
	.p2align	4, 0x90
.LBB19_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	a(,%rax,4), %xmm0
	movss	%xmm0, (%rsi)
	movslq	(%rdi), %rax
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	b(,%rax,4), %xmm0
	movss	%xmm0, (%rdx)
	movslq	(%rdi), %rax
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	c(,%rax,4), %xmm0
	movss	%xmm0, (%rcx)
	movslq	(%rdi), %rax
	movss	(%r8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	d(,%rax,4), %xmm0
	movss	%xmm0, (%r8)
	movslq	(%rdi), %rax
	movss	(%r9), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	e(,%rax,4), %xmm0
	movss	%xmm0, (%r9)
	incl	(%rdi)
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jle	.LBB19_2
.LBB19_3:                               # %for.end.exitStub
	popq	%rbp
	retq
.Lfunc_end19:
	.size	check_for.cond, .Lfunc_end19-check_for.cond
	.cfi_endproc

	.p2align	4, 0x90
	.type	set_for.cond27,@function
set_for.cond27:                         # @set_for.cond27
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi60:
	.cfi_def_cfa_offset 16
.Lcfi61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi62:
	.cfi_def_cfa_register %rbp
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jg	.LBB20_3
	.p2align	4, 0x90
.LBB20_2:                               # %for.body29
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	leal	1(%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	leal	1(%rax,%rdx), %edx
	andl	$-4, %edx
	subl	%edx, %ecx
	incl	%ecx
	movl	%ecx, indx(,%rax,4)
	incl	(%rdi)
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jle	.LBB20_2
.LBB20_3:                               # %for.end35.exitStub
	popq	%rbp
	retq
.Lfunc_end20:
	.size	set_for.cond27, .Lfunc_end20-set_for.cond27
	.cfi_endproc

	.p2align	4, 0x90
	.type	set_for.cond,@function
set_for.cond:                           # @set_for.cond
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi63:
	.cfi_def_cfa_offset 16
.Lcfi64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi65:
	.cfi_def_cfa_register %rbp
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jg	.LBB21_3
	.p2align	4, 0x90
.LBB21_2:                               # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %rax
	leal	4(%rax), %ecx
	movq	(%rsi), %rdx
	movl	%ecx, (%rdx,%rax,4)
	movslq	(%rdi), %rax
	leal	2(%rax), %ecx
	movq	(%rsi), %rdx
	movl	%ecx, 4(%rdx,%rax,4)
	movslq	(%rdi), %rax
	movq	(%rsi), %rcx
	movl	%eax, 8(%rcx,%rax,4)
	movslq	(%rdi), %rax
	leal	3(%rax), %ecx
	movq	(%rsi), %rdx
	movl	%ecx, 12(%rdx,%rax,4)
	movslq	(%rdi), %rax
	leal	1(%rax), %ecx
	movq	(%rsi), %rdx
	movl	%ecx, 16(%rdx,%rax,4)
	addl	$5, (%rdi)
	cmpl	$31999, (%rdi)          # imm = 0x7CFF
	jle	.LBB21_2
.LBB21_3:                               # %for.end.exitStub
	popq	%rbp
	retq
.Lfunc_end21:
	.size	set_for.cond, .Lfunc_end21-set_for.cond
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

	.ident	"clang version 4.0.0 (trunk 286860)"
	.section	".note.GNU-stack","",@progbits
