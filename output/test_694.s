	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8 , -72(%rbp)
	movq	%r9 , -80(%rbp)
	pushq	16(%rbp)
	popq	-88(%rbp)
	pushq	24(%rbp)
	popq	-96(%rbp)
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %r11
	addq	-24(%rbp), %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%r11, %r10
	addq	-56(%rbp), %r10
	movq	(%r9 ), %r11
	movq	%r10, %r9 
	addq	%r11, %r9 
	movq	(%r8 ), %r10
	movq	%r9 , %r8 
	addq	%r10, %r8 
	movq	(%rdi), %r9 
	movq	%r8 , %rdi
	addq	%r9 , %rdi
	movq	(%rsi), %r8 
	movq	%rdi, %rsi
	addq	%r8 , %rsi
	movq	(%rdx), %rdi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdx
	pushq	%rdx
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
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	(%rdx), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_int
	popq	%rsi
	movq	$41, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	