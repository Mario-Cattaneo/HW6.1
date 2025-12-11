	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	%rdi, (%rbx)
	movq	(%rbx), %rdx
	cmpq	$0, %rdx
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4725
	jmp	_else4724
	.text
_else4724:
	jmp	_merge4723
	.text
_else4729:
	jmp	_merge4728
	.text
_merge4723:
	movq	(%rbx), %rdx
	cmpq	$1, %rdx
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4730
	jmp	_else4729
	.text
_merge4728:
	movq	(%rbx), %rdx
	movq	%rdx, %rsi
	subq	$1, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	fibR
	popq	%rsi
	movq	%rax, %rdx
	movq	(%rbx), %rsi
	movq	%rsi, %rbx
	subq	$2, %rbx
	pushq	%rdx
	movq	%rbx, %rdi
	callq	fibR
	popq	%rdx
	movq	%rax, %rsi
	movq	%rdx, %rbx
	addq	%rsi, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4725:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4730:
	movq	-8(%rbp), %rbx
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	fibI
fibI:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rbx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rdi
	cmpq	$0, %rdi
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then4690
	jmp	_else4689
	.text
_body4701:
	movq	(%rsi), %rdi
	movq	%rdi, (%r8 )
	movq	(%rsi), %rdi
	movq	(%rdx), %r9 
	movq	%rdi, %r10
	addq	%r9 , %r10
	movq	%r10, (%rsi)
	movq	(%r8 ), %rdi
	movq	%rdi, (%rdx)
	movq	(%rbx), %rdi
	movq	%rdi, %r9 
	subq	$1, %r9 
	movq	%r9 , (%rbx)
	jmp	_cond4702
	.text
_cond4702:
	movq	(%rbx), %rdi
	movq	%rdi, %r9 
	subq	$2, %r9 
	cmpq	$0, %r9 
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4701
	jmp	_post4700
	.text
_else4689:
	jmp	_merge4688
	.text
_else4695:
	jmp	_merge4694
	.text
_merge4688:
	movq	(%rbx), %rdi
	cmpq	$1, %rdi
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then4696
	jmp	_else4695
	.text
_merge4694:
	jmp	_cond4702
	.text
_post4700:
	movq	(%rdx), %rbx
	movq	(%rsi), %rdx
	movq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rbx
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4690:
	movq	(%rdx), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4696:
	movq	(%rsi), %rbx
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
	movq	$1, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$12, %rdi
	callq	fibR
	movq	%rax, %rdx
	cmpq	$144, %rdx
	sete	%sil
	andq	$1, %rsi
	pushq	%rsi
	movq	$12, %rdi
	callq	fibI
	popq	%rsi
	movq	%rax, %rdx
	cmpq	$144, %rdx
	sete	%dil
	andq	$1, %rdi
	movq	%rsi, %rdx
	andq	%rdi, %rdx
	cmpq	$0, %rdx
	jne	_then4676
	jmp	_else4675
	.text
_else4675:
	jmp	_merge4674
	.text
_merge4674:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4676:
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge4674