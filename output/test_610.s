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
	jmp	_cond40
	.text
_body39:
	movq	(%rdx), %r8 
	movq	%r8 , %rdi
	addq	$2, %rdi
	movq	%rdi, (%rdx)
	movq	(%rsi), %r8 
	movq	%r8 , %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	jmp	_cond40
	.text
_cond40:
	movq	(%rsi), %r8 
	cmpq	$3, %r8 
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body39
	jmp	_post38
	.text
_post38:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	