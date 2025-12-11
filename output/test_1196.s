	.text
	.globl	create_pair
create_pair:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	pushq	%rdx
	movq	$16, %rdi
	callq	oat_malloc
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	movq	(%rbx), %rsi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	%rsi, (%rbx)
	movq	(%rdx), %rbx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	%rbx, (%rdx)
	movq	-8(%rbp), %rbx
	movq	%rdi, %rax
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
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$0, %rsi
	movq	$1, %rdi
	callq	create_pair
	movq	%rax, %rdx
	movq	%rdx, (%rbx)
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdx
	movq	(%rbx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rsi
	movq	%rdx, %rbx
	andq	%rsi, %rbx
	cmpq	$0, %rbx
	jne	_then6802
	jmp	_else6801
	.text
_else6801:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6800:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6802:
	movq	-8(%rbp), %rbx
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	