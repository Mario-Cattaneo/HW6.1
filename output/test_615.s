	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$9, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %r8 
	movq	(%rsi), %r9 
	movq	%r8 , %rdi
	addq	%r9 , %rdi
	movq	%rdi, (%rdx)
	movq	(%rsi), %rdi
	movq	(%rsi), %r8 
	movq	(%rsi), %r9 
	movq	%r8 , %rsi
	imulq	%r9 , %rsi
	movq	%rdi, %r8 
	addq	%rsi, %r8 
	movq	(%rdx), %rsi
	movq	%r8 , %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	