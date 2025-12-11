	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
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
	movq	(%rdx), %rdi
	cmpq	$1, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4730
	jmp	_else4729
	.text
_merge4728:
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	pushq	%rdi
	pushq	%rdx
	callq	fibR
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	(%rdx), %rdi
	movq	%rdi, %rdx
	subq	$2, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	fibR
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4725:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4730:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	fibI
fibI:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%r9 , (%rdi)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %r10
	cmpq	$0, %r10
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then4690
	jmp	_else4689
	.text
_body4701:
	movq	(%rdx), %r9 
	movq	%r9 , (%r8 )
	movq	(%rdx), %r10
	movq	(%rsi), %r9 
	movq	%r10, %r11
	addq	%r9 , %r11
	movq	%r11, (%rdx)
	movq	(%r8 ), %r9 
	movq	%r9 , (%rsi)
	movq	(%rdi), %r10
	movq	%r10, %r9 
	subq	$1, %r9 
	movq	%r9 , (%rdi)
	jmp	_cond4702
	.text
_cond4702:
	movq	(%rdi), %r10
	movq	%r10, %r9 
	subq	$2, %r9 
	cmpq	$0, %r9 
	setg	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
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
	movq	(%rdi), %r10
	cmpq	$1, %r10
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
	movq	(%rsi), %rdi
	movq	(%rdx), %rsi
	movq	%rdi, %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4690:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4696:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	pushq	%rdx
	movq	$12, %rdi
	callq	fibR
	popq	%rdx
	movq	%rax, %rdi
	cmpq	$144, %rdi
	sete	%sil
	andq	$1, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$12, %rdi
	callq	fibI
	popq	%rdx
	popq	%rsi
	movq	%rax, %r8 
	cmpq	$144, %r8 
	sete	%dil
	andq	$1, %rdi
	movq	%rsi, %r8 
	andq	%rdi, %r8 
	cmpq	$0, %r8 
	jne	_then4676
	jmp	_else4675
	.text
_else4675:
	jmp	_merge4674
	.text
_merge4674:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4676:
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge4674