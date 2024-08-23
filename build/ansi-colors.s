	.file	"ansi-colors.c"
	.text
.Ltext0:
	.file 0 "/home/unazed/Programming/c/ucc-0.2.0" "src/ansi-colors.c"
	.globl	__asan_stack_malloc_1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"1 32 24 7 args:10"
	.section	.rodata
	.align 32
.LC1:
	.string	"\033[0m"
	.zero	59
	.text
	.globl	cfprintf
	.type	cfprintf, @function
cfprintf:
.LASANPC23:
.LVL0:
.LFB23:
	.file 1 "src/ansi-colors.c"
	.loc 1 8 1 view -0
	.cfi_startproc
	.loc 1 8 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %r14
	movq	%rsi, -368(%rbp)
	movq	%rdx, %r15
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	testb	%al, %al
	je	.L5
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.L5:
	leaq	-352(%rbp), %rbx
	movq	%rbx, -360(%rbp)
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	jne	.L11
.LVL1:
.L1:
	.loc 1 8 1 view .LVU2
	leaq	128(%rbx), %r12
	movq	$1102416563, (%rbx)
.LVL2:
	.loc 1 8 1 view .LVU3
	leaq	.LC0(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC23(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-218103808, 2147450884(%r13)
	movl	$-202116109, 2147450888(%r13)
	.loc 1 8 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, -232(%rbp)
	xorl	%eax, %eax
	.loc 1 9 3 is_stmt 1 view .LVU5
.LVL3:
.LBB8:
.LBI8:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 77 1 view .LVU6
.LBB9:
	.loc 2 79 3 view .LVU7
	.loc 2 79 10 is_stmt 0 view .LVU8
	movq	%r14, %rsi
	movq	-368(%rbp), %rdi
	call	fputs@PLT
.LVL4:
	.loc 2 79 10 view .LVU9
.LBE9:
.LBE8:
	.loc 1 10 3 is_stmt 1 view .LVU10
	.loc 1 10 11 is_stmt 0 discriminator 1 view .LVU11
	leaq	32(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %ecx
	leaq	55(%rbx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	andl	$7, %eax
	cmpb	%al, %dl
	setle	%sil
	testb	%dl, %dl
	setne	%al
	testb	%al, %sil
	jne	.L10
	testb	%cl, %cl
	setne	%dl
	setle	%al
	testb	%al, %dl
	jne	.L10
	pxor	%xmm0, %xmm0
	movups	%xmm0, -96(%r12)
	movq	$0, -80(%r12)
	.loc 1 11 2 is_stmt 1 view .LVU12
	movl	$24, -96(%r12)
	movl	$48, -92(%r12)
	leaq	16(%rbp), %rax
	movq	%rax, -88(%r12)
	leaq	-224(%rbp), %rax
	movq	%rax, -80(%r12)
	.loc 1 14 3 view .LVU13
	testq	%r15, %r15
	je	.L12
.L8:
.LVL5:
.LBB10:
.LBI10:
	.loc 2 106 1 view .LVU14
.LBB11:
	.loc 2 109 3 view .LVU15
	.loc 2 109 10 is_stmt 0 view .LVU16
	leaq	-96(%r12), %rcx
.LVL6:
	.loc 2 109 10 view .LVU17
	movq	%r15, %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	call	__vfprintf_chk@PLT
.LVL7:
	.loc 2 109 10 view .LVU18
.LBE11:
.LBE10:
	.loc 1 16 2 is_stmt 1 view .LVU19
	.loc 1 17 3 view .LVU20
.LBB12:
.LBI12:
	.loc 2 77 1 view .LVU21
.LBB13:
	.loc 2 79 3 view .LVU22
	.loc 2 79 10 is_stmt 0 view .LVU23
	movq	%r14, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
.LVL8:
	.loc 2 79 10 view .LVU24
.LBE13:
.LBE12:
	.loc 1 8 1 view .LVU25
	cmpq	%rbx, -360(%rbp)
	jne	.L13
	movq	$0, 2147450880(%r13)
	movl	$0, 2147450888(%r13)
.L3:
	.loc 1 18 1 view .LVU26
	movq	-232(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L14
	addq	$328, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
.LVL9:
	.loc 1 18 1 view .LVU27
	popq	%r15
.LVL10:
	.loc 1 18 1 view .LVU28
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL11:
.L11:
	.cfi_restore_state
	.loc 1 8 1 view .LVU29
	movl	$96, %edi
.LVL12:
	.loc 1 8 1 view .LVU30
	call	__asan_stack_malloc_1@PLT
.LVL13:
	.loc 1 8 1 view .LVU31
	testq	%rax, %rax
	je	.L1
	movq	%rax, %rbx
	jmp	.L1
.LVL14:
.L10:
	.loc 1 10 11 discriminator 1 view .LVU32
	movl	$24, %esi
	call	__asan_report_store_n@PLT
.LVL15:
.L12:
	.loc 1 14 3 view .LVU33
	leaq	.Lubsan_data16(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL16:
	jmp	.L8
.L13:
	.loc 1 8 1 view .LVU34
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movl	$-168430091, 2147450888(%r13)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L3
.L14:
	.loc 1 18 1 view .LVU35
	call	__stack_chk_fail@PLT
.LVL17:
	.cfi_endproc
.LFE23:
	.size	cfprintf, .-cfprintf
	.section	.rodata.str1.1
.LC2:
	.string	"1 32 24 7 args:23"
	.text
	.globl	cprintf
	.type	cprintf, @function
cprintf:
.LASANPC24:
.LVL18:
.LFB24:
	.loc 1 22 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 22 1 is_stmt 0 view .LVU37
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	testb	%al, %al
	je	.L19
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.L19:
	leaq	-352(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	jne	.L26
.LVL19:
.L15:
	.loc 1 22 1 view .LVU38
	leaq	128(%rbx), %r12
	movq	$1102416563, (%rbx)
.LVL20:
	.loc 1 22 1 view .LVU39
	leaq	.LC2(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC24(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-218103808, 2147450884(%r13)
	movl	$-202116109, 2147450888(%r13)
	.loc 1 22 1 view .LVU40
	movq	%fs:40, %rax
	movq	%rax, -232(%rbp)
	xorl	%eax, %eax
	.loc 1 23 3 is_stmt 1 view .LVU41
	.loc 1 23 11 is_stmt 0 discriminator 1 view .LVU42
	leaq	32(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %ecx
	leaq	55(%rbx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	andl	$7, %eax
	cmpb	%al, %dl
	setle	%sil
	testb	%dl, %dl
	setne	%al
	testb	%al, %sil
	jne	.L25
	testb	%cl, %cl
	setne	%dl
	setle	%al
	testb	%al, %dl
	jne	.L25
	pxor	%xmm0, %xmm0
	movups	%xmm0, -96(%r12)
	movq	$0, -80(%r12)
	.loc 1 24 2 is_stmt 1 view .LVU43
	movl	$16, -96(%r12)
	movl	$48, -92(%r12)
	leaq	16(%rbp), %rax
	movq	%rax, -88(%r12)
	leaq	-224(%rbp), %rax
	movq	%rax, -80(%r12)
	.loc 1 25 3 view .LVU44
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L27
	movq	stdout(%rip), %r14
	testq	%r14, %r14
	je	.L28
.L23:
	leaq	-96(%r12), %rcx
	movq	-368(%rbp), %rdx
	movq	-360(%rbp), %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	cfprintf
.LVL21:
	.loc 1 26 2 view .LVU45
	.loc 1 22 1 is_stmt 0 view .LVU46
	cmpq	%rbx, %r15
	jne	.L29
	movq	$0, 2147450880(%r13)
	movl	$0, 2147450888(%r13)
.L17:
	.loc 1 27 1 view .LVU47
	movq	-232(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L30
	addq	$328, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL22:
.L26:
	.cfi_restore_state
	.loc 1 22 1 view .LVU48
	movl	$96, %edi
.LVL23:
	.loc 1 22 1 view .LVU49
	call	__asan_stack_malloc_1@PLT
.LVL24:
	.loc 1 22 1 view .LVU50
	testq	%rax, %rax
	je	.L15
	movq	%rax, %rbx
	jmp	.L15
.LVL25:
.L25:
	.loc 1 23 11 discriminator 1 view .LVU51
	movl	$24, %esi
	call	__asan_report_store_n@PLT
.LVL26:
.L27:
	.loc 1 25 3 view .LVU52
	call	__asan_report_load8@PLT
.LVL27:
.L28:
	leaq	.Lubsan_data19(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL28:
	jmp	.L23
.L29:
	.loc 1 22 1 view .LVU53
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movl	$-168430091, 2147450888(%r13)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L17
.L30:
	.loc 1 27 1 view .LVU54
	call	__stack_chk_fail@PLT
.LVL29:
	.cfi_endproc
.LFE24:
	.size	cprintf, .-cprintf
	.section	.rodata
	.align 32
.LC3:
	.string	"src/ansi-colors.c"
	.zero	46
	.section	.data.rel.local,"aw"
	.align 32
	.type	.Lubsan_data19, @object
	.size	.Lubsan_data19, 40
.Lubsan_data19:
	.quad	.LC3
	.long	25
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data16, @object
	.size	.Lubsan_data16, 40
.Lubsan_data16:
	.quad	.LC3
	.long	14
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	2
	.zero	4
	.zero	56
	.section	.rodata.str1.1
.LC4:
	.string	"*.Lubsan_data19"
.LC5:
	.string	"*.Lubsan_data16"
.LC6:
	.string	"*.LC3"
.LC7:
	.string	"*.LC1"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 256
.LASAN0:
	.quad	.Lubsan_data19
	.quad	40
	.quad	96
	.quad	.LC4
	.quad	.LC3
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data16
	.quad	40
	.quad	96
	.quad	.LC5
	.quad	.LC3
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	18
	.quad	64
	.quad	.LC6
	.quad	.LC3
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	5
	.quad	64
	.quad	.LC7
	.quad	.LC3
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB25:
	.cfi_startproc
	.loc 1 27 1 is_stmt 1 view .LVU55
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$4, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB26:
	.cfi_startproc
	.loc 1 27 1 view .LVU56
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$4, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/usr/include/bits/types/struct_FILE.h"
	.file 8 "/usr/include/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "include/io.h"
	.file 11 "/usr/include/bits/stdio2-decl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x694
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1b
	.long	.LASF77
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x5f
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x5f
	.uleb128 0x1d
	.byte	0x8
	.uleb128 0x3
	.long	0x85
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x1e
	.long	0x85
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x5
	.long	.LASF13
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.long	0xa9
	.uleb128 0x1f
	.long	.LASF78
	.long	0xb2
	.uleb128 0xe
	.long	0xc2
	.long	0xc2
	.uleb128 0xf
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF79
	.byte	0x18
	.byte	0x6
	.byte	0
	.long	0xf7
	.uleb128 0xc
	.long	.LASF14
	.long	0x3c
	.byte	0
	.uleb128 0xc
	.long	.LASF15
	.long	0x3c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF16
	.long	0x7e
	.byte	0x8
	.uleb128 0xc
	.long	.LASF17
	.long	0x7e
	.byte	0x10
	.byte	0
	.uleb128 0x21
	.long	.LASF80
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x261
	.uleb128 0x1
	.long	.LASF18
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF19
	.byte	0x36
	.byte	0x9
	.long	0x80
	.byte	0x8
	.uleb128 0x1
	.long	.LASF20
	.byte	0x37
	.byte	0x9
	.long	0x80
	.byte	0x10
	.uleb128 0x1
	.long	.LASF21
	.byte	0x38
	.byte	0x9
	.long	0x80
	.byte	0x18
	.uleb128 0x1
	.long	.LASF22
	.byte	0x39
	.byte	0x9
	.long	0x80
	.byte	0x20
	.uleb128 0x1
	.long	.LASF23
	.byte	0x3a
	.byte	0x9
	.long	0x80
	.byte	0x28
	.uleb128 0x1
	.long	.LASF24
	.byte	0x3b
	.byte	0x9
	.long	0x80
	.byte	0x30
	.uleb128 0x1
	.long	.LASF25
	.byte	0x3c
	.byte	0x9
	.long	0x80
	.byte	0x38
	.uleb128 0x1
	.long	.LASF26
	.byte	0x3d
	.byte	0x9
	.long	0x80
	.byte	0x40
	.uleb128 0x1
	.long	.LASF27
	.byte	0x40
	.byte	0x9
	.long	0x80
	.byte	0x48
	.uleb128 0x1
	.long	.LASF28
	.byte	0x41
	.byte	0x9
	.long	0x80
	.byte	0x50
	.uleb128 0x1
	.long	.LASF29
	.byte	0x42
	.byte	0x9
	.long	0x80
	.byte	0x58
	.uleb128 0x1
	.long	.LASF30
	.byte	0x44
	.byte	0x16
	.long	0x27a
	.byte	0x60
	.uleb128 0x1
	.long	.LASF31
	.byte	0x46
	.byte	0x14
	.long	0x27f
	.byte	0x68
	.uleb128 0x1
	.long	.LASF32
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF33
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4a
	.byte	0xb
	.long	0x66
	.byte	0x78
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4f
	.byte	0x8
	.long	0x284
	.byte	0x83
	.uleb128 0x1
	.long	.LASF38
	.byte	0x51
	.byte	0xf
	.long	0x294
	.byte	0x88
	.uleb128 0x1
	.long	.LASF39
	.byte	0x59
	.byte	0xd
	.long	0x72
	.byte	0x90
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5b
	.byte	0x17
	.long	0x29e
	.byte	0x98
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5c
	.byte	0x19
	.long	0x2a8
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5d
	.byte	0x14
	.long	0x27f
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5f
	.byte	0xa
	.long	0x91
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF46
	.byte	0x62
	.byte	0x8
	.long	0x2ad
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF47
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xf7
	.uleb128 0x22
	.long	.LASF81
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF48
	.uleb128 0x3
	.long	0x275
	.uleb128 0x3
	.long	0xf7
	.uleb128 0xe
	.long	0x85
	.long	0x294
	.uleb128 0xf
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x26d
	.uleb128 0x10
	.long	.LASF49
	.uleb128 0x3
	.long	0x299
	.uleb128 0x10
	.long	.LASF50
	.uleb128 0x3
	.long	0x2a3
	.uleb128 0xe
	.long	0x85
	.long	0x2bd
	.uleb128 0xf
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x8c
	.uleb128 0x14
	.long	0x2bd
	.uleb128 0x5
	.long	.LASF51
	.byte	0x9
	.byte	0x35
	.byte	0x18
	.long	0x9d
	.uleb128 0x3
	.long	0x261
	.uleb128 0x14
	.long	0x2d3
	.uleb128 0x23
	.long	.LASF82
	.byte	0x9
	.byte	0x96
	.byte	0xe
	.long	0x2d3
	.uleb128 0x5
	.long	.LASF52
	.byte	0xa
	.byte	0x6
	.byte	0xf
	.long	0x2d3
	.uleb128 0x15
	.long	.LASF53
	.byte	0x31
	.long	0x58
	.long	0x314
	.uleb128 0x6
	.long	0x2d8
	.uleb128 0x6
	.long	0x58
	.uleb128 0x6
	.long	0x2c2
	.uleb128 0xd
	.byte	0
	.uleb128 0x15
	.long	.LASF54
	.byte	0x35
	.long	0x58
	.long	0x337
	.uleb128 0x6
	.long	0x2d8
	.uleb128 0x6
	.long	0x58
	.uleb128 0x6
	.long	0x2c2
	.uleb128 0x6
	.long	0x337
	.byte	0
	.uleb128 0x3
	.long	0xc2
	.uleb128 0x16
	.long	.LASF56
	.byte	0x15
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x416
	.uleb128 0x11
	.long	.LASF55
	.byte	0x15
	.byte	0x16
	.long	0x2bd
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x17
	.string	"fmt"
	.byte	0x15
	.byte	0x29
	.long	0x2bd
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xd
	.uleb128 0x18
	.long	.LASF59
	.byte	0x17
	.long	0x2c7
	.uleb128 0x8
	.quad	.LVL21
	.long	0x416
	.long	0x3b8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -376
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -384
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x7c
	.sleb128 -96
	.byte	0
	.uleb128 0x9
	.quad	.LVL24
	.long	0x651
	.uleb128 0x8
	.quad	.LVL26
	.long	0x65a
	.long	0x3dc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.quad	.LVL27
	.long	0x663
	.uleb128 0x8
	.quad	.LVL28
	.long	0x66c
	.long	0x408
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data19
	.byte	0
	.uleb128 0x9
	.quad	.LVL29
	.long	0x675
	.byte	0
	.uleb128 0x16
	.long	.LASF57
	.byte	0x7
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fb
	.uleb128 0x11
	.long	.LASF58
	.byte	0x7
	.byte	0x12
	.long	0x2e9
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.byte	0x24
	.long	0x2bd
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x17
	.string	"fmt"
	.byte	0x7
	.byte	0x37
	.long	0x2bd
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xd
	.uleb128 0x18
	.long	.LASF59
	.byte	0xa
	.long	0x2c7
	.uleb128 0x12
	.long	0x62b
	.quad	.LBI8
	.byte	.LVU6
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0x9
	.long	0x4d0
	.uleb128 0x7
	.long	0x644
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x7
	.long	0x639
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x13
	.quad	.LVL4
	.long	0x685
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -384
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x5fb
	.quad	.LBI10
	.byte	.LVU14
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0xe
	.long	0x541
	.uleb128 0x7
	.long	0x61f
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x7
	.long	0x614
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x7
	.long	0x609
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x13
	.quad	.LVL7
	.long	0x314
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x7c
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x62b
	.quad	.LBI12
	.byte	.LVU21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x11
	.long	0x5aa
	.uleb128 0x7
	.long	0x644
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x7
	.long	0x639
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x13
	.quad	.LVL8
	.long	0x68e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL13
	.long	0x651
	.uleb128 0x8
	.quad	.LVL15
	.long	0x65a
	.long	0x5ce
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.quad	.LVL16
	.long	0x66c
	.long	0x5ed
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data16
	.byte	0
	.uleb128 0x9
	.quad	.LVL17
	.long	0x675
	.byte	0
	.uleb128 0x19
	.long	.LASF63
	.byte	0x6a
	.long	0x58
	.long	0x62b
	.uleb128 0xa
	.long	.LASF60
	.byte	0x6a
	.byte	0x1c
	.long	0x2d8
	.uleb128 0xa
	.long	.LASF61
	.byte	0x6b
	.byte	0x1b
	.long	0x2c2
	.uleb128 0xa
	.long	.LASF62
	.byte	0x6b
	.byte	0x31
	.long	0x337
	.byte	0
	.uleb128 0x19
	.long	.LASF64
	.byte	0x4d
	.long	0x58
	.long	0x651
	.uleb128 0xa
	.long	.LASF60
	.byte	0x4d
	.byte	0x1b
	.long	0x2d8
	.uleb128 0xa
	.long	.LASF61
	.byte	0x4d
	.byte	0x3c
	.long	0x2c2
	.uleb128 0xd
	.byte	0
	.uleb128 0x1a
	.long	.LASF71
	.long	.LASF71
	.uleb128 0xb
	.long	.LASF65
	.long	.LASF67
	.uleb128 0xb
	.long	.LASF66
	.long	.LASF68
	.uleb128 0xb
	.long	.LASF69
	.long	.LASF70
	.uleb128 0x1a
	.long	.LASF72
	.long	.LASF72
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x9e
	.uleb128 0x3
	.byte	0x25
	.byte	0x73
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.long	.LASF74
	.uleb128 0xb
	.long	.LASF75
	.long	.LASF76
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL24-1-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LFE23-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LFE23-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 .LFE23-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU9
.LLST3:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1662
	.sleb128 0
	.byte	0
.LVUS4:
	.uleb128 .LVU6
	.uleb128 .LVU9
.LLST4:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS5:
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU18
.LLST5:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x4
	.byte	0x7c
	.sleb128 -96
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x4
	.byte	0x7c
	.sleb128 -96
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU14
	.uleb128 .LVU18
.LLST6:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS7:
	.uleb128 .LVU14
	.uleb128 .LVU18
.LLST7:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS8:
	.uleb128 .LVU21
	.uleb128 .LVU24
.LLST8:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU21
	.uleb128 .LVU24
.LLST9:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x5e
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
.LASF9:
	.string	"__off_t"
.LASF19:
	.string	"_IO_read_ptr"
.LASF31:
	.string	"_chain"
.LASF12:
	.string	"size_t"
.LASF37:
	.string	"_shortbuf"
.LASF14:
	.string	"gp_offset"
.LASF51:
	.string	"va_list"
.LASF55:
	.string	"ccode"
.LASF25:
	.string	"_IO_buf_base"
.LASF40:
	.string	"_codecvt"
.LASF67:
	.string	"__builtin___asan_report_store_n"
.LASF6:
	.string	"signed char"
.LASF76:
	.string	"__builtin_fwrite"
.LASF32:
	.string	"_fileno"
.LASF20:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF18:
	.string	"_flags"
.LASF78:
	.string	"__builtin_va_list"
.LASF26:
	.string	"_IO_buf_end"
.LASF35:
	.string	"_cur_column"
.LASF49:
	.string	"_IO_codecvt"
.LASF34:
	.string	"_old_offset"
.LASF39:
	.string	"_offset"
.LASF48:
	.string	"_IO_marker"
.LASF4:
	.string	"unsigned int"
.LASF43:
	.string	"_freeres_buf"
.LASF64:
	.string	"fprintf"
.LASF71:
	.string	"__asan_stack_malloc_1"
.LASF16:
	.string	"overflow_arg_area"
.LASF5:
	.string	"long unsigned int"
.LASF23:
	.string	"_IO_write_ptr"
.LASF74:
	.string	"__builtin_fputs"
.LASF69:
	.string	"__ubsan_handle_nonnull_arg"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"_IO_save_base"
.LASF38:
	.string	"_lock"
.LASF33:
	.string	"_flags2"
.LASF45:
	.string	"_mode"
.LASF82:
	.string	"stdout"
.LASF56:
	.string	"cprintf"
.LASF13:
	.string	"__gnuc_va_list"
.LASF24:
	.string	"_IO_write_end"
.LASF81:
	.string	"_IO_lock_t"
.LASF80:
	.string	"_IO_FILE"
.LASF54:
	.string	"__vfprintf_chk"
.LASF68:
	.string	"__builtin___asan_report_load8"
.LASF30:
	.string	"_markers"
.LASF58:
	.string	"file"
.LASF2:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF77:
	.ascii	"GNU C17 13.3.1 202"
	.string	"40614 -mtune=generic -march=x86-64 -ggdb -Os -Og -std=gnu17 -p -fanalyzer -fsanitize=address,undefined,leak -fstack-protector-strong -fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero -fno-omit-frame-pointer -fno-common -fcf-protection"
.LASF50:
	.string	"_IO_wide_data"
.LASF65:
	.string	"__asan_report_store_n"
.LASF36:
	.string	"_vtable_offset"
.LASF47:
	.string	"FILE"
.LASF17:
	.string	"reg_save_area"
.LASF53:
	.string	"__fprintf_chk"
.LASF72:
	.string	"__stack_chk_fail"
.LASF11:
	.string	"char"
.LASF60:
	.string	"__stream"
.LASF70:
	.string	"__builtin___ubsan_handle_nonnull_arg"
.LASF10:
	.string	"__off64_t"
.LASF21:
	.string	"_IO_read_base"
.LASF29:
	.string	"_IO_save_end"
.LASF62:
	.string	"__ap"
.LASF63:
	.string	"vfprintf"
.LASF61:
	.string	"__fmt"
.LASF44:
	.string	"__pad5"
.LASF46:
	.string	"_unused2"
.LASF28:
	.string	"_IO_backup_base"
.LASF15:
	.string	"fp_offset"
.LASF73:
	.string	"fputs"
.LASF75:
	.string	"fwrite"
.LASF42:
	.string	"_freeres_list"
.LASF52:
	.string	"fptr_t"
.LASF41:
	.string	"_wide_data"
.LASF59:
	.string	"args"
.LASF57:
	.string	"cfprintf"
.LASF22:
	.string	"_IO_write_base"
.LASF79:
	.string	"__va_list_tag"
.LASF66:
	.string	"__asan_report_load8"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/unazed/Programming/c/ucc-0.2.0"
.LASF0:
	.string	"src/ansi-colors.c"
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
