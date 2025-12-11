	.data
	.globl	lfsr_iterations
lfsr_iterations:
	.quad	5
	.data
	.globl	lfsr_length
lfsr_length:
	.quad	4
	.data
	.globl	lfsr_init_values
lfsr_init_values:
	.quad	_global_arr5170
	.data
	.globl	_global_arr5170
_global_arr5170:
	.quad	4
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.data
	.globl	_str_arr5148
_str_arr5148:
	.asciz	"T"
	.data
	.globl	_str_arr5150
_str_arr5150:
	.asciz	"F"
	.data
	.globl	_str_arr5113
_str_arr5113:
	.asciz	" "
	.text
	.globl	xor
xor:
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
	cmpq	$0, %rdi
	sete	%r8b
	andq	$1, %r8 
	movq	%rsi, %rdi
	andq	%r8 , %rdi
	movq	(%rbx), %rsi
	cmpq	$0, %rsi
	sete	%bl
	andq	$1, %rbx
	movq	(%rdx), %rsi
	movq	%rbx, %rdx
	andq	%rsi, %rdx
	movq	%rdi, %rbx
	orq	%rdx, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	string_of_bool
string_of_bool:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	%rdi, (%rbx)
	movq	(%rbx), %rdx
	cmpq	$0, %rdx
	jne	_then5154
	jmp	_else5153
	.text
_else5153:
	leaq	_str_arr5150(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge5152:
	movq	-8(%rbp), %rbx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5154:
	leaq	_str_arr5148(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	-8(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	print_lfsr
print_lfsr:
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
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond5132
	.text
_body5131:
	movq	(%rbx), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	string_of_bool
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	callq	print_string
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	(%r8 ), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r8 )
	jmp	_cond5132
	.text
_cond5132:
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	cmpq	%rdi, %rsi
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_body5131
	jmp	_post5130
	.text
_post5130:
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rbx, -8(%rbp)
	movq	%r12, -16(%rbp)
	movq	%r13, -24(%rbp)
	movq	%r14, -32(%rbp)
	movq	%r15, -40(%rbp)
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
	subq	$8, %rsp
	movq	%rsp, %r9 
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r12
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%r10, (%r11)
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%r12, (%r10)
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond5014
	.text
_body5013:
	movq	(%r10), %r13
	movq	(%rbx), %r14
	movq	%r13, %rax
	movq	%rax, %r15
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r14, %rsi
	movq	%r15, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r13, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r14, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r15
	movq	$0, %rax
	movq	%r15, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %r13
	movq	%r13, %r14
	addq	$1, %r14
	movq	%r14, (%rbx)
	jmp	_cond5014
	.text
_body5034:
	movq	(%rdx), %rbx
	movq	(%rsi), %r10
	movq	%rbx, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	(%rsi), %r10
	movq	%rbx, %rax
	movq	%rax, %r12
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%r12, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r12
	movq	(%r12), %rbx
	movq	%rbx, (%r11)
	movq	(%rsi), %rbx
	movq	%rbx, %r10
	addq	$1, %r10
	movq	%r10, (%rsi)
	jmp	_cond5035
	.text
_body5057:
	movq	(%rdx), %rbx
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %r10
	subq	$2, %r10
	movq	%rbx, %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r10, %rsi
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
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rbx
	movq	(%rdx), %rsi
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %r11
	subq	$1, %r11
	movq	%rsi, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r10), %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, (%r8 )
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, %rsi
	subq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond5084
	.text
_body5083:
	movq	(%rdx), %rbx
	movq	(%r9 ), %rsi
	movq	%rbx, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%rdx), %rbx
	movq	(%r9 ), %rsi
	movq	%rsi, %r11
	subq	$1, %r11
	movq	%rbx, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r11, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rbx
	movq	%rbx, (%r10)
	movq	(%r9 ), %rbx
	movq	%rbx, %rsi
	subq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond5084
	.text
_cond5014:
	movq	(%rbx), %r13
	movq	(%r11), %r14
	cmpq	%r14, %r13
	setl	%r15b
	andq	$1, %r15
	cmpq	$0, %r15
	jne	_body5013
	jmp	_post5012
	.text
_cond5035:
	movq	(%rsi), %rbx
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	%r10, %rbx
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_body5034
	jmp	_post5033
	.text
_cond5058:
	movq	(%rdi), %rbx
	leaq	lfsr_iterations(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %rbx
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body5057
	jmp	_post5056
	.text
_cond5084:
	movq	(%r9 ), %rbx
	cmpq	$0, %rbx
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5083
	jmp	_post5082
	.text
_post5012:
	movq	%r12, (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond5035
	.text
_post5033:
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond5058
	.text
_post5056:
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	print_lfsr
	popq	%rdx
	popq	%rsi
	leaq	_str_arr5113(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	%rbx, %rdi
	callq	print_string
	popq	%rdx
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	(%rdx), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	print_lfsr
	popq	%rsi
	movq	-8(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %r15
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5082:
	movq	(%rdx), %rbx
	movq	%rbx, %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rbx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%r8 ), %rbx
	movq	%rbx, (%rsi)
	movq	(%rdi), %rbx
	movq	%rbx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdi)
	jmp	_cond5058