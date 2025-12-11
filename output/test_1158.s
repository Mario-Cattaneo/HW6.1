	.data
	.globl	_str_arr1874
_str_arr1874:
	.asciz	"42"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rbx, -176(%rbp)
	movq	%r12, -184(%rbp)
	movq	%r13, -192(%rbp)
	movq	%r14, -200(%rbp)
	movq	%r15, -208(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rbx
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r12
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r13
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r14
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r15
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -80(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -120(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -136(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -152(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -160(%rbp)
	leaq	_str_arr1874(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)
	movq	%rdx, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r15, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r14, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r15, (%rdx)
	movq	%r13, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r14, (%rdx)
	movq	%r12, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r13, (%rdx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r12, (%rdx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r11, (%rdx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r10, (%rdx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r9 , (%rdx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%r8 , (%rdx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%rdi, (%rdx)
	movq	%rsi, (%rbx)
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	pushq	%rdx
	movq	$0, %rsi
	movq	%rbx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rbx
	movq	(%rbx), %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	movq	-176(%rbp), %rbx
	movq	-184(%rbp), %r12
	movq	-192(%rbp), %r13
	movq	-200(%rbp), %r14
	movq	-208(%rbp), %r15
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	