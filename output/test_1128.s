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
	jmp	_cond40
	.text
_body39:
	movq	(%rbx), %rsi
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, (%rbx)
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	_cond40
	.text
_cond40:
	movq	(%rdx), %rsi
	cmpq	$3, %rsi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body39
	jmp	_post38
	.text
_post38:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	