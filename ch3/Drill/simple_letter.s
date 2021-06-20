	.file	"simple_letter.cpp"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.LC0:
	.string	"Dear "
.LC1:
	.string	",\n"
	.align 8
.LC2:
	.string	"How are you? I'm fine, I miss you.\n"
.LC3:
	.string	"Have you seen "
.LC4:
	.string	" lately?\n"
.LC5:
	.string	"if you see "
.LC6:
	.string	" please ask him to call me.\n"
.LC7:
	.string	" please ask her to call me.\n"
.LC8:
	.string	"I hear you just turned "
.LC9:
	.string	"Next year you will be "
	.align 8
.LC10:
	.string	"I hope you're enjoying your retirement\n"
.LC11:
	.string	"error"
	.text
	.globl	_Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci
	.type	_Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci, @function
_Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci:
.LFB1522:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	eax, edx
	mov	DWORD PTR -24[rbp], ecx
	mov	BYTE PTR -20[rbp], al
	lea	rsi, .LC0[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rsi, .LC1[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	lea	rsi, .LC2[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	lea	rsi, .LC3[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rsi, .LC4[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	cmp	BYTE PTR -20[rbp], 109
	jne	.L2
	lea	rsi, .LC5[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rsi, .LC6[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L3
.L2:
	cmp	BYTE PTR -20[rbp], 102
	jne	.L3
	lea	rsi, .LC5[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rsi, .LC7[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L3:
	cmp	DWORD PTR -24[rbp], 111
	jg	.L4
	cmp	DWORD PTR -24[rbp], 0
	jle	.L4
	lea	rsi, .LC8[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	cmp	DWORD PTR -24[rbp], 11
	jg	.L5
	lea	rsi, .LC9[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	jmp	.L9
.L5:
	cmp	DWORD PTR -24[rbp], 17
	jne	.L7
	lea	rsi, .LC9[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	jmp	.L9
.L7:
	cmp	DWORD PTR -24[rbp], 79
	jg	.L9
	cmp	DWORD PTR -24[rbp], 70
	jle	.L9
	lea	rsi, .LC10[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L9
.L4:
	lea	rsi, .LC11[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L10
.L9:
	nop
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1522:
	.size	_Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci, .-_Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci
	.section	.rodata
	.align 8
.LC12:
	.string	"Enter the name of the person you want to write to (followed by 'enter'):\n"
.LC13:
	.string	"Enter a friend name:\n"
.LC14:
	.string	"Enter "
	.align 8
.LC15:
	.string	" sex ('m' for male, 'f' for female):\n"
.LC16:
	.string	"Enter your age:\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1523:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1523
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rsi, .LC12[rip]
	lea	rdi, _ZSt4cout[rip]
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE0:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rdi, _ZSt3cin[rip]
.LEHB1:
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rsi, .LC13[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE1:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rdi, _ZSt3cin[rip]
.LEHB2:
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	mov	BYTE PTR -101[rbp], 48
	lea	rsi, .LC14[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	lea	rsi, .LC15[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	lea	rax, -101[rbp]
	mov	rsi, rax
	lea	rdi, _ZSt3cin[rip]
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	lea	rsi, .LC16[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	DWORD PTR -100[rbp], 0
	lea	rax, -100[rbp]
	mov	rsi, rax
	lea	rdi, _ZSt3cin[rip]
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -100[rbp]
	movzx	eax, BYTE PTR -101[rbp]
	movsx	edx, al
	lea	rsi, -64[rbp]
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci
.LEHE2:
	mov	ebx, 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	mov	eax, ebx
	mov	rcx, QWORD PTR -24[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L15
	jmp	.L18
.L17:
	endbr64
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L14
.L16:
	endbr64
	mov	rbx, rax
.L14:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L18:
	call	__stack_chk_fail@PLT
.L15:
	add	rsp, 104
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1523:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1523:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1523-.LLSDACSB1523
.LLSDACSB1523:
	.uleb128 .LEHB0-.LFB1523
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1523
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB1523
	.uleb128 0
	.uleb128 .LEHB2-.LFB1523
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L17-.LFB1523
	.uleb128 0
	.uleb128 .LEHB3-.LFB1523
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1523:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2012:
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
	jne	.L21
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L21
	lea	rdi, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev@PLT
	lea	rdx, __dso_handle[rip]
	lea	rsi, _ZStL8__ioinit[rip]
	mov	rax, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2012:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci, @function
_GLOBAL__sub_I__Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci:
.LFB2013:
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
.LFE2013:
	.size	_GLOBAL__sub_I__Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci, .-_GLOBAL__sub_I__Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z6letterRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ci
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
