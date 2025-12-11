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
	movq	$12, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %r8 
	movq	(%rdx), %r9 
	movq	%r8 , %rdi
	subq	%r9 , %rdi
	cmpq	$0, %rdi
	setle	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_then8224
	jmp	_else8223
	.text
_else8223:
	movq	(%rsi), %rdi
	movq	(%rdx), %rsi
	movq	%rdi, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8222:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8224:
	movq	(%rsi), %rdi
	movq	$0, %rsi
	subq	%rdi, %rsi
	movq	(%rdx), %rdi
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	