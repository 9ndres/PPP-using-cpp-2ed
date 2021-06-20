	.file	"ex4_5.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 8
.LC0:
	.string	"Enter two ints(followed by enter)\n"
	.align 8
.LC1:
	.string	"Enter two floating points(followed by enter)\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1989:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERi@PLT
	movq	%rax, %rdx
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSirsERi@PLT
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z4CalcIiEvT_S0_
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERd@PLT
	movq	%rax, %rdx
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSirsERi@PLT
	movq	-24(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	_Z4CalcIdEvT_S0_
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1989:
	.size	main, .-main
	.section	.text._ZNSt4pairIiiEC2IRKiS3_Lb1EEEOS_IT_T0_E,"axG",@progbits,_ZNSt4pairIiiEC5IRKiS3_Lb1EEEOS_IT_T0_E,comdat
	.align 2
	.weak	_ZNSt4pairIiiEC2IRKiS3_Lb1EEEOS_IT_T0_E
	.type	_ZNSt4pairIiiEC2IRKiS3_Lb1EEEOS_IT_T0_E, @function
_ZNSt4pairIiiEC2IRKiS3_Lb1EEEOS_IT_T0_E:
.LFB2237:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZNSt4pairIiiEC2IRKiS3_Lb1EEEOS_IT_T0_E, .-_ZNSt4pairIiiEC2IRKiS3_Lb1EEEOS_IT_T0_E
	.weak	_ZNSt4pairIiiEC1IRKiS3_Lb1EEEOS_IT_T0_E
	.set	_ZNSt4pairIiiEC1IRKiS3_Lb1EEEOS_IT_T0_E,_ZNSt4pairIiiEC2IRKiS3_Lb1EEEOS_IT_T0_E
	.section	.text._ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_,"axG",@progbits,_ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_,comdat
	.weak	_ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_
	.type	_ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_, @function
_ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_:
.LFB2239:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L6
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIRKiS1_EC1IS1_S1_Lb1EEES1_S1_
	jmp	.L8
.L6:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIRKiS1_EC1IS1_S1_Lb1EEES1_S1_
.L8:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2239:
	.size	_ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_, .-_ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_
	.section	.rodata
.LC2:
	.string	"the larger number is: "
.LC3:
	.string	"\nand the smaller number is: "
.LC4:
	.string	"the numbers are equal."
.LC5:
	.string	"\nthe sum of both is: "
.LC6:
	.string	"\nthe difference is: "
.LC7:
	.string	"\nthe product is: "
	.section	.text._Z4CalcIiEvT_S0_,"axG",@progbits,_Z4CalcIiEvT_S0_,comdat
	.weak	_Z4CalcIiEvT_S0_
	.type	_Z4CalcIiEvT_S0_, @function
_Z4CalcIiEvT_S0_:
.LFB2227:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-56(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt6minmaxIiESt4pairIRKT_S3_ES3_S3_
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIiiEC1IRKiS3_Lb1EEEOS_IT_T0_E
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	cmpl	%eax, %edx
	je	.L11
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	jmp	.L12
.L11:
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L12:
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %eax
	imull	%ecx, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2227:
	.size	_Z4CalcIiEvT_S0_, .-_Z4CalcIiEvT_S0_
	.section	.text._ZNSt4pairIddEC2IRKdS3_Lb1EEEOS_IT_T0_E,"axG",@progbits,_ZNSt4pairIddEC5IRKdS3_Lb1EEEOS_IT_T0_E,comdat
	.align 2
	.weak	_ZNSt4pairIddEC2IRKdS3_Lb1EEEOS_IT_T0_E
	.type	_ZNSt4pairIddEC2IRKdS3_Lb1EEEOS_IT_T0_E, @function
_ZNSt4pairIddEC2IRKdS3_Lb1EEEOS_IT_T0_E:
.LFB2263:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2263:
	.size	_ZNSt4pairIddEC2IRKdS3_Lb1EEEOS_IT_T0_E, .-_ZNSt4pairIddEC2IRKdS3_Lb1EEEOS_IT_T0_E
	.weak	_ZNSt4pairIddEC1IRKdS3_Lb1EEEOS_IT_T0_E
	.set	_ZNSt4pairIddEC1IRKdS3_Lb1EEEOS_IT_T0_E,_ZNSt4pairIddEC2IRKdS3_Lb1EEEOS_IT_T0_E
	.section	.text._ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_,"axG",@progbits,_ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_,comdat
	.weak	_ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_
	.type	_ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_, @function
_ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_:
.LFB2265:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L22
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIRKdS1_EC1IS1_S1_Lb1EEES1_S1_
	jmp	.L19
.L22:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIRKdS1_EC1IS1_S1_Lb1EEES1_S1_
.L19:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2265:
	.size	_ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_, .-_ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_
	.section	.text._Z4CalcIdEvT_S0_,"axG",@progbits,_Z4CalcIdEvT_S0_,comdat
	.weak	_Z4CalcIdEvT_S0_
	.type	_Z4CalcIdEvT_S0_, @function
_Z4CalcIdEvT_S0_:
.LFB2253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt6minmaxIdESt4pairIRKT_S3_ES3_S3_
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIddEC1IRKdS3_Lb1EEEOS_IT_T0_E
	movsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L28
	ucomisd	%xmm1, %xmm0
	je	.L29
.L28:
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	jmp	.L26
.L29:
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L26:
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2253:
	.size	_Z4CalcIdEvT_S0_, .-_Z4CalcIdEvT_S0_
	.section	.text._ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB2387:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2387:
	.size	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt4pairIRKiS1_EC2IS1_S1_Lb1EEES1_S1_,"axG",@progbits,_ZNSt4pairIRKiS1_EC5IS1_S1_Lb1EEES1_S1_,comdat
	.align 2
	.weak	_ZNSt4pairIRKiS1_EC2IS1_S1_Lb1EEES1_S1_
	.type	_ZNSt4pairIRKiS1_EC2IS1_S1_Lb1EEES1_S1_, @function
_ZNSt4pairIRKiS1_EC2IS1_S1_Lb1EEES1_S1_:
.LFB2389:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2389:
	.size	_ZNSt4pairIRKiS1_EC2IS1_S1_Lb1EEES1_S1_, .-_ZNSt4pairIRKiS1_EC2IS1_S1_Lb1EEES1_S1_
	.weak	_ZNSt4pairIRKiS1_EC1IS1_S1_Lb1EEES1_S1_
	.set	_ZNSt4pairIRKiS1_EC1IS1_S1_Lb1EEES1_S1_,_ZNSt4pairIRKiS1_EC2IS1_S1_Lb1EEES1_S1_
	.section	.text._ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB2392:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2392:
	.size	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt4pairIRKdS1_EC2IS1_S1_Lb1EEES1_S1_,"axG",@progbits,_ZNSt4pairIRKdS1_EC5IS1_S1_Lb1EEES1_S1_,comdat
	.align 2
	.weak	_ZNSt4pairIRKdS1_EC2IS1_S1_Lb1EEES1_S1_
	.type	_ZNSt4pairIRKdS1_EC2IS1_S1_Lb1EEES1_S1_, @function
_ZNSt4pairIRKdS1_EC2IS1_S1_Lb1EEES1_S1_:
.LFB2394:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2394:
	.size	_ZNSt4pairIRKdS1_EC2IS1_S1_Lb1EEES1_S1_, .-_ZNSt4pairIRKdS1_EC2IS1_S1_Lb1EEES1_S1_
	.weak	_ZNSt4pairIRKdS1_EC1IS1_S1_Lb1EEES1_S1_
	.set	_ZNSt4pairIRKdS1_EC1IS1_S1_Lb1EEES1_S1_,_ZNSt4pairIRKdS1_EC2IS1_S1_Lb1EEES1_S1_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2534:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L38
	cmpl	$65535, -8(%rbp)
	jne	.L38
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L38:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2534:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2535:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2535:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
