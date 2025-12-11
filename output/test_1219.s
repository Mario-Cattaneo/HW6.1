	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rbx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rbx)
	movq	%rsi, (%r8 )
	movq	%rdx, (%r9 )
	movq	(%rbx), %rdx
	movq	(%r8 ), %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	(%r9 ), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-16(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	pushq	$-3
	pushq	$-4
	movq	$-5, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	