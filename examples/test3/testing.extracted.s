	.text
	.file	"testing.extracted.ll"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	movl	$0, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	main_for.cond
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	callq	main_for.cond1
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.p2align	4, 0x90
	.type	main_for.cond1,@function
main_for.cond1:                         # @main_for.cond1
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi3:
	.cfi_def_cfa_offset 16
.Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi5:
	.cfi_def_cfa_register %rbp
	cmpl	$9, (%rdi)
	jg	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %eax
	addl	%eax, (%rsi)
	incl	(%rdi)
	cmpl	$9, (%rdi)
	jle	.LBB1_2
.LBB1_3:                                # %for.end7.exitStub
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main_for.cond1, .Lfunc_end1-main_for.cond1
	.cfi_endproc

	.p2align	4, 0x90
	.type	main_for.cond,@function
main_for.cond:                          # @main_for.cond
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Lcfi6:
	.cfi_def_cfa_offset 16
.Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi8:
	.cfi_def_cfa_register %rbp
	cmpl	$9, (%rdi)
	jg	.LBB2_3
	.p2align	4, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %eax
	addl	%eax, (%rsi)
	incl	(%rdi)
	cmpl	$9, (%rdi)
	jle	.LBB2_2
.LBB2_3:                                # %for.end.exitStub
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main_for.cond, .Lfunc_end2-main_for.cond
	.cfi_endproc


	.ident	"clang version 4.0.0 (tags/RELEASE_400/final)"
	.section	".note.GNU-stack","",@progbits
