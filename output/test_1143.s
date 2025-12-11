	.data
	.globl	_str_arr763
_str_arr763:
	.asciz	"abcde"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	leaq	_str_arr763(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	print_string
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	