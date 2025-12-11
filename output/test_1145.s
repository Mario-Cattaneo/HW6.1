	.text
	.globl	fact
fact:
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
	jmp	_cond793
	.text
_body792:
	movq	(%rdx), %rsi
	movq	(%rbx), %rdi
	movq	%rsi, %r8 
	imulq	%rdi, %r8 
	movq	%r8 , (%rdx)
	movq	(%rbx), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	movq	%rdi, (%rbx)
	jmp	_cond793
	.text
_cond793:
	movq	(%rbx), %rsi
	cmpq	$0, %rsi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body792
	jmp	_post791
	.text
_post791:
	movq	(%rdx), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	movq	$5, %rdi
	callq	fact
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	string_of_int
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	