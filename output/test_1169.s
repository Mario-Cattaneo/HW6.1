	.text
	.globl	sub
sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rbx, -8(%rbp)
	movq	%r12, -16(%rbp)
	movq	%r13, -24(%rbp)
	movq	%r14, -32(%rbp)
	movq	%r15, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r12
	movq	%rdi, (%rbx)
	movq	%rsi, (%r8 )
	movq	%rdx, (%r9 )
	movq	(%rbx), %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rdi
	callq	array_of_string
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rbx
	movq	%rbx, (%r10)
	movq	(%r9 ), %rbx
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	movq	%rbx, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rbx, (%rdx)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	%rsi, (%rbx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2491
	.text
_body2490:
	movq	(%rbx), %rdi
	movq	(%r11), %r9 
	movq	%rdi, %rax
	movq	%rax, %r13
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%r13, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r13
	movq	(%r10), %rdi
	movq	(%r11), %r9 
	movq	(%r8 ), %r14
	movq	%r9 , %r15
	addq	%r14, %r15
	movq	%rdi, %rax
	movq	%rax, %r9 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r15, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r15, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %rdi
	movq	%rdi, (%r13)
	movq	(%r11), %rdi
	movq	%rdi, %r9 
	addq	$1, %r9 
	movq	%r9 , (%r11)
	jmp	_cond2491
	.text
_cond2491:
	movq	(%r11), %rdi
	movq	(%rdx), %r9 
	cmpq	%r9 , %rdi
	setl	%r13b
	andq	$1, %r13
	cmpq	$0, %r13
	jne	_body2490
	jmp	_post2489
	.text
_post2489:
	movq	%rsi, (%r12)
	movq	(%r12), %rbx
	movq	%rbx, %rdi
	callq	string_of_array
	movq	%rax, %rdx
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	%rdx, %rax
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
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	%rsi, (%rbx)
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$1, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	pushq	%rdx
	movq	$3, %rsi
	movq	%rdx, %rdi
	movq	$5, %rdx
	callq	sub
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	print_string
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	