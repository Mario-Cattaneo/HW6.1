	.data
	.globl	i
i:
	.quad	8
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	callq	g
	movq	%rax, %rdx
	movq	%rdx, (%rbx)
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
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
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
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	