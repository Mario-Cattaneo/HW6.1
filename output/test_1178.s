	.data
	.globl	_str_arr4037
_str_arr4037:
	.asciz	"Correct!"
	.text
	.globl	euclid_division
euclid_division:
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
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rbx)
	movq	%rsi, (%rdx)
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4116
	jmp	_else4115
	.text
_body4131:
	movq	(%r8 ), %rbx
	movq	%rbx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rbx
	movq	(%rdx), %rsi
	movq	%rbx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond4132
	.text
_body4157:
	movq	(%r8 ), %rbx
	movq	%rbx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rbx
	movq	(%rdx), %rsi
	movq	%rbx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond4158
	.text
_cond4132:
	movq	(%r9 ), %rbx
	movq	(%rdx), %rsi
	cmpq	%rsi, %rbx
	setge	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4131
	jmp	_post4130
	.text
_cond4158:
	movq	(%r9 ), %rbx
	movq	(%rdx), %rsi
	cmpq	%rsi, %rbx
	setge	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4157
	jmp	_post4156
	.text
_else4115:
	jmp	_merge4114
	.text
_else4148:
	movq	(%r8 ), %rbx
	movq	$0, %rdx
	subq	%rbx, %rdx
	movq	%rdx, %rbx
	subq	$1, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4151:
	jmp	_merge4150
	.text
_merge4114:
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rsi
	movq	%rsi, (%r9 )
	movq	(%rbx), %rsi
	cmpq	$0, %rsi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4152
	jmp	_else4151
	.text
_merge4147:
	jmp	_merge4150
	.text
_merge4150:
	jmp	_cond4158
	.text
_post4130:
	movq	(%r9 ), %rbx
	cmpq	$0, %rbx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4149
	jmp	_else4148
	.text
_post4156:
	movq	(%r8 ), %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4116:
	movq	(%rdx), %rsi
	movq	$0, %rdx
	subq	%rsi, %rdx
	movq	(%rbx), %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	euclid_division
	popq	%rdx
	popq	%rsi
	movq	%rax, %rbx
	movq	$0, %rdx
	subq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4149:
	movq	(%r8 ), %rbx
	movq	$0, %rdx
	subq	%rbx, %rdx
	movq	-8(%rbp), %rbx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4152:
	movq	(%rbx), %rsi
	movq	$0, %rbx
	subq	%rsi, %rbx
	movq	%rbx, (%r9 )
	jmp	_cond4132
	.text
	.globl	binary_search
binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rbx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%rbx)
	movq	%rsi, (%r8 )
	movq	%rdx, (%r9 )
	movq	-8(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	(%r9 ), %rsi
	cmpq	%rsi, %rdx
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4060
	jmp	_else4059
	.text
_else4059:
	jmp	_merge4058
	.text
_else4082:
	jmp	_merge4081
	.text
_else4099:
	movq	-16(%rbp), %rbx
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge4058:
	movq	(%r10), %rdx
	movq	(%r9 ), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	$2, %rsi
	callq	euclid_division
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, (%r11)
	movq	(%rbx), %rdx
	movq	(%r11), %rsi
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdx
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4083
	jmp	_else4082
	.text
_merge4081:
	movq	(%rbx), %rdx
	movq	(%r11), %rsi
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdx
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4100
	jmp	_else4099
	.text
_merge4098:
	movq	-16(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4060:
	movq	-16(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4083:
	movq	(%r11), %rdx
	movq	%rdx, %rsi
	subq	$1, %rsi
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rdi
	movq	(%rbx), %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rcx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	binary_search
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rbx
	movq	-16(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4100:
	movq	(%r10), %rdx
	movq	(%r11), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	(%r8 ), %rsi
	movq	(%rbx), %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%r8 , %rdi
	callq	binary_search
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rbx
	movq	-16(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rbx, -8(%rbp)
	movq	%r12, -16(%rbp)
	movq	%r13, -24(%rbp)
	movq	%r14, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$100, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$100, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%r10, (%r11)
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond3988
	.text
_body3987:
	movq	(%r11), %r12
	movq	(%rbx), %r13
	movq	%r12, %rax
	movq	%rax, %r14
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r12, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r13, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r14
	movq	$0, %rax
	movq	%r14, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %r12
	movq	%r12, %r13
	addq	$1, %r13
	movq	%r13, (%rbx)
	jmp	_cond3988
	.text
_body4007:
	movq	(%rdx), %rbx
	movq	(%rsi), %r9 
	movq	%rbx, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%rsi), %rbx
	movq	$2, %r9 
	imulq	%rbx, %r9 
	movq	%r9 , %rbx
	addq	$1, %rbx
	movq	%rbx, (%r10)
	movq	(%rsi), %rbx
	movq	%rbx, %r9 
	addq	$1, %r9 
	movq	%r9 , (%rsi)
	jmp	_cond4008
	.text
_cond3988:
	movq	(%rbx), %r12
	movq	(%r9 ), %r13
	cmpq	%r13, %r12
	setl	%r14b
	andq	$1, %r14
	cmpq	$0, %r14
	jne	_body3987
	jmp	_post3986
	.text
_cond4008:
	movq	(%rsi), %rbx
	cmpq	$100, %rbx
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_body4007
	jmp	_post4006
	.text
_else4041:
	jmp	_merge4040
	.text
_merge4040:
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3986:
	movq	%r10, (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4008
	.text
_post4006:
	movq	(%rdx), %rbx
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$80, %rsi
	movq	%rbx, %rdi
	callq	binary_search
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	movq	(%rdx), %rbx
	pushq	%r8 
	pushq	%rdi
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$81, %rsi
	movq	%rbx, %rdi
	callq	binary_search
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, (%r8 )
	movq	(%rdi), %rbx
	movq	(%r8 ), %rdx
	movq	%rbx, %rsi
	andq	%rdx, %rsi
	cmpq	$0, %rsi
	sete	%bl
	andq	$1, %rbx
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	orq	%rsi, %rdi
	movq	%rbx, %rdx
	andq	%rdi, %rdx
	cmpq	$0, %rdx
	jne	_then4042
	jmp	_else4041
	.text
_then4042:
	leaq	_str_arr4037(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	print_string
	jmp	_merge4040