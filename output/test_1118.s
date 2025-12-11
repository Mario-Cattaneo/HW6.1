	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rbx
	movq	%rdi, %rdx
	xorq	%rbx, %rdx
	movq	%rbx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rdx, %rbx
	xorq	%rsi, %rbx
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	movq	%rbx, %rdx
	andq	$1, %rdx
	movq	%rsi, %rbx
	orq	%rdx, %rbx
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
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$1, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	-8(%rbp), %rbx
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rbx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%rbx)
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	one_iteration
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	cmpq	$5, %rsi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	end
	jmp	loop