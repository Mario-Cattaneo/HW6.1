	.text
	.globl	binary_gcd
binary_gcd:
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
	cmpq	%rdi, %rsi
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_then4931
	jmp	_else4930
	.text
_else4930:
	jmp	_merge4929
	.text
_else4936:
	jmp	_merge4935
	.text
_else4942:
	jmp	_merge4941
	.text
_else4962:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	(%rbx), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	%rdx, %rsi
	movq	%rbx, %rdi
	callq	binary_gcd
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4965:
	jmp	_merge4964
	.text
_else4976:
	jmp	_merge4975
	.text
_else4988:
	jmp	_merge4987
	.text
_merge4929:
	movq	(%rbx), %rsi
	cmpq	$0, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4937
	jmp	_else4936
	.text
_merge4935:
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4943
	jmp	_else4942
	.text
_merge4941:
	movq	(%rbx), %rsi
	movq	%rsi, %rdi
	xorq	$-1, %rdi
	movq	%rdi, %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4966
	jmp	_else4965
	.text
_merge4961:
	jmp	_merge4964
	.text
_merge4964:
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	xorq	$-1, %rdi
	movq	%rdi, %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4977
	jmp	_else4976
	.text
_merge4975:
	movq	(%rbx), %rsi
	movq	(%rdx), %rdi
	cmpq	%rdi, %rsi
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_then4989
	jmp	_else4988
	.text
_merge4987:
	movq	(%rbx), %rsi
	movq	(%rdx), %rdi
	movq	(%rbx), %rdx
	movq	%rdi, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4931:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4937:
	movq	(%rdx), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4943:
	movq	(%rbx), %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4963:
	movq	(%rdx), %rsi
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	pushq	%rsi
	movq	%rbx, %rdi
	callq	binary_gcd
	popq	%rsi
	movq	%rax, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4966:
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	andq	$1, %rdi
	cmpq	$1, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4963
	jmp	_else4962
	.text
_then4977:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	(%rbx), %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4989:
	movq	(%rdx), %rsi
	movq	(%rbx), %rdi
	movq	(%rdx), %rbx
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	movq	%rdx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rbx
	pushq	%rsi
	movq	%rbx, %rdi
	callq	binary_gcd
	popq	%rsi
	movq	%rax, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
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
	movq	$21, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$15, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	movq	(%rbx), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	