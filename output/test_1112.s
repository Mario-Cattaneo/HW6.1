	.data
	.globl	test1
test1:
	.quad	0
	.quad	0
	.quad	100
	.data
	.globl	test2
test2:
	.quad	test1
	.quad	0
	.quad	10
	.data
	.globl	test3
test3:
	.quad	0
	.quad	0
	.quad	1
	.data
	.globl	test
test:
	.quad	test2
	.quad	test3
	.quad	5
	.text
	.globl	sum_tree
sum_tree:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	cmpq	$0, %rdi
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	then
	jmp	else
	.text
else:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	sum_tree
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	sum_tree
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
then:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
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
	leaq	test(%rip), %rdi
	callq	sum_tree
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	