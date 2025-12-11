	.data
	.globl	arr1
arr1:
	.quad	_global_arr5357
	.data
	.globl	_global_arr5357
_global_arr5357:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.data
	.globl	arr2
arr2:
	.quad	_global_arr5356
	.data
	.globl	_global_arr5356
_global_arr5356:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	5
	.text
	.globl	arrcheck
arrcheck:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rbx, -8(%rbp)
	movq	%r12, -16(%rbp)
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
	movq	%rdi, (%rbx)
	movq	%rsi, (%r8 )
	movq	%rdx, (%r9 )
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond5334
	.text
_body5333:
	movq	(%rbx), %rdx
	movq	(%r11), %rsi
	movq	%rdx, %rax
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
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	movq	(%r11), %rdi
	movq	%rsi, %rax
	movq	%rax, %r12
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r12, %rdi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r12
	movq	(%r12), %rsi
	cmpq	%rsi, %rdx
	setne	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then5351
	jmp	_else5350
	.text
_cond5334:
	movq	(%r11), %rdx
	movq	(%r9 ), %rsi
	cmpq	%rsi, %rdx
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body5333
	jmp	_post5332
	.text
_else5350:
	jmp	_merge5349
	.text
_merge5349:
	movq	(%r11), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r11)
	jmp	_cond5334
	.text
_post5332:
	movq	(%r10), %rbx
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5351:
	movq	$1, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_merge5349
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$1, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	leaq	arr2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	arr1(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	$4, %rdx
	callq	arrcheck
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	cmpq	$1, %rdi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then5314
	jmp	_else5313
	.text
_else5313:
	jmp	_merge5312
	.text
_merge5312:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5314:
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge5312