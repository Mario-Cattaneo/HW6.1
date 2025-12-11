	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	%rdi, (%rbx)
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
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rbx, -8(%rbp)
	movq	%r12, -16(%rbp)
	movq	%r13, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rbx)
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$3, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%r9 , (%r10)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1332
	.text
_body1331:
	movq	(%r10), %r11
	movq	(%rdx), %r12
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
	movq	(%rdx), %r11
	movq	%r11, %r12
	addq	$1, %r12
	movq	%r12, (%rdx)
	jmp	_cond1332
	.text
_body1351:
	movq	(%rsi), %rdx
	movq	(%r8 ), %rdi
	movq	%rdx, %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	(%rbx), %rdx
	movq	%rdx, (%r9 )
	movq	(%r8 ), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r8 )
	jmp	_cond1352
	.text
_cond1332:
	movq	(%rdx), %r11
	movq	(%rdi), %r12
	cmpq	%r12, %r11
	setl	%r13b
	andq	$1, %r13
	cmpq	$0, %r13
	jne	_body1331
	jmp	_post1330
	.text
_cond1352:
	movq	(%r8 ), %rdx
	cmpq	$3, %rdx
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body1351
	jmp	_post1350
	.text
_post1330:
	movq	%r9 , (%rsi)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond1352
	.text
_post1350:
	movq	(%rsi), %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	$1, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rbx, -224(%rbp)
	movq	%r12, -232(%rbp)
	movq	%r13, -240(%rbp)
	movq	%r14, -248(%rbp)
	movq	%r15, -256(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
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
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$3, %rdi
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
	movq	$3, %rax
	movq	%r13, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r15
	movq	%r14, (%r15)
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1184
	.text
_body1183:
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	pushq	%r11
	pushq	%r10
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
	popq	%r10
	popq	%r11
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
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1184
	.text
_body1203:
	movq	(%rdx), %rbx
	movq	(%rsi), %r13
	movq	%rbx, %rax
	movq	%rax, %r14
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r13, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r14
	movq	(%rsi), %rbx
	movq	%rbx, (%r14)
	movq	(%rsi), %rbx
	movq	%rbx, %r13
	addq	$1, %r13
	movq	%r13, (%rsi)
	jmp	_cond1204
	.text
_body1225:
	movq	%r13, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1226
	.text
_body1245:
	movq	(%r8 ), %rbx
	movq	(%r9 ), %rsi
	movq	%rbx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%r9 ), %rbx
	movq	(%r9 ), %rsi
	movq	%rbx, %r13
	imulq	%rsi, %r13
	movq	%r13, (%rdi)
	movq	(%r9 ), %rbx
	movq	%rbx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond1246
	.text
_body1269:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	$0, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1270
	.text
_body1289:
	movq	(%r11), %rbx
	movq	(%r12), %rsi
	movq	%rbx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%r12), %rbx
	movq	$2, %rsi
	imulq	%rbx, %rsi
	movq	%rsi, (%rdi)
	movq	(%r12), %rbx
	movq	%rbx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r12)
	jmp	_cond1290
	.text
_cond1184:
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	%r13, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	setl	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_body1183
	jmp	_post1182
	.text
_cond1204:
	movq	(%rsi), %rbx
	cmpq	$3, %rbx
	setl	%r13b
	andq	$1, %r13
	cmpq	$0, %r13
	jne	_body1203
	jmp	_post1202
	.text
_cond1226:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-184(%rbp), %rax
	setl	-192(%rbp)
	andq	$1, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	_body1225
	jmp	_post1224
	.text
_cond1246:
	movq	(%r9 ), %rbx
	cmpq	$4, %rbx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body1245
	jmp	_post1244
	.text
_cond1270:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	setl	-216(%rbp)
	andq	$1, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_body1269
	jmp	_post1268
	.text
_cond1290:
	movq	(%r12), %rbx
	cmpq	$3, %rbx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body1289
	jmp	_post1288
	.text
_post1182:
	movq	%r14, (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1204
	.text
_post1202:
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %rsi
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$4, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r13
	movq	%rsi, (%r13)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1226
	.text
_post1224:
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond1246
	.text
_post1244:
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %rsi
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$3, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rsi, (%rdi)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1270
	.text
_post1268:
	movq	%rsi, (%r11)
	movq	$0, %rax
	movq	%r12, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1290
	.text
_post1288:
	movq	(%r8 ), %rbx
	movq	%rbx, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$3, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rbx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rbx, %rdx
	addq	%rsi, %rdx
	movq	(%r11), %rbx
	pushq	%rdx
	movq	%rbx, %rdi
	callq	f
	popq	%rdx
	movq	%rax, %rsi
	movq	%rdx, %rbx
	addq	%rsi, %rbx
	movq	$4, %rdi
	callq	g
	movq	%rax, %rdx
	movq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	-224(%rbp), %rbx
	movq	-232(%rbp), %r12
	movq	-240(%rbp), %r13
	movq	-248(%rbp), %r14
	movq	-256(%rbp), %r15
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	