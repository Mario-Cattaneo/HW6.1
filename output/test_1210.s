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
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
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
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond7235
	.text
_body7234:
	movq	(%r9 ), %r10
	movq	(%rdx), %r11
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
	movq	$0, %rax
	movq	%r12, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, (%rdx)
	jmp	_cond7235
	.text
_cond7235:
	movq	(%rdx), %r10
	movq	(%rdi), %r11
	cmpq	%r11, %r10
	setl	%r12b
	andq	$1, %r12
	cmpq	$0, %r12
	jne	_body7234
	jmp	_post7233
	.text
_merge7255:
	movq	(%rsi), %rbx
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull7256:
	movq	$4, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge7255
	.text
_null7257:
	movq	$5, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge7255
	.text
_post7233:
	movq	%r8 , (%rbx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdx
	cmpq	$0, %rdx
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	_null7257
	jmp	_notnull7256