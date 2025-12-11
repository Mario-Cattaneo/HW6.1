	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rbx, -8(%rbp)
	movq	%r12, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$3, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r8 , (%r9 )
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1788
	.text
_body1787:
	movq	(%r9 ), %r10
	movq	(%rbx), %r11
	movq	%r10, %rax
	movq	%rax, %r12
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%r12, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r12
	movq	$110, %rax
	movq	%r12, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, (%rbx)
	jmp	_cond1788
	.text
_cond1788:
	movq	(%rbx), %r10
	movq	(%rdi), %r11
	cmpq	%r11, %r10
	setl	%r12b
	andq	$1, %r12
	cmpq	$0, %r12
	jne	_body1787
	jmp	_post1786
	.text
_post1786:
	movq	%r8 , (%rdx)
	movq	(%rdx), %rbx
	pushq	%rsi
	movq	%rbx, %rdi
	callq	string_of_array
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, (%rsi)
	movq	(%rsi), %rbx
	movq	%rbx, %rdi
	callq	print_string
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	