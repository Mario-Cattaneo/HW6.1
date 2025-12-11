	.data
	.globl	i
i:
	.quad	3
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	movq	$341, %rax
	leaq	i(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	