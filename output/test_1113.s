	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rbx, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$8, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rsi, %rax
	setg	-16(%rbp)
	andq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	if
	jmp	else
	.text
else:
	movq	%rsi, %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
gcd:
	movq	(%rbx), %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	ret_b
	jmp	loop
	.text
if:
	movq	-8(%rbp), %rax
	subq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
loop:
	movq	(%rdx), %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%rbx), %rdx
	movq	-40(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%rdx), %rbx
	movq	-40(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	