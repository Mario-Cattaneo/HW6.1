	.data
	.globl	node1
node1:
	.quad	node2
	.quad	node3
	.quad	50
	.data
	.globl	node2
node2:
	.quad	node4
	.quad	node5
	.quad	25
	.data
	.globl	node3
node3:
	.quad	node6
	.quad	node7
	.quad	75
	.data
	.globl	node4
node4:
	.quad	node8
	.quad	0
	.quad	10
	.data
	.globl	node5
node5:
	.quad	0
	.quad	0
	.quad	30
	.data
	.globl	node6
node6:
	.quad	0
	.quad	0
	.quad	60
	.data
	.globl	node7
node7:
	.quad	0
	.quad	0
	.quad	80
	.data
	.globl	node8
node8:
	.quad	0
	.quad	0
	.quad	1
	.text
	.globl	contains
contains:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	cmpq	%rsi, %rdx
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	equal
	jmp	notequal
	.text
equal:
	movq	-8(%rbp), %rbx
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
left:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	cmpq	$0, %rdx
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	none
	jmp	left_next
	.text
left_next:
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
none:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
notequal:
	cmpq	%rsi, %rdx
	setg	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	left
	jmp	right
	.text
right:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	cmpq	$0, %rdx
	sete	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	none
	jmp	right_next
	.text
right_next:
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rbx, -8(%rbp)
	movq	%r12, -16(%rbp)
	movq	%r13, -24(%rbp)
	movq	%r14, -32(%rbp)
	movq	$50, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, %rbx
	movq	$25, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, %rdx
	pushq	%rdx
	movq	$75, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$10, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$30, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$60, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$80, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$100, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %r12
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$120, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %r13
	movq	%rbx, %r14
	addq	%rdx, %r14
	movq	%rsi, %rbx
	addq	%rdi, %rbx
	movq	%r8 , %rdx
	addq	%r9 , %rdx
	movq	%r10, %rsi
	addq	%r11, %rsi
	movq	%r12, %rdi
	addq	%r13, %rdi
	movq	%r14, %r8 
	addq	%rbx, %r8 
	movq	%rdx, %rbx
	addq	%rsi, %rbx
	movq	%r8 , %rdx
	addq	%rbx, %rdx
	movq	%rdx, %rbx
	addq	%rdi, %rbx
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	