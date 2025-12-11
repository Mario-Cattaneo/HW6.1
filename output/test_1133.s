	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rbx)
	movq	%rsi, (%r8 )
	movq	%rdx, (%r9 )
	movq	(%r9 ), %rdx
	cmpq	$0, %rdx
	jne	_then236
	jmp	_else235
	.text
_else235:
	movq	(%r8 ), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge234:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then236:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rbx, -80(%rbp)
	movq	%r12, -88(%rbp)
	movq	%r13, -96(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$3, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%r9 , (%r10)
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond171
	.text
_body170:
	movq	(%r10), %r11
	movq	(%rbx), %r12
	movq	%r11, %rax
	movq	%rax, %r13
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r12, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r13
	movq	$0, %rax
	movq	%r13, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %r11
	movq	%r11, %r12
	addq	$1, %r12
	movq	%r12, (%rbx)
	jmp	_cond171
	.text
_body195:
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond196
	.text
_cond171:
	movq	(%rbx), %r11
	movq	(%r8 ), %r12
	cmpq	%r12, %r11
	setl	%r13b
	andq	$1, %r13
	cmpq	$0, %r13
	jne	_body170
	jmp	_post169
	.text
_cond196:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	setl	-72(%rbp)
	andq	$1, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	_body195
	jmp	_post194
	.text
_post169:
	movq	%r9 , (%rdx)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %r8 
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$3, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r8 , (%r9 )
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond196
	.text
_post194:
	movq	%r8 , (%rdi)
	movq	(%rdi), %rbx
	movq	(%rdx), %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rdx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	f
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rbx
	pushq	%rdi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	$17, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	-80(%rbp), %rbx
	movq	-88(%rbp), %r12
	movq	-96(%rbp), %r13
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	