	.data
	.globl	buf
buf:
	.quad	_global_arr8768
	.data
	.globl	_global_arr8768
_global_arr8768:
	.quad	1
	.quad	0
	.data
	.globl	_str_arr8674
_str_arr8674:
	.asciz	""
	.data
	.globl	_str_arr8645
_str_arr8645:
	.asciz	"TOMATO"
	.data
	.globl	_str_arr8649
_str_arr8649:
	.asciz	"ORATING"
	.text
	.globl	lcs
lcs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$88, %rsp
	movq	%rbx, -56(%rbp)
	movq	%r12, -64(%rbp)
	movq	%r13, -72(%rbp)
	movq	%r14, -80(%rbp)
	movq	%r15, -88(%rbp)
	movq	%rcx, -8(%rbp)
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
	subq	$8, %rsp
	movq	%rsp, %r12
	subq	$8, %rsp
	movq	%rsp, %r13
	subq	$8, %rsp
	movq	%rsp, %r14
	subq	$8, %rsp
	movq	%rsp, %r15
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	%rdi, (%rbx)
	movq	%rsi, (%r8 )
	movq	%rdx, (%r9 )
	movq	-8(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdx
	cmpq	$0, %rdx
	setl	%sil
	andq	$1, %rsi
	movq	(%r8 ), %rdx
	cmpq	$0, %rdx
	setl	%dil
	andq	$1, %rdi
	movq	%rsi, %rdx
	orq	%rdi, %rdx
	cmpq	$0, %rdx
	jne	_then8678
	jmp	_else8677
	.text
_else8677:
	jmp	_merge8676
	.text
_else8734:
	jmp	_merge8733
	.text
_else8766:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
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
_merge8676:
	movq	(%r9 ), %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rdi
	callq	array_of_string
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r11)
	movq	(%r10), %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rdi
	callq	array_of_string
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r12)
	movq	(%r11), %rdx
	movq	(%rbx), %rsi
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
	movq	%rdx, (%r13)
	movq	(%r12), %rdx
	movq	(%r8 ), %rsi
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
	movq	%rdx, (%r14)
	movq	(%r13), %rdx
	movq	(%r14), %rsi
	cmpq	%rsi, %rdx
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then8735
	jmp	_else8734
	.text
_merge8733:
	movq	(%r10), %rdx
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdi
	movq	%rdi, %r11
	subq	$1, %r11
	movq	(%rbx), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%r11, %rsi
	callq	lcs
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %r12
	movq	%r12, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdi
	movq	(%rbx), %r8 
	movq	%r8 , %rbx
	subq	$1, %rbx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	callq	lcs
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	length_of_string
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	length_of_string
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	%rdx, %rbx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then8767
	jmp	_else8766
	.text
_merge8765:
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %r12
	movq	-72(%rbp), %r13
	movq	-80(%rbp), %r14
	movq	-88(%rbp), %r15
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8678:
	leaq	_str_arr8674(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
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
_then8735:
	movq	(%r10), %rdx
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdi
	movq	%rdi, %r8 
	subq	$1, %r8 
	movq	(%rbx), %rdi
	movq	%rdi, %r9 
	subq	$1, %r9 
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rcx
	movq	%r9 , %rdi
	movq	%rsi, %rdx
	movq	%r8 , %rsi
	callq	lcs
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, (%r15)
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%r11), %rdx
	movq	(%rbx), %rdi
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, (%rsi)
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	string_of_array
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	(%r15), %rdx
	pushq	%rdx
	movq	%rbx, %rsi
	movq	%rdx, %rdi
	callq	string_cat
	popq	%rdx
	movq	%rax, %rsi
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %r12
	movq	-72(%rbp), %r13
	movq	-80(%rbp), %r14
	movq	-88(%rbp), %r15
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8767:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
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
	leaq	_str_arr8645(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	%rsi, (%rbx)
	leaq	_str_arr8649(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	(%rdx), %rsi
	movq	(%rbx), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rcx
	movq	$5, %rdi
	movq	$6, %rsi
	callq	lcs
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	print_string
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	