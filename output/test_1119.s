	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%rbx), %rdx
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rbx), %rdx
	movq	%rsi, %r8 
	addq	%rdx, %r8 
	movq	%r8 , (%rbx)
	cmpq	%rdi, %r8 
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final
	jmp	start
	.text
	.globl	naive_prime
naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rbx, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$2, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
final_false:
	movq	-24(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
final_true:
	movq	-24(%rbp), %rbx
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
inc:
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$1, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	pushq	%rdi
	movq	-8(%rbp), %rsi
	callq	naive_mod
	popq	%rdi
	movq	%rax, %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	final_false
	jmp	loop
	.text
loop:
	movq	(%rbx), %rdx
	movq	%rdx, %rsi
	imulq	%rdx, %rsi
	cmpq	%rdi, %rsi
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	movq	$19, %rdi
	callq	naive_prime
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	