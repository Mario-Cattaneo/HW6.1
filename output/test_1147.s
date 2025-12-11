	.data
	.globl	i
i:
	.quad	0
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rsi
	cmpq	$1, %rsi
	setge	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then930
	jmp	_else929
	.text
_else929:
	movq	(%rbx), %rsi
	movq	(%rdx), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	%rdx, (%r8 )
	jmp	_merge928
	.text
_merge928:
	movq	(%r8 ), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	(%rdx), %rsi
	movq	(%rbx), %rdx
	movq	%rdx, %rbx
	subq	$1, %rbx
	pushq	%r8 
	pushq	%rsi
	movq	%rbx, %rdi
	callq	f
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdx
	movq	$1, %rbx
	addq	%rdx, %rbx
	movq	%rbx, (%r8 )
	jmp	_merge928
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
	movq	$3, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	movq	(%rbx), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	f
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rbx
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	