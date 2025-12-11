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
	movq	$12, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rsi
	movq	(%rdx), %rdi
	movq	%rsi, %r8 
	subq	%rdi, %r8 
	cmpq	$0, %r8 
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then8224
	jmp	_else8223
	.text
_else8223:
	movq	(%rbx), %rsi
	movq	(%rdx), %rbx
	movq	%rsi, %rdx
	subq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8222:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8224:
	movq	(%rbx), %rsi
	movq	$0, %rbx
	subq	%rsi, %rbx
	movq	(%rdx), %rsi
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	