	.data
	.globl	red
red:
	.quad	_global_struct6783
	.data
	.globl	_global_struct6783
_global_struct6783:
	.quad	255
	.quad	0
	.quad	0
	.data
	.globl	green
green:
	.quad	_global_struct6782
	.data
	.globl	_global_struct6782
_global_struct6782:
	.quad	0
	.quad	255
	.quad	0
	.data
	.globl	blue
blue:
	.quad	_global_struct6781
	.data
	.globl	_global_struct6781
_global_struct6781:
	.quad	0
	.quad	0
	.quad	255
	.data
	.globl	points
points:
	.quad	_global_arr6780
	.data
	.globl	_global_arr6780
_global_arr6780:
	.quad	1
	.quad	_global_struct6779
	.data
	.globl	_global_struct6779
_global_struct6779:
	.quad	_global_struct6778
	.quad	_global_struct6777
	.quad	_global_struct6776
	.data
	.globl	_global_struct6778
_global_struct6778:
	.quad	255
	.quad	0
	.quad	0
	.data
	.globl	_global_struct6777
_global_struct6777:
	.quad	0
	.quad	255
	.quad	0
	.data
	.globl	_global_struct6776
_global_struct6776:
	.quad	0
	.quad	0
	.quad	255
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	$2, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	$4, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdx
	movq	%rbx, %rsi
	imulq	%rdx, %rsi
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	