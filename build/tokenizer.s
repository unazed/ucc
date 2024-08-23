	.file	"tokenizer.c"
	.text
.Ltext0:
	.file 0 "/home/unazed/Programming/c/ucc-0.2.0" "src/tokenizer.c"
	.section	.rodata
	.align 32
.LC0:
	.string	"src/tokenizer.c"
	.zero	48
	.align 32
.LC1:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;34mverbose: \033[0mfreeing tokenizer: %p\n"
	.zero	35
	.text
	.globl	tkn_free
	.type	tkn_free, @function
tkn_free:
.LASANPC53:
.LVL0:
.LFB53:
	.file 1 "src/tokenizer.c"
	.loc 1 18 1 view -0
	.cfi_startproc
	.loc 1 18 1 is_stmt 0 view .LVU1
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
	movq	%rdi, %rbx
	.loc 1 19 3 is_stmt 1 view .LVU2
	.loc 1 19 134 is_stmt 0 view .LVU3
	movl	%edi, %r13d
	.loc 1 19 3 view .LVU4
	leaq	stdout(%rip), %rdi
.LVL1:
	.loc 1 19 3 view .LVU5
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L4
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L5
.L3:
.LVL2:
.LBB6:
.LBI6:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 77 1 is_stmt 1 view .LVU6
.LBB7:
	.loc 2 79 3 view .LVU7
	.loc 2 79 10 is_stmt 0 view .LVU8
	movq	%r13, %r9
	movl	$19, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL3:
	.loc 2 79 10 view .LVU9
.LBE7:
.LBE6:
	.loc 1 20 3 is_stmt 1 view .LVU10
	movq	%rbx, %rsi
	leaq	__func__.1(%rip), %rdi
	call	__chk_free_impl@PLT
.LVL4:
	.loc 1 21 1 is_stmt 0 view .LVU11
	addq	$8, %rsp
	popq	%rbx
.LVL5:
	.loc 1 21 1 view .LVU12
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL6:
.L4:
	.cfi_restore_state
	.loc 1 19 3 view .LVU13
	call	__asan_report_load8@PLT
.LVL7:
.L5:
	leaq	.Lubsan_data11(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL8:
	jmp	.L3
	.cfi_endproc
.LFE53:
	.size	tkn_free, .-tkn_free
	.globl	tkn_process
	.type	tkn_process, @function
tkn_process:
.LASANPC55:
.LVL9:
.LFB55:
	.loc 1 31 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 31 1 is_stmt 0 view .LVU15
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
	movq	%rdi, %rbx
	.loc 1 32 3 is_stmt 1 view .LVU16
	.loc 1 32 20 discriminator 1 view .LVU17
.LBB8:
	.loc 1 32 25 discriminator 1 view .LVU18
.LVL10:
	.loc 1 32 32 is_stmt 0 discriminator 1 view .LVU19
	movl	$0, %r13d
	.loc 1 32 20 view .LVU20
	jmp	.L7
.LVL11:
.L25:
	.loc 1 33 5 is_stmt 1 view .LVU21
	.loc 1 32 143 discriminator 4 view .LVU22
	addq	$1, %r13
.LVL12:
.L7:
	.loc 1 32 85 discriminator 1 view .LVU23
	.loc 1 32 61 is_stmt 0 discriminator 1 view .LVU24
	testq	%rbx, %rbx
	je	.L8
	testb	$7, %bl
	jne	.L8
.L9:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L26
	movq	(%rbx), %r12
	.loc 1 32 43 discriminator 1 view .LVU25
	testq	%r12, %r12
	je	.L11
	testb	$7, %r12b
	jne	.L11
.L12:
	leaq	8(%r12), %rdx
	cmpq	$-8, %r12
	jnb	.L27
.L13:
	leaq	8(%r12), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L28
	movq	8(%r12), %r12
	testq	%r12, %r12
	je	.L29
.L15:
	movq	%r12, %rdi
	call	array_length@PLT
.LVL13:
	.loc 1 32 85 discriminator 1 view .LVU26
	cmpq	%rax, %r13
	jnb	.L6
	.loc 1 32 114 discriminator 3 view .LVU27
	testq	%rbx, %rbx
	je	.L17
	testb	$7, %bl
	jne	.L17
.L18:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L30
	movq	(%rbx), %r12
	.loc 1 32 99 discriminator 3 view .LVU28
	testq	%r12, %r12
	je	.L20
	testb	$7, %r12b
	jne	.L20
.L21:
	leaq	8(%r12), %rdx
	cmpq	$-8, %r12
	jnb	.L31
.L22:
	leaq	8(%r12), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L32
	movq	8(%r12), %r12
	testq	%r12, %r12
	je	.L33
.L24:
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	array_get@PLT
.LVL14:
	.loc 1 32 85 discriminator 1 view .LVU29
	testq	%rax, %rax
	jne	.L25
.LVL15:
.L6:
	.loc 1 32 85 discriminator 1 view .LVU30
.LBE8:
	.loc 1 34 1 view .LVU31
	addq	$8, %rsp
	popq	%rbx
.LVL16:
	.loc 1 34 1 view .LVU32
	popq	%r12
	popq	%r13
.LVL17:
	.loc 1 34 1 view .LVU33
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL18:
.L8:
	.cfi_restore_state
.LBB9:
	.loc 1 32 61 discriminator 1 view .LVU34
	movq	%rbx, %rsi
	leaq	.Lubsan_data17(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL19:
	jmp	.L9
.L26:
	.loc 1 32 61 discriminator 1 view .LVU35
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL20:
.L11:
	.loc 1 32 43 discriminator 1 view .LVU36
	movq	%r12, %rsi
	leaq	.Lubsan_data18(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL21:
	jmp	.L12
.L27:
	movq	%r12, %rsi
	leaq	.Lubsan_data19(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL22:
	jmp	.L13
.L28:
	call	__asan_report_load8@PLT
.LVL23:
.L29:
	leaq	.Lubsan_data13(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL24:
	jmp	.L15
.L17:
	.loc 1 32 114 discriminator 3 view .LVU37
	movq	%rbx, %rsi
	leaq	.Lubsan_data20(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL25:
	jmp	.L18
.L30:
	.loc 1 32 114 discriminator 3 view .LVU38
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL26:
.L20:
	.loc 1 32 99 discriminator 3 view .LVU39
	movq	%r12, %rsi
	leaq	.Lubsan_data21(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL27:
	jmp	.L21
.L31:
	movq	%r12, %rsi
	leaq	.Lubsan_data22(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL28:
	jmp	.L22
.L32:
	call	__asan_report_load8@PLT
.LVL29:
.L33:
	leaq	.Lubsan_data14(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL30:
	jmp	.L24
.LBE9:
	.cfi_endproc
.LFE55:
	.size	tkn_process, .-tkn_process
	.section	.rodata
	.align 32
.LC2:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;34mverbose: \033[0mcreated tokeniser: %p\n"
	.zero	35
	.text
	.globl	tkn_new
	.type	tkn_new, @function
tkn_new:
.LASANPC56:
.LVL31:
.LFB56:
	.loc 1 38 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 38 1 is_stmt 0 view .LVU41
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
	movq	%rdi, %r12
	.loc 1 39 3 is_stmt 1 view .LVU42
	.loc 1 39 21 is_stmt 0 view .LVU43
	movl	$16, %edx
	movl	$1, %esi
	leaq	__func__.0(%rip), %rdi
.LVL32:
	.loc 1 39 21 view .LVU44
	call	__chk_calloc_impl@PLT
.LVL33:
	movq	%rax, %rbx
.LVL34:
	.loc 1 40 3 is_stmt 1 view .LVU45
	.loc 1 40 20 is_stmt 0 view .LVU46
	testq	%rax, %rax
	je	.L35
	testb	$7, %al
	jne	.L35
.LVL35:
.L36:
	.loc 1 40 20 view .LVU47
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L40
	movq	%r12, (%rbx)
	.loc 1 41 3 is_stmt 1 view .LVU48
	.loc 1 41 139 is_stmt 0 view .LVU49
	movl	%ebx, %r13d
	.loc 1 41 3 view .LVU50
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L41
	.loc 1 41 3 view .LVU51
	movq	stdout(%rip), %r12
.LVL36:
	.loc 1 41 3 view .LVU52
	testq	%r12, %r12
	je	.L42
.LVL37:
.L39:
.LBB10:
.LBI10:
	.loc 2 77 1 is_stmt 1 view .LVU53
.LBB11:
	.loc 2 79 3 view .LVU54
	.loc 2 79 10 is_stmt 0 view .LVU55
	movq	%r13, %r9
	movl	$41, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL38:
	.loc 2 79 10 view .LVU56
.LBE11:
.LBE10:
	.loc 1 42 3 is_stmt 1 view .LVU57
	.loc 1 43 1 is_stmt 0 view .LVU58
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
.LVL39:
	.loc 1 43 1 view .LVU59
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL40:
.L35:
	.cfi_restore_state
	.loc 1 40 20 view .LVU60
	movq	%rbx, %rsi
	leaq	.Lubsan_data23(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL41:
	.loc 1 40 20 view .LVU61
	jmp	.L36
.L40:
	.loc 1 40 20 view .LVU62
	movq	%rbx, %rdi
	call	__asan_report_store8@PLT
.LVL42:
.L41:
	.loc 1 41 3 view .LVU63
	call	__asan_report_load8@PLT
.LVL43:
.L42:
	.loc 1 41 3 view .LVU64
	leaq	.Lubsan_data15(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL44:
	.loc 1 41 3 view .LVU65
	jmp	.L39
	.cfi_endproc
.LFE56:
	.size	tkn_new, .-tkn_new
	.section	.data.rel.local,"aw"
	.align 32
	.type	.Lubsan_data23, @object
	.size	.Lubsan_data23, 32
.Lubsan_data23:
	.quad	.LC0
	.long	40
	.long	20
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data22, @object
	.size	.Lubsan_data22, 16
.Lubsan_data22:
	.quad	.LC0
	.long	32
	.long	99
	.zero	48
	.align 32
	.type	.Lubsan_data21, @object
	.size	.Lubsan_data21, 32
.Lubsan_data21:
	.quad	.LC0
	.long	32
	.long	99
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data20, @object
	.size	.Lubsan_data20, 32
.Lubsan_data20:
	.quad	.LC0
	.long	32
	.long	114
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data19, @object
	.size	.Lubsan_data19, 16
.Lubsan_data19:
	.quad	.LC0
	.long	32
	.long	43
	.zero	48
	.align 32
	.type	.Lubsan_data18, @object
	.size	.Lubsan_data18, 32
.Lubsan_data18:
	.quad	.LC0
	.long	32
	.long	43
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type2, @object
	.size	.Lubsan_type2, 24
.Lubsan_type2:
	.value	-1
	.value	0
	.string	"'struct lexer_impl'"
	.zero	40
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data17, @object
	.size	.Lubsan_data17, 32
.Lubsan_data17:
	.quad	.LC0
	.long	32
	.long	61
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type1, @object
	.size	.Lubsan_type1, 22
.Lubsan_type1:
	.value	-1
	.value	0
	.string	"'struct tkn_impl'"
	.zero	42
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data15, @object
	.size	.Lubsan_data15, 40
.Lubsan_data15:
	.quad	.LC0
	.long	41
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data14, @object
	.size	.Lubsan_data14, 40
.Lubsan_data14:
	.quad	.LC0
	.long	32
	.long	99
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data13, @object
	.size	.Lubsan_data13, 40
.Lubsan_data13:
	.quad	.LC0
	.long	32
	.long	43
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data11, @object
	.size	.Lubsan_data11, 40
.Lubsan_data11:
	.quad	.LC0
	.long	19
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.section	.rodata
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"tkn_new"
	.zero	56
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 9
__func__.1:
	.string	"tkn_free"
	.zero	55
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC0
	.long	39
	.long	40
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC0
	.long	20
	.long	20
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"*.Lubsan_data23"
.LC4:
	.string	"*.Lubsan_data22"
.LC5:
	.string	"*.Lubsan_data21"
.LC6:
	.string	"*.Lubsan_data20"
.LC7:
	.string	"*.Lubsan_data19"
.LC8:
	.string	"*.Lubsan_data18"
.LC9:
	.string	"*.Lubsan_type2"
.LC10:
	.string	"*.Lubsan_data17"
.LC11:
	.string	"*.Lubsan_type1"
.LC12:
	.string	"*.Lubsan_data15"
.LC13:
	.string	"*.Lubsan_data14"
.LC14:
	.string	"*.Lubsan_data13"
.LC15:
	.string	"*.Lubsan_data11"
.LC16:
	.string	"__func__"
.LC17:
	.string	"*.LC1"
.LC18:
	.string	"*.LC2"
.LC19:
	.string	"*.LC0"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 1152
.LASAN0:
	.quad	.Lubsan_data23
	.quad	32
	.quad	64
	.quad	.LC3
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data22
	.quad	16
	.quad	64
	.quad	.LC4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data21
	.quad	32
	.quad	64
	.quad	.LC5
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data20
	.quad	32
	.quad	64
	.quad	.LC6
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data19
	.quad	16
	.quad	64
	.quad	.LC7
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data18
	.quad	32
	.quad	64
	.quad	.LC8
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type2
	.quad	24
	.quad	64
	.quad	.LC9
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data17
	.quad	32
	.quad	64
	.quad	.LC10
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type1
	.quad	22
	.quad	64
	.quad	.LC11
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data15
	.quad	40
	.quad	96
	.quad	.LC12
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data14
	.quad	40
	.quad	96
	.quad	.LC13
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data13
	.quad	40
	.quad	96
	.quad	.LC14
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data11
	.quad	40
	.quad	96
	.quad	.LC15
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	__func__.0
	.quad	8
	.quad	64
	.quad	.LC16
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	__func__.1
	.quad	9
	.quad	64
	.quad	.LC16
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	.LC1
	.quad	61
	.quad	96
	.quad	.LC17
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	61
	.quad	96
	.quad	.LC18
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	16
	.quad	64
	.quad	.LC19
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB57:
	.cfi_startproc
	.loc 1 43 1 is_stmt 1 view .LVU66
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$18, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB58:
	.cfi_startproc
	.loc 1 43 1 view .LVU67
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$18, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h"
	.file 6 "/usr/include/bits/types/struct_FILE.h"
	.file 7 "/usr/include/bits/types/FILE.h"
	.file 8 "include/array.h"
	.file 9 "include/lexer.h"
	.file 10 "include/tokenizer.h"
	.file 11 "include/generic.h"
	.file 12 "/usr/include/bits/stdio2-decl.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8d5
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	.LASF9
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x5f
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x5f
	.uleb128 0x1c
	.byte	0x8
	.uleb128 0x4
	.long	0x85
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x11
	.long	0x85
	.uleb128 0x7
	.long	.LASF12
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.long	0x43
	.uleb128 0x7
	.long	.LASF13
	.byte	0x5
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x12
	.long	.LASF51
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x230
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x80
	.byte	0x8
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x80
	.byte	0x10
	.uleb128 0x2
	.long	.LASF17
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x80
	.byte	0x18
	.uleb128 0x2
	.long	.LASF18
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x80
	.byte	0x20
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x80
	.byte	0x28
	.uleb128 0x2
	.long	.LASF20
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x80
	.byte	0x30
	.uleb128 0x2
	.long	.LASF21
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x80
	.byte	0x38
	.uleb128 0x2
	.long	.LASF22
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x80
	.byte	0x40
	.uleb128 0x2
	.long	.LASF23
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x80
	.byte	0x48
	.uleb128 0x2
	.long	.LASF24
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x80
	.byte	0x50
	.uleb128 0x2
	.long	.LASF25
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x80
	.byte	0x58
	.uleb128 0x2
	.long	.LASF26
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x249
	.byte	0x60
	.uleb128 0x2
	.long	.LASF27
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x24e
	.byte	0x68
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x2
	.long	.LASF29
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x2
	.long	.LASF30
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x66
	.byte	0x78
	.uleb128 0x2
	.long	.LASF31
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x2
	.long	.LASF32
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x2
	.long	.LASF33
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x253
	.byte	0x83
	.uleb128 0x2
	.long	.LASF34
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x263
	.byte	0x88
	.uleb128 0x2
	.long	.LASF35
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x72
	.byte	0x90
	.uleb128 0x2
	.long	.LASF36
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x26d
	.byte	0x98
	.uleb128 0x2
	.long	.LASF37
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x277
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x24e
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF39
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x9d
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x27c
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xa9
	.uleb128 0x1d
	.long	.LASF84
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xa
	.long	.LASF44
	.uleb128 0x4
	.long	0x244
	.uleb128 0x4
	.long	0xa9
	.uleb128 0xb
	.long	0x85
	.long	0x263
	.uleb128 0xc
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x23c
	.uleb128 0xa
	.long	.LASF45
	.uleb128 0x4
	.long	0x268
	.uleb128 0xa
	.long	.LASF46
	.uleb128 0x4
	.long	0x272
	.uleb128 0xb
	.long	0x85
	.long	0x28c
	.uleb128 0xc
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x8c
	.uleb128 0x14
	.long	0x28c
	.uleb128 0x4
	.long	0x230
	.uleb128 0x14
	.long	0x296
	.uleb128 0x1e
	.long	.LASF64
	.byte	0xd
	.byte	0x96
	.byte	0xe
	.long	0x296
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x7
	.long	.LASF49
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.long	0x2c6
	.uleb128 0x4
	.long	0x2cb
	.uleb128 0xa
	.long	.LASF50
	.uleb128 0x12
	.long	.LASF52
	.byte	0x10
	.byte	0x9
	.byte	0x9
	.byte	0x10
	.long	0x2f8
	.uleb128 0x2
	.long	.LASF53
	.byte	0x9
	.byte	0xb
	.byte	0xb
	.long	0x2ba
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0xc
	.byte	0xb
	.long	0x2ba
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x9
	.byte	0xd
	.byte	0x4
	.long	0x304
	.uleb128 0x4
	.long	0x2d0
	.uleb128 0x7
	.long	.LASF56
	.byte	0xa
	.byte	0x5
	.byte	0x1a
	.long	0x315
	.uleb128 0x4
	.long	0x31a
	.uleb128 0x12
	.long	.LASF57
	.byte	0x10
	.byte	0x1
	.byte	0xa
	.byte	0x8
	.long	0x342
	.uleb128 0x2
	.long	.LASF58
	.byte	0x1
	.byte	0xc
	.byte	0xb
	.long	0x2f8
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x1
	.byte	0xd
	.byte	0xb
	.long	0x2ba
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF60
	.byte	0xb
	.byte	0x52
	.byte	0x7
	.long	0x7e
	.long	0x362
	.uleb128 0x5
	.long	0x28c
	.uleb128 0x5
	.long	0x9d
	.uleb128 0x5
	.long	0x9d
	.byte	0
	.uleb128 0xd
	.long	.LASF61
	.byte	0x8
	.byte	0x21
	.byte	0x7
	.long	0x7e
	.long	0x37d
	.uleb128 0x5
	.long	0x2ba
	.uleb128 0x5
	.long	0x9d
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0x8
	.byte	0x24
	.byte	0x8
	.long	0x9d
	.long	0x393
	.uleb128 0x5
	.long	0x2ba
	.byte	0
	.uleb128 0xd
	.long	.LASF63
	.byte	0xc
	.byte	0x31
	.byte	0xc
	.long	0x58
	.long	0x3b4
	.uleb128 0x5
	.long	0x29b
	.uleb128 0x5
	.long	0x58
	.uleb128 0x5
	.long	0x291
	.uleb128 0x15
	.byte	0
	.uleb128 0x1f
	.long	.LASF85
	.byte	0xb
	.byte	0x50
	.byte	0x6
	.long	0x3cb
	.uleb128 0x5
	.long	0x28c
	.uleb128 0x5
	.long	0x7e
	.byte	0
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	0x309
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x532
	.uleb128 0x13
	.long	.LASF58
	.byte	0x25
	.byte	0x12
	.long	0x2f8
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x16
	.long	.LASF65
	.byte	0x27
	.byte	0x9
	.long	0x309
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x17
	.long	.LASF70
	.long	0x542
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x18
	.long	0x880
	.quad	.LBI10
	.byte	.LVU53
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0x29
	.long	0x4a3
	.uleb128 0xe
	.long	0x89d
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xe
	.long	0x891
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x8
	.quad	.LVL38
	.long	0x393
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL33
	.long	0x342
	.long	0x4cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.quad	.LVL41
	.long	0x8ab
	.long	0x4f1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL42
	.long	0x8b4
	.long	0x509
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.quad	.LVL43
	.long	0x8bd
	.uleb128 0x8
	.quad	.LVL44
	.long	0x8c6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data15
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x8c
	.long	0x542
	.uleb128 0xc
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.long	0x532
	.uleb128 0x19
	.long	.LASF68
	.byte	0x1e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x73a
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1e
	.byte	0x14
	.long	0x309
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x16
	.long	.LASF67
	.byte	0x20
	.byte	0xb
	.long	0x2ba
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x21
	.long	.LLRL5
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x20
	.byte	0x20
	.long	0x9d
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x3
	.quad	.LVL13
	.long	0x37d
	.long	0x5b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL14
	.long	0x362
	.long	0x5d6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL19
	.long	0x8ab
	.long	0x5fb
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL20
	.long	0x8bd
	.long	0x613
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL21
	.long	0x8ab
	.long	0x638
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL22
	.long	0x8cf
	.long	0x65d
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.quad	.LVL23
	.long	0x8bd
	.uleb128 0x3
	.quad	.LVL24
	.long	0x8c6
	.long	0x689
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data13
	.byte	0
	.uleb128 0x3
	.quad	.LVL25
	.long	0x8ab
	.long	0x6ae
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL26
	.long	0x8bd
	.long	0x6c6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL27
	.long	0x8ab
	.long	0x6eb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL28
	.long	0x8cf
	.long	0x710
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.quad	.LVL29
	.long	0x8bd
	.uleb128 0x8
	.quad	.LVL30
	.long	0x8c6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF87
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0x75f
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x18
	.byte	0x19
	.long	0x309
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1
	.byte	0x18
	.byte	0x27
	.long	0x2ba
	.byte	0
	.uleb128 0x19
	.long	.LASF69
	.byte	0x11
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x86b
	.uleb128 0x13
	.long	.LASF66
	.byte	0x11
	.byte	0x11
	.long	0x309
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x17
	.long	.LASF70
	.long	0x87b
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x18
	.long	0x880
	.quad	.LBI6
	.byte	.LVU6
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0x13
	.long	0x81d
	.uleb128 0xe
	.long	0x89d
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xe
	.long	0x891
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x8
	.quad	.LVL3
	.long	0x393
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL4
	.long	0x3b4
	.long	0x842
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.quad	.LVL7
	.long	0x8bd
	.uleb128 0x8
	.quad	.LVL8
	.long	0x8c6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data11
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x8c
	.long	0x87b
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x86b
	.uleb128 0x24
	.long	.LASF88
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.long	0x58
	.byte	0x3
	.long	0x8ab
	.uleb128 0x10
	.long	.LASF71
	.byte	0x2
	.byte	0x4d
	.byte	0x1b
	.long	0x29b
	.uleb128 0x10
	.long	.LASF72
	.byte	0x2
	.byte	0x4d
	.byte	0x3c
	.long	0x291
	.uleb128 0x15
	.byte	0
	.uleb128 0x9
	.long	.LASF73
	.long	.LASF75
	.uleb128 0x9
	.long	.LASF74
	.long	.LASF76
	.uleb128 0x9
	.long	.LASF77
	.long	.LASF78
	.uleb128 0x9
	.long	.LASF79
	.long	.LASF80
	.uleb128 0x9
	.long	.LASF81
	.long	.LASF82
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-1-.Ltext0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL44-1-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL41-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-1-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS9:
	.uleb128 .LVU53
	.uleb128 .LVU56
.LLST9:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU53
	.uleb128 .LVU56
.LLST10:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS4:
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU29
	.uleb128 .LVU30
.LLST4:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS6:
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU33
	.uleb128 .LVU34
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU9
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU6
	.uleb128 .LVU9
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x5c
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL5:
	.byte	0x4
	.uleb128 .LBB8-.Ltext0
	.uleb128 .LBE8-.Ltext0
	.byte	0x4
	.uleb128 .LBB9-.Ltext0
	.uleb128 .LBE9-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"array_impl"
.LASF73:
	.string	"__ubsan_handle_type_mismatch_v1"
.LASF61:
	.string	"array_get"
.LASF56:
	.string	"tkn_t"
.LASF57:
	.string	"tkn_impl"
.LASF25:
	.string	"_IO_save_end"
.LASF75:
	.string	"__builtin___ubsan_handle_type_mismatch_v1"
.LASF7:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF35:
	.string	"_offset"
.LASF62:
	.string	"array_length"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF86:
	.string	"tkn_new"
.LASF53:
	.string	"memstreams"
.LASF21:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF27:
	.string	"_chain"
.LASF39:
	.string	"_freeres_buf"
.LASF81:
	.string	"__ubsan_handle_pointer_overflow"
.LASF12:
	.string	"uintptr_t"
.LASF80:
	.string	"__builtin___ubsan_handle_nonnull_arg"
.LASF55:
	.string	"lexer_t"
.LASF82:
	.string	"__builtin___ubsan_handle_pointer_overflow"
.LASF47:
	.string	"long long int"
.LASF34:
	.string	"_lock"
.LASF76:
	.string	"__builtin___asan_report_store8"
.LASF65:
	.string	"tokenizer"
.LASF31:
	.string	"_cur_column"
.LASF88:
	.string	"fprintf"
.LASF54:
	.string	"lexeme_arrays"
.LASF32:
	.string	"_vtable_offset"
.LASF30:
	.string	"_old_offset"
.LASF67:
	.string	"lexemes"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF66:
	.string	"self"
.LASF48:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF74:
	.string	"__asan_report_store8"
.LASF70:
	.string	"__func__"
.LASF22:
	.string	"_IO_buf_end"
.LASF58:
	.string	"lexer"
.LASF11:
	.string	"char"
.LASF51:
	.string	"_IO_FILE"
.LASF8:
	.string	"long int"
.LASF85:
	.string	"__chk_free_impl"
.LASF37:
	.string	"_wide_data"
.LASF38:
	.string	"_freeres_list"
.LASF83:
	.ascii	"GNU C17 13.3.1 202"
	.string	"40614 -mtune=generic -march=x86-64 -ggdb -Os -Og -std=gnu17 -p -fanalyzer -fsanitize=address,undefined,leak -fstack-protector-strong -fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero -fno-omit-frame-pointer -fno-common -fcf-protection"
.LASF87:
	.string	"tkn_process_impl"
.LASF40:
	.string	"__pad5"
.LASF3:
	.string	"short unsigned int"
.LASF72:
	.string	"__fmt"
.LASF52:
	.string	"lexer_impl"
.LASF5:
	.string	"long unsigned int"
.LASF69:
	.string	"tkn_free"
.LASF20:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF28:
	.string	"_fileno"
.LASF79:
	.string	"__ubsan_handle_nonnull_arg"
.LASF49:
	.string	"array_t"
.LASF46:
	.string	"_IO_wide_data"
.LASF59:
	.string	"tokens"
.LASF41:
	.string	"_mode"
.LASF9:
	.string	"__off_t"
.LASF24:
	.string	"_IO_backup_base"
.LASF29:
	.string	"_flags2"
.LASF45:
	.string	"_IO_codecvt"
.LASF17:
	.string	"_IO_read_base"
.LASF77:
	.string	"__asan_report_load8"
.LASF78:
	.string	"__builtin___asan_report_load8"
.LASF36:
	.string	"_codecvt"
.LASF23:
	.string	"_IO_save_base"
.LASF63:
	.string	"__fprintf_chk"
.LASF43:
	.string	"FILE"
.LASF71:
	.string	"__stream"
.LASF60:
	.string	"__chk_calloc_impl"
.LASF68:
	.string	"tkn_process"
.LASF64:
	.string	"stdout"
.LASF84:
	.string	"_IO_lock_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/unazed/Programming/c/ucc-0.2.0"
.LASF0:
	.string	"src/tokenizer.c"
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
