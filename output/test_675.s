	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	movq	$35, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	