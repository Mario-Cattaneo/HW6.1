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
	movq	$9, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rsi
	movq	(%rbx), %rdi
	movq	%rsi, %r8 
	addq	%rdi, %r8 
	movq	%r8 , (%rdx)
	movq	(%rbx), %rsi
	movq	(%rbx), %rdi
	movq	(%rbx), %r8 
	movq	%rdi, %rbx
	imulq	%r8 , %rbx
	movq	%rsi, %rdi
	addq	%rbx, %rdi
	movq	(%rdx), %rbx
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	