	.text
	.globl	fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rsi)
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond793
	.text
_body792:
	movq	(%rdx), %rdi
	movq	(%rsi), %r9 
	movq	%rdi, %r8 
	imulq	%r9 , %r8 
	movq	%r8 , (%rdx)
	movq	(%rsi), %r8 
	movq	%r8 , %rdi
	subq	$1, %rdi
	movq	%rdi, (%rsi)
	jmp	_cond793
	.text
_cond793:
	movq	(%rsi), %r8 
	cmpq	$0, %r8 
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body792
	jmp	_post791
	.text
_post791:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	movq	$5, %rdi
	callq	fact
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	string_of_int
	popq	%rdx
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	