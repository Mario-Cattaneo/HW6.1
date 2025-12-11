	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$17, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$18, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rsi
	movq	(%rdx), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	