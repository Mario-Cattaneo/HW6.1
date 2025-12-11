	.text
	.globl	sieve
sieve:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$88, %rsp
	movq	%rbx, -56(%rbp)
	movq	%r12, -64(%rbp)
	movq	%r13, -72(%rbp)
	movq	%r14, -80(%rbp)
	movq	%r15, -88(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
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
	movq	(%rbx), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %r13
	movq	%r13, %rax
	movq	%rax, %r14
	subq	$8, %rsp
	movq	%rsp, %r13
	movq	%rdi, (%r13)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%r14, (%rdi)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4314
	.text
_body4313:
	movq	(%rdi), %r15
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%r15, %rax
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r15, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %r15
	movq	%r15, %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4314
	.text
_body4334:
	movq	(%rsi), %rdx
	movq	(%r8 ), %rdi
	movq	%rdx, %rax
	movq	%rax, %r13
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r13, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r13
	movq	$1, %rax
	movq	%r13, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r8 )
	jmp	_cond4335
	.text
_body4361:
	movq	(%rsi), %rdx
	movq	(%r9 ), %rdi
	movq	%rdx, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %rdx
	cmpq	$0, %rdx
	jne	_then4391
	jmp	_else4390
	.text
_body4377:
	movq	(%rsi), %rdx
	movq	(%r10), %rdi
	movq	%rdx, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	(%r9 ), %rdi
	movq	%rdx, %r8 
	addq	%rdi, %r8 
	movq	%r8 , (%r10)
	jmp	_cond4378
	.text
_body4403:
	movq	(%rsi), %rdx
	movq	(%r12), %rdi
	movq	%rdx, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %rdx
	cmpq	$0, %rdx
	jne	_then4416
	jmp	_else4415
	.text
_cond4314:
	movq	(%rdx), %r15
	movq	%r13, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	-40(%rbp), %r15
	setl	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_body4313
	jmp	_post4312
	.text
_cond4335:
	movq	(%r8 ), %rdx
	movq	(%rbx), %rdi
	cmpq	%rdi, %rdx
	setl	%r13b
	andq	$1, %r13
	cmpq	$0, %r13
	jne	_body4334
	jmp	_post4333
	.text
_cond4362:
	movq	(%r9 ), %rdx
	movq	(%rbx), %rdi
	cmpq	%rdi, %rdx
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_body4361
	jmp	_post4360
	.text
_cond4378:
	movq	(%r10), %rdx
	movq	(%rbx), %rdi
	cmpq	%rdi, %rdx
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_body4377
	jmp	_post4376
	.text
_cond4404:
	movq	(%r12), %rdx
	movq	(%rbx), %rdi
	cmpq	%rdi, %rdx
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_body4403
	jmp	_post4402
	.text
_else4390:
	jmp	_merge4389
	.text
_else4415:
	jmp	_merge4414
	.text
_merge4389:
	movq	(%r9 ), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond4362
	.text
_merge4414:
	movq	(%r12), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r12)
	jmp	_cond4404
	.text
_post4312:
	movq	%r14, (%rsi)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4335
	.text
_post4333:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4362
	.text
_post4360:
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r12, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4404
	.text
_post4376:
	jmp	_merge4389
	.text
_post4402:
	movq	(%r11), %rbx
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %r12
	movq	-72(%rbp), %r13
	movq	-80(%rbp), %r14
	movq	-88(%rbp), %r15
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4391:
	movq	(%r9 ), %rdx
	movq	%rdx, %rdi
	imulq	$2, %rdi
	movq	%rdi, (%r10)
	jmp	_cond4378
	.text
_then4416:
	movq	(%r11), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r11)
	jmp	_merge4414
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$100, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	sieve
	popq	%rdx
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	