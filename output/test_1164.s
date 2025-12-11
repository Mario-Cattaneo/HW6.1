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
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	$111, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	$112, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r9 
	movq	$113, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r9 
	movq	$114, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %r9 
	movq	$115, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, (%rbx)
	movq	(%rbx), %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rdi
	callq	string_of_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rbx
	movq	%rbx, (%rdx)
	movq	(%rdx), %rbx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rbx, %rdi
	callq	array_of_string
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, (%rsi)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2319
	.text
_body2318:
	movq	(%rdi), %rbx
	movq	(%rsi), %rdx
	movq	(%r8 ), %r9 
	movq	%rdx, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r10), %rdx
	movq	%rbx, %r9 
	addq	%rdx, %r9 
	movq	%r9 , (%rdi)
	movq	(%r8 ), %rbx
	movq	%rbx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%r8 )
	jmp	_cond2319
	.text
_cond2319:
	movq	(%r8 ), %rbx
	cmpq	$5, %rbx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body2318
	jmp	_post2317
	.text
_post2317:
	movq	(%rdi), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	