	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	movq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %r8 
	movq	%rdi, %rdx
	xorq	%r8 , %rdx
	movq	%rdx, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	andq	$1, %rsi
	movq	%rdx, %rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$1, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rdi), %r8 
	movq	%r8 , %rdx
	addq	$1, %rdx
	movq	%rdx, (%rdi)
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%r8 , %rdi
	callq	one_iteration
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	cmpq	$5, %rdx
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	end
	jmp	loop