	.data
	.globl	_str_arr6899
_str_arr6899:
	.asciz	"hello"
	.text
	.globl	neg
neg:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	%rdi, (%rbx)
	movq	(%rbx), %rdx
	movq	$0, %rbx
	subq	%rdx, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
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
	pushq	%rdx
	movq	$48, %rdi
	callq	oat_malloc
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr6899(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r8 
	movq	%rsi, (%r8 )
	pushq	%rdi
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r8 , (%r9 )
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond6914
	.text
_body6913:
	movq	(%r9 ), %r10
	movq	(%rbx), %r11
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
	movq	(%rbx), %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, (%rbx)
	jmp	_cond6914
	.text
_cond6914:
	movq	(%rbx), %r10
	movq	(%rsi), %r11
	cmpq	%r11, %r10
	setl	%r12b
	andq	$1, %r12
	cmpq	$0, %r12
	jne	_body6913
	jmp	_post6912
	.text
_else6952:
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6951:
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post6912:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rbx
	movq	%r8 , (%rbx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$32, %rax
	movq	%rax, %rbx
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, %rbx
	leaq	neg(%rip), %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, (%rdx)
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rbx
	pushq	%rdx
	movq	%rbx, %rdi
	callq	print_string
	popq	%rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rbx
	cmpq	$0, %rbx
	jne	_then6953
	jmp	_else6952
	.text
_then6953:
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rbx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	*%rbx
	popq	%rsi
	movq	%rax, %rdx
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	