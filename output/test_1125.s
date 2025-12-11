	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rbx)
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
end:
	movq	(%rdx), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rbx), %rsi
	cmpq	$0, %rsi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	then
	jmp	end
	.text
then:
	movq	(%rdx), %rsi
	movq	(%rbx), %rdi
	movq	%rsi, %r8 
	imulq	%rdi, %r8 
	movq	%r8 , (%rdx)
	movq	(%rbx), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	movq	%rdi, (%rbx)
	jmp	start
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