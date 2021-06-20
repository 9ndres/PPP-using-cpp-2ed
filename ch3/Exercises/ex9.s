	.file	"ex9.cpp"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev,"axG",@progbits,_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED5Ev,comdat
	.align 2
	.weak	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev
	.type	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev, @function
_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev:
.LFB1592:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	test	rax, rax
	je	.L2
	mov	rax, QWORD PTR -24[rbp]
	lea	rbx, 160[rax]
.L3:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rbx, rax
	je	.L2
	sub	rbx, 32
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L3
.L2:
	nop
	add	rsp, 24
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1592:
	.size	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev, .-_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev
	.weak	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED1Ev
	.set	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED1Ev,_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED2Ev
	.section	.rodata
.LC0:
	.string	"zero"
.LC1:
	.string	"one"
.LC2:
	.string	"two"
.LC3:
	.string	"three"
.LC4:
	.string	"four"
.LC5:
	.string	"\n"
.LC6:
	.string	"not a number I know\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1590:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1590
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	sub	rsp, 200
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -40[rbp], rax
	xor	eax, eax
	lea	r12, -208[rbp]
	mov	ebx, 4
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rax, -212[rbp]
	mov	rdx, rax
	lea	rsi, .LC0[rip]
	mov	rdi, r12
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE0:
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	lea	r13, 32[r12]
	sub	rbx, 1
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rax, -212[rbp]
	mov	rdx, rax
	lea	rsi, .LC1[rip]
	mov	rdi, r13
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE1:
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	add	r13, 32
	sub	rbx, 1
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rax, -212[rbp]
	mov	rdx, rax
	lea	rsi, .LC2[rip]
	mov	rdi, r13
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE2:
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	add	r13, 32
	sub	rbx, 1
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rax, -212[rbp]
	mov	rdx, rax
	lea	rsi, .LC3[rip]
	mov	rdi, r13
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE3:
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	add	r13, 32
	sub	rbx, 1
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rax, -212[rbp]
	mov	rdx, rax
	lea	rsi, .LC4[rip]
	mov	rdi, r13
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE4:
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	lea	rax, -212[rbp]
	mov	rsi, rax
	lea	rdi, _ZSt3cin[rip]
.LEHB5:
	call	_ZNSirsERi@PLT
	mov	rdx, QWORD PTR [rax]
	sub	rdx, 24
	mov	rdx, QWORD PTR [rdx]
	add	rax, rdx
	mov	rdi, rax
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT
	test	al, al
	je	.L5
	mov	eax, DWORD PTR -212[rbp]
	cmp	eax, 4
	jg	.L5
	mov	eax, 1
	jmp	.L6
.L5:
	mov	eax, 0
.L6:
	test	al, al
	je	.L7
	mov	eax, DWORD PTR -212[rbp]
	movsx	rdx, eax
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm
	mov	rsi, rax
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rsi, .LC5[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L8
.L7:
	lea	rsi, .LC6[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE5:
.L8:
	mov	ebx, 0
	lea	rax, -208[rbp]
	mov	rdi, rax
	call	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED1Ev
	mov	eax, ebx
	mov	rcx, QWORD PTR -40[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L19
	jmp	.L26
.L20:
	endbr64
	mov	r13, rax
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L11
.L21:
	endbr64
	mov	r13, rax
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L11
.L22:
	endbr64
	mov	r13, rax
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L11
.L23:
	endbr64
	mov	r13, rax
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L11
.L24:
	endbr64
	mov	r13, rax
	lea	rax, -212[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
.L11:
	test	r12, r12
	je	.L16
	mov	eax, 4
	sub	rax, rbx
	sal	rax, 5
	lea	rbx, [r12+rax]
.L17:
	cmp	rbx, r12
	je	.L16
	sub	rbx, 32
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L17
.L16:
	mov	rax, r13
	mov	rdi, rax
.LEHB6:
	call	_Unwind_Resume@PLT
.L25:
	endbr64
	mov	rbx, rax
	lea	rax, -208[rbp]
	mov	rdi, rax
	call	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EED1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE6:
.L26:
	call	__stack_chk_fail@PLT
.L19:
	add	rsp, 200
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1590:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1590:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1590-.LLSDACSB1590
.LLSDACSB1590:
	.uleb128 .LEHB0-.LFB1590
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L20-.LFB1590
	.uleb128 0
	.uleb128 .LEHB1-.LFB1590
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB1590
	.uleb128 0
	.uleb128 .LEHB2-.LFB1590
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L22-.LFB1590
	.uleb128 0
	.uleb128 .LEHB3-.LFB1590
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L23-.LFB1590
	.uleb128 0
	.uleb128 .LEHB4-.LFB1590
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L24-.LFB1590
	.uleb128 0
	.uleb128 .LEHB5-.LFB1590
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L25-.LFB1590
	.uleb128 0
	.uleb128 .LEHB6-.LFB1590
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1590:
	.text
	.size	main, .-main
	.section	.text._ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm,"axG",@progbits,_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm
	.type	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm, @function
_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm:
.LFB1834:
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
	call	_ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1834:
	.size	_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm, .-_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EEixEm
	.section	.text._ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m,"axG",@progbits,_ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m,comdat
	.weak	_ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m
	.type	_ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m, @function
_ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m:
.LFB1946:
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
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1946:
	.size	_ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m, .-_ZNSt14__array_traitsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm5EE6_S_refERA5_KS5_m
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2085:
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
	jne	.L33
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L33
	lea	rdi, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev@PLT
	lea	rdx, __dso_handle[rip]
	lea	rsi, _ZStL8__ioinit[rip]
	mov	rax, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L33:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2085:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2086:
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
.LFE2086:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
