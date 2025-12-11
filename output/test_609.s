	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%rdx), %r9 
	movq	(%rsi), %r8 
	movq	%r9 , %rdi
	addq	%r8 , %rdi
	movq	(%rsi), %r9 
	movq	%rdi, %r8 
	imulq	%r9 , %r8 
	movq	%r8 , (%rdx)
	movq	(%rsi), %r8 
	movq	%r8 , %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	jmp	_cond15
	.text
_cond15:
	movq	(%rsi), %r8 
	cmpq	$10, %r8 
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	