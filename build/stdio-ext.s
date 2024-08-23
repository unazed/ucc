	.file	"stdio-ext.c"
	.text
.Ltext0:
	.file 0 "/home/unazed/Programming/c/ucc-0.2.0" "src/stdio-ext.c"
	.globl	fpeek
	.type	fpeek, @function
fpeek:
.LASANPC25:
.LVL0:
.LFB25:
	.file 1 "src/stdio-ext.c"
	.loc 1 8 1 view -0
	.cfi_startproc
	.loc 1 8 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %rbx
	movq	%rsi, %r12
	.loc 1 9 3 is_stmt 1 view .LVU2
	movl	$1, %edx
	call	fseek@PLT
.LVL1:
	.loc 1 10 3 view .LVU3
	.loc 1 10 11 is_stmt 0 view .LVU4
	movq	%rbx, %rdi
	call	fgetc@PLT
.LVL2:
	movl	%eax, %r13d
.LVL3:
	.loc 1 11 3 is_stmt 1 view .LVU5
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
.LVL4:
	.loc 1 12 3 view .LVU6
	movq	%r12, %r14
	negq	%r14
	jo	.L4
.L2:
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	fseek@PLT
.LVL5:
	.loc 1 13 3 view .LVU7
	.loc 1 14 1 is_stmt 0 view .LVU8
	movl	%r13d, %eax
	popq	%rbx
.LVL6:
	.loc 1 14 1 view .LVU9
	popq	%r12
.LVL7:
	.loc 1 14 1 view .LVU10
	popq	%r13
.LVL8:
	.loc 1 14 1 view .LVU11
	popq	%r14
.LVL9:
	.loc 1 14 1 view .LVU12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL10:
.L4:
	.cfi_restore_state
	.loc 1 12 3 view .LVU13
	movq	%r12, %rsi
	leaq	.Lubsan_data14(%rip), %rdi
	call	__ubsan_handle_negate_overflow@PLT
.LVL11:
	jmp	.L2
	.cfi_endproc
.LFE25:
	.size	fpeek, .-fpeek
	.globl	fconsume
	.type	fconsume, @function
fconsume:
.LASANPC26:
.LVL12:
.LFB26:
	.loc 1 18 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 18 1 is_stmt 0 view .LVU15
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
1:	call	*mcount@GOTPCREL(%rip)
	.loc 1 19 3 is_stmt 1 view .LVU16
	.loc 1 19 10 is_stmt 0 view .LVU17
	movl	$1, %edx
	call	fseek@PLT
.LVL13:
	.loc 1 20 1 view .LVU18
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	fconsume, .-fconsume
	.globl	isoctdigit
	.type	isoctdigit, @function
isoctdigit:
.LASANPC27:
.LVL14:
.LFB27:
	.loc 1 24 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 24 1 is_stmt 0 view .LVU20
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
1:	call	*mcount@GOTPCREL(%rip)
	.loc 1 25 3 is_stmt 1 view .LVU21
	.loc 1 25 20 is_stmt 0 view .LVU22
	subl	$48, %edi
.LVL15:
	.loc 1 25 20 view .LVU23
	cmpl	$7, %edi
	setbe	%al
	movzbl	%al, %eax
	.loc 1 26 1 view .LVU24
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	isoctdigit, .-isoctdigit
	.globl	isident_f
	.type	isident_f, @function
isident_f:
.LASANPC28:
.LVL16:
.LFB28:
	.loc 1 30 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 30 1 is_stmt 0 view .LVU26
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
1:	call	*mcount@GOTPCREL(%rip)
	movl	%edi, %r12d
	.loc 1 31 3 is_stmt 1 view .LVU27
	.loc 1 31 12 is_stmt 0 view .LVU28
	call	__ctype_b_loc@PLT
.LVL17:
	.loc 1 31 12 view .LVU29
	movq	%rax, %rbx
	.loc 1 31 11 discriminator 1 view .LVU30
	testq	%rax, %rax
	je	.L8
	testb	$7, %al
	jne	.L8
