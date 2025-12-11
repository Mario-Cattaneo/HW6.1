	.data
	.globl	i
i:
	.quad	11
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$12, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$10, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
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
	callq	f
	movq	%rax, %rbx
	callq	g
	movq	%rax, %rdx
	movq	%rbx, %rsi
	addq	%rdx, %rsi
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	