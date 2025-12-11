	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rbx, -24(%rbp)
	movq	%r12, -32(%rbp)
	movq	%r13, -40(%rbp)
	movq	%r14, -48(%rbp)
	movq	%r15, -56(%rbp)
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r12
	subq	$8, %rsp
	movq	%rsp, %r13
	subq	$8, %rsp
	movq	%rsp, %r14
	subq	$8, %rsp
	movq	%rsp, %r15
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, (%rbx)
	movq	%rsi, (%r10)
	movq	%rdx, (%r11)
	movq	-8(%rbp), %rax
	movq	%r12, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , (%r13)
	movq	%r9 , (%r14)
	movq	16(%rbp), %rax
	movq	%r15, %rcx
	movq	%rax, (%rcx)
	movq	24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdx
	movq	(%r10), %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	(%r11), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	(%r12), %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	(%r13), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	(%r14), %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	(%r15), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-40(%rbp), %r13
	movq	-48(%rbp), %r14
	movq	-56(%rbp), %r15
	movq	%rsi, %rax
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
	movq	%rax, %rdx
	movq	%rdx, (%rbx)
	movq	(%rbx), %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_int
	popq	%rdx
	movq	-8(%rbp), %rbx
	movq	$41, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	