	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$8, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	(%rdx), %r8 
	cmpq	%rdi, %r8 
	setg	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	if
	jmp	else
	.text
else:
	movq	%rdi, %r9 
	subq	%r8 , %r9 
	movq	%r9 , (%rsi)
	jmp	loop
	.text
gcd:
	movq	(%rdx), %rdi
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	ret_b
	jmp	loop
	.text
if:
	movq	%r8 , %r9 
	subq	%rdi, %r9 
	movq	%r9 , (%rdx)
	jmp	loop
	.text
loop:
	movq	(%rsi), %rdi
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	