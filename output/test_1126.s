	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	cmpq	$0, %rdi
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rdi, %rbx
	subq	$1, %rbx
	pushq	%rdi
	movq	%rbx, %rdi
	callq	factorial
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdi, %rbx
	imulq	%rdx, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret1:
	movq	-8(%rbp), %rbx
	movq	$1, %rax
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
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	