	.data
	.globl	_str_arr9279
_str_arr9279:
	.asciz	"\n"
	.text
	.globl	min
min:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	movq	(%rbx), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond9516
	.text
_body9515:
	movq	(%rbx), %rsi
	movq	(%r9 ), %rdi
	movq	%rsi, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r10), %rsi
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rsi
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then9534
	jmp	_else9533
	.text
_cond9516:
	movq	(%r9 ), %rsi
	movq	(%rdx), %rdi
	cmpq	%rdi, %rsi
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body9515
	jmp	_post9514
	.text
_else9533:
	jmp	_merge9532
	.text
_merge9532:
	movq	(%r9 ), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond9516
	.text
_post9514:
	movq	(%r8 ), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9534:
	movq	(%rbx), %rsi
	movq	(%r9 ), %rdi
	movq	%rsi, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r10), %rsi
	movq	%rsi, (%r8 )
	jmp	_merge9532
	.text
	.globl	max
max:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	movq	(%rbx), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond9473
	.text
_body9472:
	movq	(%rbx), %rsi
	movq	(%r9 ), %rdi
	movq	%rsi, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r10), %rsi
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rsi
	setg	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then9491
	jmp	_else9490
	.text
_cond9473:
	movq	(%r9 ), %rsi
	movq	(%rdx), %rdi
	cmpq	%rdi, %rsi
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body9472
	jmp	_post9471
	.text
_else9490:
	jmp	_merge9489
	.text
_merge9489:
	movq	(%r9 ), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond9473
	.text
_post9471:
	movq	(%r8 ), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9491:
	movq	(%rbx), %rsi
	movq	(%r9 ), %rdi
	movq	%rsi, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r10), %rsi
	movq	%rsi, (%r8 )
	jmp	_merge9489
	.text
	.globl	count_sort
count_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movq	%rbx, -256(%rbp)
	movq	%r12, -264(%rbp)
	movq	%r13, -272(%rbp)
	movq	%r14, -280(%rbp)
	movq	%r15, -288(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
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
	subq	$8, %rsp
	movq	%rsp, %r13
	subq	$8, %rsp
	movq	%rsp, %r14
	subq	$8, %rsp
	movq	%rsp, %r15
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	movq	(%rdx), %rsi
	movq	(%rbx), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	min
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	movq	(%rbx), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	max
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	addq	$1, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rsi, (%rdi)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	-40(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond9321
	.text
_body9320:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond9321
	.text
_body9341:
	movq	(%r11), %rsi
	movq	(%rbx), %rdi
	movq	(%r12), %r10
	movq	%rdi, %rax
	movq	%rax, -96(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	-96(%rbp), %rdi
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
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %r10
	movq	%rdi, %rax
	subq	%r10, %rax
	movq	%rax, -112(%rbp)
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-112(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%r11), %rsi
	movq	(%rbx), %r10
	movq	%r12, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	%r10, %rax
	movq	%rax, -128(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rdi
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
	movq	-120(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	%r10, %rax
	subq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	%rsi, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-152(%rbp), %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r10), %rsi
	movq	%rsi, %r10
	addq	$1, %r10
	movq	%r10, (%rdi)
	movq	(%r12), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r12)
	jmp	_cond9342
	.text
_body9389:
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	-160(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movq	$0, %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%r15, %rcx
	movq	%rax, (%rcx)
	jmp	_cond9390
	.text
_body9408:
	movq	(%r11), %rbx
	movq	(%r13), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	cmpq	$0, %rbx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then9451
	jmp	_else9450
	.text
_cond9321:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	cmpq	-216(%rbp), %rax
	setl	-224(%rbp)
	andq	$1, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	_body9320
	jmp	_post9319
	.text
_cond9342:
	movq	(%r12), %rsi
	movq	(%rdx), %rdi
	cmpq	%rdi, %rsi
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body9341
	jmp	_post9340
	.text
_cond9390:
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	cmpq	-240(%rbp), %rax
	setl	-248(%rbp)
	andq	$1, -248(%rbp)
	cmpq	$0, -248(%rbp)
	jne	_body9389
	jmp	_post9388
	.text
_cond9409:
	movq	(%r13), %rbx
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rbx
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body9408
	jmp	_post9407
	.text
_else9450:
	movq	(%r13), %rbx
	movq	%rbx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%r13)
	jmp	_merge9449
	.text
_merge9449:
	jmp	_cond9409
	.text
_post9319:
	movq	-40(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r12, %rcx
	movq	%rax, (%rcx)
	jmp	_cond9342
	.text
_post9340:
	movq	(%r8 ), %rbx
	movq	%rbx, (%r13)
	movq	$0, %rax
	movq	%r14, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rbx
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	movq	%rbx, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
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
	movq	%r15, %rcx
	movq	%rax, (%rcx)
	jmp	_cond9390
	.text
_post9388:
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9409
	.text
_post9407:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-256(%rbp), %rbx
	movq	-264(%rbp), %r12
	movq	-272(%rbp), %r13
	movq	-280(%rbp), %r14
	movq	-288(%rbp), %r15
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9451:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	(%r14), %rdx
	movq	%rbx, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%r13), %rbx
	movq	%rbx, (%rsi)
	movq	(%r11), %rbx
	movq	(%r13), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%r11), %rbx
	movq	(%r13), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %r10
	subq	%rdi, %r10
	movq	%rbx, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r10, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rbx
	movq	%rbx, %rsi
	subq	$1, %rsi
	movq	%rsi, (%rdx)
	movq	(%r14), %rbx
	movq	%rbx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%r14)
	jmp	_merge9449
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$9, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	$65, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	$70, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	$72, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	movq	$90, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rdi
	movq	$65, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rdi
	movq	$65, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movq	$69, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rdi
	movq	$89, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, %rdi
	movq	$67, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , (%rbx)
	movq	$9, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	string_of_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%r8 
	leaq	_str_arr9279(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	(%rdx), %rdi
	movq	(%rbx), %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	count_sort
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %rbx
	movq	%rbx, (%rsi)
	movq	(%rsi), %rbx
	movq	%rbx, %rdi
	callq	string_of_array
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