	.file	"ex5.cpp"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNKSt5arrayIiLm3EE4sizeEv,"axG",@progbits,_ZNKSt5arrayIiLm3EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5arrayIiLm3EE4sizeEv
	.type	_ZNKSt5arrayIiLm3EE4sizeEv, @function
_ZNKSt5arrayIiLm3EE4sizeEv:
.LFB1591:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, 3
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1591:
	.size	_ZNKSt5arrayIiLm3EE4sizeEv, .-_ZNKSt5arrayIiLm3EE4sizeEv
	.section	.rodata
.LC0:
	.string	"enter three digits: a b c\n"
.LC1:
	.string	", "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1590:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rsi, .LC0[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	DWORD PTR -44[rbp], 0
.L5:
	mov	eax, DWORD PTR -44[rbp]
	movsx	rbx, eax
	lea	rax, -36[rbp]
	mov	rdi, rax
	call	_ZNKSt5arrayIiLm3EE4sizeEv
	cmp	rbx, rax
	setb	al
	test	al, al
	je	.L4
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	lea	rax, -36[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5arrayIiLm3EEixEm
	mov	rsi, rax
	lea	rdi, _ZSt3cin[rip]
	call	_ZNSirsERi@PLT
	add	DWORD PTR -44[rbp], 1
	jmp	.L5
.L4:
	mov	DWORD PTR -40[rbp], 0
.L8:
	mov	eax, DWORD PTR -40[rbp]
	movsx	rbx, eax
	lea	rax, -36[rbp]
	mov	rdi, rax
	call	_ZNKSt5arrayIiLm3EE4sizeEv
	cmp	rbx, rax
	setb	al
	test	al, al
	je	.L6
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	lea	rax, -36[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5arrayIiLm3EEixEm
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rdi, _ZSt4cout[rip]
	call	_ZNSolsEi@PLT
	mov	eax, DWORD PTR -40[rbp]
	movsx	rbx, eax
	lea	rax, -36[rbp]
	mov	rdi, rax
	call	_ZNKSt5arrayIiLm3EE4sizeEv
	sub	rax, 1
	cmp	rbx, rax
	setb	al
	test	al, al
	je	.L7
	lea	rsi, .LC1[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L7:
	add	DWORD PTR -40[rbp], 1
	jmp	.L8
.L6:
	mov	eax, 0
	mov	rcx, QWORD PTR -24[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	add	rsp, 40
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1590:
	.size	main, .-main
	.section	.text._ZNSt5arrayIiLm3EEixEm,"axG",@progbits,_ZNSt5arrayIiLm3EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayIiLm3EEixEm
	.type	_ZNSt5arrayIiLm3EEixEm, @function
_ZNSt5arrayIiLm3EEixEm:
.LFB1829:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1829:
	.size	_ZNSt5arrayIiLm3EEixEm, .-_ZNSt5arrayIiLm3EEixEm
	.section	.text._ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim,"axG",@progbits,_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim,comdat
	.weak	_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim
	.type	_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim, @function
_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim:
.LFB1939:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1939:
	.size	_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim, .-_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2077:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
	lea	rdi, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev@PLT
	lea	rdx, __dso_handle[rip]
	lea	rsi, _ZStL8__ioinit[rip]
	mov	rax, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2077:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2078:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	esi, 65535
	mov	edi, 1
	call	_Z41__static_initialization_and_destruction_0ii
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2078:
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
