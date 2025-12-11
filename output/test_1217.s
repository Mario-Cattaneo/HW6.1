	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rbx, -16(%rbp)
	movq	%r12, -24(%rbp)
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r12
	movq	%rdi, (%rbx)
	movq	%rsi, (%r9 )
	movq	%rdx, (%r10)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , (%r12)
	movq	(%rbx), %rdx
	movq	(%r9 ), %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	(%r10), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	(%r11), %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	(%r12), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-16(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	%rdx, %rax
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
	pushq	$-3
	pushq	$-4
	movq	$-5, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	