.L9:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L22
	movq	(%rbx), %r13
	.loc 1 31 29 discriminator 1 view .LVU31
	movslq	%r12d, %rbx
	addq	%rbx, %rbx
	leaq	0(%r13,%rbx), %rdx
	js	.L11
	cmpq	%r13, %rdx
	jnb	.L12
.L13:
	movq	%r13, %rsi
	leaq	.Lubsan_data16(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL18:
	jmp	.L12
.L8:
	.loc 1 31 11 discriminator 1 view .LVU32
	movq	%rbx, %rsi
	leaq	.Lubsan_data15(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL19:
	jmp	.L9
.L22:
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL20:
.L11:
	.loc 1 31 29 discriminator 1 view .LVU33
	cmpq	%rdx, %r13
	jb	.L13
.L12:
	addq	%rbx, %r13
	je	.L14
	testb	$1, %r13b
	jne	.L14
.L15:
	movq	%r13, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %edx
	movq	%r13, %rax
	andl	$7, %eax
	addl	$1, %eax
	cmpb	%dl, %al
	jl	.L16
	testb	%dl, %dl
	jne	.L23
.L16:
	movzwl	0(%r13), %eax
	.loc 1 31 35 discriminator 1 view .LVU34
	testb	$4, %ah
	jne	.L19
	.loc 1 31 28 discriminator 2 view .LVU35
	cmpl	$36, %r12d
	sete	%al
	.loc 1 31 41 discriminator 2 view .LVU36
	cmpl	$95, %r12d
	sete	%dl
	.loc 1 31 35 discriminator 2 view .LVU37
	testb	%al, %al
	jne	.L21
	testb	%dl, %dl
	jne	.L21
	.loc 1 31 35 discriminator 4 view .LVU38
	movl	$0, %eax
	.loc 1 31 35 view .LVU39
	jmp	.L7
.L14:
	.loc 1 31 29 discriminator 1 view .LVU40
	movq	%r13, %rsi
	leaq	.Lubsan_data17(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL21:
	jmp	.L15
.L23:
	movq	%r13, %rdi
	call	__asan_report_load2@PLT
.LVL22:
.L21:
	.loc 1 31 35 discriminator 3 view .LVU41
	movl	$1, %eax
	jmp	.L7
.L19:
	.loc 1 31 35 discriminator 3 view .LVU42
	movl	$1, %eax
.L7:
	.loc 1 32 1 view .LVU43
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
.LVL23:
	.loc 1 32 1 view .LVU44
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	isident_f, .-isident_f
	.globl	isident
	.type	isident, @function
isident:
.LASANPC29:
.LVL24:
.LFB29:
	.loc 1 36 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 36 1 is_stmt 0 view .LVU46
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
1:	call	*mcount@GOTPCREL(%rip)
	movl	%edi, %r12d
	.loc 1 37 3 is_stmt 1 view .LVU47
	.loc 1 37 12 is_stmt 0 view .LVU48
	call	__ctype_b_loc@PLT
.LVL25:
	.loc 1 37 12 view .LVU49
	movq	%rax, %rbx
	.loc 1 37 11 discriminator 1 view .LVU50
	testq	%rax, %rax
	je	.L25
	testb	$7, %al
	jne	.L25
.L26:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L39
	movq	(%rbx), %r13
	.loc 1 37 29 discriminator 1 view .LVU51
	movslq	%r12d, %rbx
	addq	%rbx, %rbx
	leaq	0(%r13,%rbx), %rdx
	js	.L28
	cmpq	%r13, %rdx
	jnb	.L29
.L30:
	movq	%r13, %rsi
	leaq	.Lubsan_data19(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL26:
	jmp	.L29
.L25:
	.loc 1 37 11 discriminator 1 view .LVU52
	movq	%rbx, %rsi
	leaq	.Lubsan_data18(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL27:
	jmp	.L26
.L39:
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL28:
.L28:
	.loc 1 37 29 discriminator 1 view .LVU53
	cmpq	%rdx, %r13
	jb	.L30
.L29:
	addq	%rbx, %r13
	je	.L31
	testb	$1, %r13b
	jne	.L31
.L32:
	movq	%r13, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %edx
	movq	%r13, %rax
	andl	$7, %eax
	addl	$1, %eax
	cmpb	%dl, %al
	jl	.L33
	testb	%dl, %dl
	jne	.L40
.L33:
	.loc 1 37 35 discriminator 1 view .LVU54
	testb	$8, 0(%r13)
	jne	.L36
	.loc 1 37 28 discriminator 2 view .LVU55
	cmpl	$36, %r12d
	sete	%al
	.loc 1 37 41 discriminator 2 view .LVU56
	cmpl	$95, %r12d
	sete	%dl
	.loc 1 37 35 discriminator 2 view .LVU57
	testb	%al, %al
	jne	.L38
	testb	%dl, %dl
	jne	.L38
	.loc 1 37 35 discriminator 4 view .LVU58
	movl	$0, %eax
	.loc 1 37 35 view .LVU59
	jmp	.L24
.L31:
	.loc 1 37 29 discriminator 1 view .LVU60
	movq	%r13, %rsi
	leaq	.Lubsan_data20(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL29:
	jmp	.L32
.L40:
	movq	%r13, %rdi
	call	__asan_report_load2@PLT
.LVL30:
.L38:
	.loc 1 37 35 discriminator 3 view .LVU61
	movl	$1, %eax
	jmp	.L24
.L36:
	.loc 1 37 35 discriminator 3 view .LVU62
	movl	$1, %eax
.L24:
	.loc 1 38 1 view .LVU63
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
.LVL31:
	.loc 1 38 1 view .LVU64
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	isident, .-isident
	.section	.rodata
	.align 32
.LC0:
	.string	"src/stdio-ext.c"
	.zero	48
	.section	.data.rel.local,"aw"
	.align 32
	.type	.Lubsan_data20, @object
	.size	.Lubsan_data20, 32
.Lubsan_data20:
	.quad	.LC0
	.long	37
	.long	29
	.quad	.Lubsan_type3
	.byte	1
	.byte	0
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data19, @object
	.size	.Lubsan_data19, 16
.Lubsan_data19:
	.quad	.LC0
	.long	37
	.long	29
	.zero	48
	.align 32
	.type	.Lubsan_data18, @object
	.size	.Lubsan_data18, 32
.Lubsan_data18:
	.quad	.LC0
	.long	37
	.long	11
	.quad	.Lubsan_type2
	.byte	3
	.byte	0
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data17, @object
	.size	.Lubsan_data17, 32
.Lubsan_data17:
	.quad	.LC0
	.long	31
	.long	29
	.quad	.Lubsan_type3
	.byte	1
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type3, @object
	.size	.Lubsan_type3, 31
.Lubsan_type3:
	.value	-1
	.value	0
	.string	"'const short unsigned int'"
	.zero	33
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data16, @object
	.size	.Lubsan_data16, 16
.Lubsan_data16:
	.quad	.LC0
	.long	31
	.long	29
	.zero	48
	.align 32
	.type	.Lubsan_data15, @object
	.size	.Lubsan_data15, 32
.Lubsan_data15:
	.quad	.LC0
	.long	31
	.long	11
	.quad	.Lubsan_type2
	.byte	3
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type2, @object
	.size	.Lubsan_type2, 33
.Lubsan_type2:
	.value	-1
	.value	0
	.string	"'const short unsigned int *'"
	.zero	63
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data14, @object
	.size	.Lubsan_data14, 24
.Lubsan_data14:
	.quad	.LC0
	.long	12
	.long	3
	.quad	.Lubsan_type1
	.zero	40
	.data
	.align 32
	.type	.Lubsan_type1, @object
	.size	.Lubsan_type1, 15
.Lubsan_type1:
	.value	0
	.value	13
	.string	"'long int'"
	.zero	49
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"*.Lubsan_data20"
.LC2:
	.string	"*.Lubsan_data19"
.LC3:
	.string	"*.Lubsan_data18"
.LC4:
	.string	"*.Lubsan_data17"
.LC5:
	.string	"*.Lubsan_type3"
.LC6:
	.string	"*.Lubsan_data16"
.LC7:
	.string	"*.Lubsan_data15"
.LC8:
	.string	"*.Lubsan_type2"
.LC9:
	.string	"*.Lubsan_data14"
.LC10:
	.string	"*.Lubsan_type1"
.LC11:
	.string	"*.LC0"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 704
.LASAN0:
	.quad	.Lubsan_data20
	.quad	32
	.quad	64
	.quad	.LC1
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data19
	.quad	16
	.quad	64
	.quad	.LC2
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data18
	.quad	32
	.quad	64
	.quad	.LC3
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data17
	.quad	32
	.quad	64
	.quad	.LC4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type3
	.quad	31
	.quad	64
	.quad	.LC5
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data16
	.quad	16
	.quad	64
	.quad	.LC6
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data15
	.quad	32
	.quad	64
	.quad	.LC7
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type2
	.quad	33
	.quad	96
	.quad	.LC8
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data14
	.quad	24
	.quad	64
	.quad	.LC9
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type1
	.quad	15
	.quad	64
	.quad	.LC10
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	16
	.quad	64
	.quad	.LC11
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB30:
	.cfi_startproc
	.loc 1 38 1 is_stmt 1 view .LVU65
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$11, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB31:
	.cfi_startproc
	.loc 1 38 1 view .LVU66
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$11, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "<built-in>"
	.file 8 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x69c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x15
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x16
	.long	0x51
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xa
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x72
	.uleb128 0xa
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x72
	.uleb128 0x4
	.long	0x96
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x18
	.long	.LASF80
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x207
	.uleb128 0x2
	.long	.LASF13
	.byte	0x33
	.byte	0x7
	.long	0x6b
	.byte	0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x36
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x2
	.long	.LASF15
	.byte	0x37
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0x2
	.long	.LASF16
	.byte	0x38
	.byte	0x9
	.long	0x91
	.byte	0x18
	.uleb128 0x2
	.long	.LASF17
	.byte	0x39
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3a
	.byte	0x9
	.long	0x91
	.byte	0x28
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3b
	.byte	0x9
	.long	0x91
	.byte	0x30
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3c
	.byte	0x9
	.long	0x91
	.byte	0x38
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3d
	.byte	0x9
	.long	0x91
	.byte	0x40
	.uleb128 0x2
	.long	.LASF22
	.byte	0x40
	.byte	0x9
	.long	0x91
	.byte	0x48
	.uleb128 0x2
	.long	.LASF23
	.byte	0x41
	.byte	0x9
	.long	0x91
	.byte	0x50
	.uleb128 0x2
	.long	.LASF24
	.byte	0x42
	.byte	0x9
	.long	0x91
	.byte	0x58
	.uleb128 0x2
	.long	.LASF25
	.byte	0x44
	.byte	0x16
	.long	0x220
	.byte	0x60
	.uleb128 0x2
	.long	.LASF26
	.byte	0x46
	.byte	0x14
	.long	0x225
	.byte	0x68
	.uleb128 0x2
	.long	.LASF27
	.byte	0x48
	.byte	0x7
	.long	0x6b
	.byte	0x70
	.uleb128 0x2
	.long	.LASF28
	.byte	0x49
	.byte	0x7
	.long	0x6b
	.byte	0x74
	.uleb128 0x2
	.long	.LASF29
	.byte	0x4a
	.byte	0xb
	.long	0x79
	.byte	0x78
	.uleb128 0x2
	.long	.LASF30
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x2
	.long	.LASF31
	.byte	0x4e
	.byte	0xf
	.long	0x5d
	.byte	0x82
	.uleb128 0x2
	.long	.LASF32
	.byte	0x4f
	.byte	0x8
	.long	0x22a
	.byte	0x83
	.uleb128 0x2
	.long	.LASF33
	.byte	0x51
	.byte	0xf
	.long	0x23a
	.byte	0x88
	.uleb128 0x2
	.long	.LASF34
	.byte	0x59
	.byte	0xd
	.long	0x85
	.byte	0x90
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5b
	.byte	0x17
	.long	0x244
	.byte	0x98
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5c
	.byte	0x19
	.long	0x24e
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x5d
	.byte	0x14
	.long	0x225
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF38
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF40
	.byte	0x60
	.byte	0x7
	.long	0x6b
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x62
	.byte	0x8
	.long	0x253
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x9d
	.uleb128 0x19
	.long	.LASF81
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF43
	.uleb128 0x4
	.long	0x21b
	.uleb128 0x4
	.long	0x9d
	.uleb128 0x11
	.long	0x96
	.long	0x23a
	.uleb128 0x12
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x213
	.uleb128 0xe
	.long	.LASF44
	.uleb128 0x4
	.long	0x23f
	.uleb128 0xe
	.long	.LASF45
	.uleb128 0x4
	.long	0x249
	.uleb128 0x11
	.long	0x96
	.long	0x263
	.uleb128 0x12
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x207
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x41
	.byte	0x8
	.byte	0x2f
	.byte	0x1
	.long	0x2c7
	.uleb128 0x6
	.long	.LASF46
	.value	0x100
	.uleb128 0x6
	.long	.LASF47
	.value	0x200
	.uleb128 0x6
	.long	.LASF48
	.value	0x400
	.uleb128 0x6
	.long	.LASF49
	.value	0x800
	.uleb128 0x6
	.long	.LASF50
	.value	0x1000
	.uleb128 0x6
	.long	.LASF51
	.value	0x2000
	.uleb128 0x6
	.long	.LASF52
	.value	0x4000
	.uleb128 0x6
	.long	.LASF53
	.value	0x8000
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.uleb128 0xb
	.long	.LASF55
	.byte	0x2
	.uleb128 0xb
	.long	.LASF56
	.byte	0x4
	.uleb128 0xb
	.long	.LASF57
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x58
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x8
	.byte	0x4f
	.byte	0x23
	.long	0x2d8
	.uleb128 0x4
	.long	0x2c7
	.uleb128 0xf
	.long	.LASF58
	.value	0x2db
	.long	0x6b
	.long	0x2f7
	.uleb128 0x7
	.long	0x6b
	.uleb128 0x7
	.long	0x263
	.byte	0
	.uleb128 0xf
	.long	.LASF59
	.value	0x23f
	.long	0x6b
	.long	0x30c
	.uleb128 0x7
	.long	0x263
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.value	0x30b
	.long	0x6b
	.long	0x32b
	.uleb128 0x7
	.long	0x263
	.uleb128 0x7
	.long	0x72
	.uleb128 0x7
	.long	0x6b
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x23
	.long	0x6b
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x406
	.uleb128 0x10
	.string	"ch"
	.byte	0x23
	.byte	0xe
	.long	0x6b
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x13
	.quad	.LVL25
	.long	0x2cc
	.uleb128 0x3
	.quad	.LVL26
	.long	0x672
	.long	0x38f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data19
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL27
	.long	0x67b
	.long	0x3b4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL28
	.long	0x684
	.long	0x3cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL29
	.long	0x67b
	.long	0x3f1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL30
	.long	0x68d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x1d
	.long	0x6b
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e1
	.uleb128 0x10
	.string	"ch"
	.byte	0x1d
	.byte	0x10
	.long	0x6b
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x13
	.quad	.LVL17
	.long	0x2cc
	.uleb128 0x3
	.quad	.LVL18
	.long	0x672
	.long	0x46a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL19
	.long	0x67b
	.long	0x48f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data15
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL20
	.long	0x684
	.long	0x4a7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL21
	.long	0x67b
	.long	0x4cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL22
	.long	0x68d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x17
	.long	0x6b
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x514
	.uleb128 0x10
	.string	"ch"
	.byte	0x17
	.byte	0x11
	.long	0x6b
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x11
	.long	0x6b
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x57c
	.uleb128 0xd
	.long	.LASF65
	.byte	0x11
	.byte	0x11
	.long	0x263
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xd
	.long	.LASF66
	.byte	0x11
	.byte	0x1e
	.long	0x72
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0xc
	.quad	.LVL13
	.long	0x30c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.long	0x6b
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x672
	.uleb128 0xd
	.long	.LASF65
	.byte	0x7
	.byte	0xe
	.long	0x263
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xd
	.long	.LASF68
	.byte	0x7
	.byte	0x1b
	.long	0x72
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0xa
	.byte	0x7
	.long	0x6b
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x3
	.quad	.LVL1
	.long	0x30c
	.long	0x5f7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3
	.quad	.LVL2
	.long	0x2f7
	.long	0x60f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL4
	.long	0x2dd
	.long	0x62d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL5
	.long	0x30c
	.long	0x650
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.quad	.LVL11
	.long	0x696
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.long	.LASF71
	.uleb128 0x9
	.long	.LASF70
	.long	.LASF72
	.uleb128 0x9
	.long	.LASF73
	.long	.LASF74
	.uleb128 0x9
	.long	.LASF75
	.long	.LASF76
	.uleb128 0x9
	.long	.LASF77
	.long	.LASF78
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS7:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL25-1-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LFE29-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LFE28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LFE27-.Ltext0
	.uleb128 0x3
	.byte	0x75
	.sleb128 48
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 .LFE26-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 .LFE26-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE25-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x4
	.byte	0x7e
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE25-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-1-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE25-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"_IO_buf_end"
.LASF70:
	.string	"__ubsan_handle_type_mismatch_v1"
.LASF29:
	.string	"_old_offset"
.LASF55:
	.string	"_IScntrl"
.LASF61:
	.string	"isident"
.LASF71:
	.string	"__builtin___ubsan_handle_pointer_overflow"
.LASF24:
	.string	"_IO_save_end"
.LASF72:
	.string	"__builtin___ubsan_handle_type_mismatch_v1"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF53:
	.string	"_ISgraph"
.LASF56:
	.string	"_ISpunct"
.LASF34:
	.string	"_offset"
.LASF73:
	.string	"__asan_report_load8"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF59:
	.string	"fgetc"
.LASF20:
	.string	"_IO_buf_base"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF49:
	.string	"_ISdigit"
.LASF38:
	.string	"_freeres_buf"
.LASF69:
	.string	"__ubsan_handle_pointer_overflow"
.LASF77:
	.string	"__ubsan_handle_negate_overflow"
.LASF54:
	.string	"_ISblank"
.LASF57:
	.string	"_ISalnum"
.LASF60:
	.string	"fseek"
.LASF51:
	.string	"_ISspace"
.LASF33:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF66:
	.string	"offset"
.LASF65:
	.string	"stream"
.LASF30:
	.string	"_cur_column"
.LASF63:
	.string	"isoctdigit"
.LASF80:
	.string	"_IO_FILE"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF35:
	.string	"_codecvt"
.LASF67:
	.string	"fpeek"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF47:
	.string	"_ISlower"
.LASF75:
	.string	"__asan_report_load2"
.LASF36:
	.string	"_wide_data"
.LASF37:
	.string	"_freeres_list"
.LASF79:
	.ascii	"GNU C17 13.3.1 202"
	.string	"40614 -mtune=generic -march=x86-64 -ggdb -Os -Og -std=gnu17 -p -fanalyzer -fsanitize=address,undefined,leak -fstack-protector-strong -fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero -fno-omit-frame-pointer -fno-common -fcf-protection"
.LASF50:
	.string	"_ISxdigit"
.LASF39:
	.string	"__pad5"
.LASF68:
	.string	"lookahead"
.LASF76:
	.string	"__builtin___asan_report_load2"
.LASF44:
	.string	"_IO_codecvt"
.LASF2:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_end"
.LASF11:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF45:
	.string	"_IO_wide_data"
.LASF23:
	.string	"_IO_backup_base"
.LASF74:
	.string	"__builtin___asan_report_load8"
.LASF28:
	.string	"_flags2"
.LASF52:
	.string	"_ISprint"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF46:
	.string	"_ISupper"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF42:
	.string	"FILE"
.LASF82:
	.string	"__ctype_b_loc"
.LASF64:
	.string	"fconsume"
.LASF48:
	.string	"_ISalpha"
.LASF58:
	.string	"ungetc"
.LASF62:
	.string	"isident_f"
.LASF78:
	.string	"__builtin___ubsan_handle_negate_overflow"
.LASF81:
	.string	"_IO_lock_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/unazed/Programming/c/ucc-0.2.0"
.LASF0:
	.string	"src/stdio-ext.c"
	.ident	"GCC: (Gentoo 13.3.1_p20240614 p17) 13.3.1 20240614"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
