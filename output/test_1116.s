	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	cmpq	%rsi, %rdi
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	ret_u
	jmp	term1
	.text
both_even:
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rsi
	movq	%rbx, %rdi
	callq	binary_gcd
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
gcd:
	movq	$-1, %rbx
	xorq	%rdi, %rbx
	movq	$1, %rdx
	andq	%rbx, %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	setne	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	u_even
	jmp	u_odd
	.text
ret_u:
	movq	-8(%rbp), %rbx
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_v:
	movq	-8(%rbp), %rbx
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
term1:
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	ret_v
	jmp	term2
	.text
term2:
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	ret_u
	jmp	gcd
	.text
u_even:
	movq	%rsi, %rbx
	andq	$1, %rbx
	movq	$0, %rax
	cmpq	%rbx, %rax
	setne	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	ue_vo
	jmp	both_even
	.text
u_gt:
	movq	%rdi, %rbx
	subq	%rsi, %rbx
	movq	%rbx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
u_odd:
	movq	$-1, %rbx
	xorq	%rsi, %rbx
	movq	$1, %rdx
	andq	%rbx, %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	setne	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	v_even
	jmp	v_odd
	.text
ue_vo:
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	pushq	%rsi
	movq	%rbx, %rdi
	callq	binary_gcd
	popq	%rsi
	movq	%rax, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_even:
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	pushq	%rdi
	movq	%rbx, %rsi
	callq	binary_gcd
	popq	%rdi
	movq	%rax, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_gt:
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%rdi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_odd:
	cmpq	%rsi, %rdi
	setg	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	u_gt
	jmp	v_gt
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	movq	$15, %rsi
	movq	$21, %rdi
	callq	binary_gcd
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	