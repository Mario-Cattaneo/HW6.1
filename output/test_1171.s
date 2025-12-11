	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rbx, -8(%rbp)
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
	movq	(%rbx), %rdx
	movq	(%r8 ), %rbx
	movq	%rdx, %rsi
	addq	%rbx, %rsi
	movq	%rsi, (%r10)
	movq	(%r8 ), %rbx
	movq	(%r9 ), %rdx
	movq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, (%r11)
	movq	(%r10), %rbx
	movq	(%r11), %rdx
	movq	%rbx, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rbx
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$680, %rsp
	movq	%rbx, -648(%rbp)
	movq	%r12, -656(%rbp)
	movq	%r13, -664(%rbp)
	movq	%r14, -672(%rbp)
	movq	%r15, -680(%rbp)
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
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r12
	subq	$8, %rsp
	movq	%rsp, %r13
	subq	$8, %rsp
	movq	%rsp, %r14
	subq	$8, %rsp
	movq	%rsp, %r15
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	$0, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2634
	.text
_body2633:
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-144(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	foo
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -168(%rbp)
	movq	-136(%rbp), %rax
	addq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	addq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	addq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%r12, %rcx
	movq	%rax, (%rcx)
	movq	%r12, %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	addq	-264(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%r13, %rcx
	movq	%rax, (%rcx)
	movq	%r13, %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	addq	-288(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%r14, %rcx
	movq	%rax, (%rcx)
	movq	%r14, %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	%r13, %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	%r12, %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-312(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rdi
	callq	foo
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -336(%rbp)
	movq	-304(%rbp), %rax
	addq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%r14, %rcx
	movq	%rax, (%rcx)
	movq	%r14, %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rax
	addq	-360(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%r15, %rcx
	movq	%rax, (%rcx)
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-376(%rbp), %rax
	addq	-384(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-400(%rbp), %rax
	addq	-408(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-424(%rbp), %rax
	addq	-432(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rsi
	movq	-472(%rbp), %rdi
	callq	foo
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -480(%rbp)
	movq	-448(%rbp), %rax
	addq	-480(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rax
	addq	-504(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-520(%rbp), %rax
	addq	-528(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-544(%rbp), %rax
	addq	-552(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-568(%rbp), %rax
	addq	-576(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rbx, %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-592(%rbp), %rax
	addq	-600(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2634
	.text
_cond2634:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	cmpq	$10000000, %rax
	setl	-640(%rbp)
	andq	$1, -640(%rbp)
	cmpq	$0, -640(%rbp)
	jne	_body2633
	jmp	_post2632
	.text
_post2632:
	movq	(%rbx), %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_int
	popq	%rdx
	movq	-648(%rbp), %rbx
	movq	-656(%rbp), %r12
	movq	-664(%rbp), %r13
	movq	-672(%rbp), %r14
	movq	-680(%rbp), %r15
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	