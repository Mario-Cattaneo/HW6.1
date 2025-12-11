	.text
	.globl	gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	jmp	_cond6229
	.text
_body6228:
	movq	(%rdx), %rsi
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%rbx), %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	mod
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , (%rdx)
	movq	(%r8 ), %rsi
	movq	%rsi, (%rbx)
	jmp	_cond6229
	.text
_cond6229:
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	setne	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body6228
	jmp	_post6227
	.text
_post6227:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	mod
mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	movq	(%rbx), %rsi
	movq	%rsi, (%r8 )
	jmp	_cond6213
	.text
_body6212:
	movq	(%r8 ), %rbx
	movq	(%rdx), %rsi
	movq	%rbx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, (%r8 )
	jmp	_cond6213
	.text
_cond6213:
	movq	(%r8 ), %rbx
	movq	(%rdx), %rsi
	movq	%rbx, %rdi
	subq	%rsi, %rdi
	cmpq	$0, %rdi
	setge	%bl
	andq	$1, %rbx
	cmpq	$0, %rbx
	jne	_body6212
	jmp	_post6211
	.text
_post6211:
	movq	(%r8 ), %rbx
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
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$64, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	movq	(%rbx), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	