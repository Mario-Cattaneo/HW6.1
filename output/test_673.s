	.data
	.globl	_str_arr8182
_str_arr8182:
	.asciz	"hello!"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	movq	$15, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	