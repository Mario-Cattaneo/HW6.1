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
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%rbx), %rsi
	movq	(%rdx), %rdi
	movq	%rsi, %r8 
	addq	%rdi, %r8 
	movq	(%rdx), %rsi
	movq	%r8 , %rdi
	imulq	%rsi, %rdi
	movq	%rdi, (%rbx)
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	_cond15
	.text
_cond15:
	movq	(%rdx), %rsi
	cmpq	$10, %rsi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	