	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%r10)
	movq	%rsi, (%r9 )
	movq	%rdx, (%r8 )
	movq	(%r10), %rsi
	movq	(%r9 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%r11)
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$312, %rsp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, -216(%rbp)
	subq	$8, %rsp
	movq	%rsp, -312(%rbp)
	subq	$8, %rsp
	movq	%rsp, -296(%rbp)
	subq	$8, %rsp
	movq	%rsp, -280(%rbp)
	subq	$8, %rsp
	movq	%rsp, -272(%rbp)
	subq	$8, %rsp
	movq	%rsp, -264(%rbp)
	subq	$8, %rsp
	movq	%rsp, -256(%rbp)
	subq	$8, %rsp
	movq	%rsp, -240(%rbp)
	subq	$8, %rsp
	movq	%rsp, -224(%rbp)
	subq	$8, %rsp
	movq	%rsp, -208(%rbp)
	subq	$8, %rsp
	movq	%rsp, -200(%rbp)
	subq	$8, %rsp
	movq	%rsp, -184(%rbp)
	subq	$8, %rsp
	movq	%rsp, -168(%rbp)
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2634
	.text
_body2633:
	movq	$0, %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	-288(%rbp), %rsi
	movq	-304(%rbp), %rdi
	callq	foo
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-224(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rdi
	callq	foo
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	-176(%rbp), %rsi
	movq	-192(%rbp), %rdi
	callq	foo
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, (%r11)
	movq	(%r11), %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, (%r10)
	movq	(%r10), %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, (%r9 )
	movq	(%r9 ), %rdx
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, (%r8 )
	movq	(%rsi), %rdx
	movq	(%r8 ), %rdi
	addq	%rdi, %rdx
	movq	%rdx, (%rsi)
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2634
	.text
_cond2634:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$10000000, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body2633
	jmp	_post2632
	.text
_post2632:
	movq	(%rsi), %rdx
	movq	%rdx, %rdi
	callq	print_int
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	