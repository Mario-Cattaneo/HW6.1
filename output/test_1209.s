	.data
	.globl	_str_arr7201
_str_arr7201:
	.asciz	"ab"
	.text
	.globl	run2
run2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	movq	(%rbx), %rsi
	movq	(%rdx), %rdi
	pushq	%r15
	movq	%rsi, %r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	(%rbx), %rsi
	movq	(%rdx), %rbx
	pushq	%r15
	movq	%rsi, %r15
	pushq	%rsi
	movq	%rbx, %rdi
	callq	*%r15
	popq	%rsi
	popq	%r15
	movq	-8(%rbp), %rbx
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
	leaq	_str_arr7201(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	%rbx, %rsi
	leaq	print_string(%rip), %rdi
	callq	run2
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	