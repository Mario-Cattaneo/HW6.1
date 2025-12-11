	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rbx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%rdi, %rbx
	addq	%rsi, %rbx
	movq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, %rbx
	addq	-8(%rbp), %rbx
	movq	%rbx, %rdx
	addq	%r8 , %rdx
	movq	%rdx, %rbx
	addq	%r9 , %rbx
	movq	%rbx, %rdx
	addq	16(%rbp), %rdx
	movq	%rdx, %rbx
	addq	24(%rbp), %rbx
	movq	-16(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	pushq	%rdi
	pushq	%rdi
	pushq	%rdi
	movq	%rdi, %r9 
	movq	%rdi, %r8 
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	callq	bar
	addq	$16, %rsp
	popq	%rdi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	movq	$3, %rdi
	callq	foo
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	