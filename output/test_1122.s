	.data
	.globl	mat1
mat1:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.data
	.globl	mat2
mat2:
	.quad	5
	.quad	6
	.quad	7
	.quad	8
	.data
	.globl	mat3
mat3:
	.quad	19
	.quad	22
	.quad	43
	.quad	50
	.data
	.globl	matr
matr:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$10000000, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
body:
	leaq	matr(%rip), %rdx
	leaq	mat2(%rip), %rsi
	leaq	mat1(%rip), %rdi
	callq	matmul
	leaq	matr(%rip), %rsi
	leaq	mat3(%rip), %rdi
	callq	mateq
	movq	%rax, %rdx
	movq	(%rbx), %rdx
	movq	%rdx, %rsi
	subq	$1, %rsi
	movq	%rsi, (%rbx)
	jmp	loop
	.text
exit:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rbx), %rdx
	cmpq	$0, %rdx
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	exit
	jmp	body
	.text
	.globl	matmul
matmul:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rbx, -24(%rbp)
	movq	%r12, -32(%rbp)
	movq	%r13, -40(%rbp)
	movq	%r14, -48(%rbp)
	movq	%r15, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	starti
	.text
endi:
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-40(%rbp), %r13
	movq	-48(%rbp), %r14
	movq	-56(%rbp), %r15
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
endj:
	movq	%r9 , %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	starti
	.text
starti:
	movq	(%rbx), %r9 
	cmpq	$2, %r9 
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	theni
	jmp	endi
	.text
startj:
	movq	(%r8 ), %r10
	cmpq	$2, %r10
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	thenj
	jmp	endj
	.text
theni:
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	startj
	.text
thenj:
	movq	%rdx, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$0, %rax
	movq	%rax, %r12
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r13
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %r14
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r15
	movq	%r12, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	(%r13), %r12
	movq	(%r14), %r13
	movq	(%r15), %r14
	movq	-16(%rbp), %r15
	imulq	%r12, %r15
	movq	%r13, %r12
	imulq	%r14, %r12
	movq	%r15, %r13
	addq	%r12, %r13
	movq	%r13, (%r11)
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, (%r8 )
	jmp	startj
	.text
	.globl	mateq
mateq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rbx, -16(%rbp)
	movq	%r12, -24(%rbp)
	movq	%r13, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	starti1
	.text
endi1:
	movq	(%rbx), %rdx
	movq	-16(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-32(%rbp), %r13
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
endj1:
	movq	%r9 , %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	starti1
	.text
starti1:
	movq	(%rdx), %r9 
	cmpq	$2, %r9 
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	theni1
	jmp	endi1
	.text
startj1:
	movq	(%r8 ), %r10
	cmpq	$2, %r10
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	thenj1
	jmp	endj1
	.text
theni1:
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	startj1
	.text
thenj1:
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	%rsi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r12
	movq	(%r11), %r13
	movq	(%r12), %r11
	movq	%r13, %r12
	xorq	%r11, %r12
	movq	(%rbx), %r11
	movq	%r12, %r13
	orq	%r11, %r13
	movq	%r13, (%rbx)
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, (%r8 )
	jmp	startj1