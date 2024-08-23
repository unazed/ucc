	.file	"diagnostics.c"
	.text
.Ltext0:
	.file 0 "/home/unazed/Programming/c/ucc-0.2.0" "src/diagnostics.c"
	.section	.rodata
	.align 32
.LC0:
	.string	"\033[1;36mnote:\033[0m"
	.zero	47
	.align 32
.LC1:
	.string	"\033[1;36mwarning:\033[0m"
	.zero	44
	.align 32
.LC2:
	.string	"\033[1;31merror:\033[0m"
	.zero	46
	.text
	.type	diagn_enum_to_string, @function
diagn_enum_to_string:
.LASANPC59:
.LVL0:
.LFB59:
	.file 1 "src/diagnostics.c"
	.loc 1 95 1 view -0
	.cfi_startproc
	.loc 1 95 1 is_stmt 0 view .LVU1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
1:	call	*mcount@GOTPCREL(%rip)
	.loc 1 96 3 is_stmt 1 view .LVU2
	cmpl	$1, %edi
	je	.L3
	cmpl	$2, %edi
	jne	.L6
	leaq	.LC0(%rip), %rax
.L1:
	.loc 1 107 1 is_stmt 0 view .LVU3
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L6:
	.cfi_restore_state
	.loc 1 96 3 view .LVU4
	testl	%edi, %edi
	jne	.L7
	.loc 1 101 14 view .LVU5
	leaq	.LC1(%rip), %rax
	jmp	.L1
.L7:
	.loc 1 105 7 is_stmt 1 view .LVU6
	call	__asan_handle_no_return@PLT
.LVL1:
	.loc 1 105 7 is_stmt 0 view .LVU7
	leaq	.Lubsan_data10(%rip), %rdi
	call	__ubsan_handle_builtin_unreachable@PLT
.LVL2:
.L3:
	.loc 1 103 14 view .LVU8
	leaq	.LC2(%rip), %rax
	jmp	.L1
	.cfi_endproc
.LFE59:
	.size	diagn_enum_to_string, .-diagn_enum_to_string
	.section	.rodata
	.align 32
.LC3:
	.string	"\033[1;36m"
	.zero	56
	.align 32
.LC4:
	.string	"\033[1;31m"
	.zero	56
	.text
	.type	diagn_enum_ansi_code, @function
diagn_enum_ansi_code:
.LASANPC58:
.LVL3:
.LFB58:
	.loc 1 79 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 79 1 is_stmt 0 view .LVU10
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
1:	call	*mcount@GOTPCREL(%rip)
	.loc 1 80 3 is_stmt 1 view .LVU11
	cmpl	$1, %edi
	je	.L10
	cmpl	$2, %edi
	je	.L11
	testl	%edi, %edi
	jne	.L13
	leaq	.LC3(%rip), %rax
	jmp	.L8
.L13:
	.loc 1 89 7 view .LVU12
	call	__asan_handle_no_return@PLT
.LVL4:
	.loc 1 89 7 is_stmt 0 view .LVU13
	leaq	.Lubsan_data9(%rip), %rdi
	call	__ubsan_handle_builtin_unreachable@PLT
.LVL5:
.L10:
	.loc 1 87 14 view .LVU14
	leaq	.LC4(%rip), %rax
	jmp	.L8
.L11:
	.loc 1 80 3 view .LVU15
	leaq	.LC3(%rip), %rax
.L8:
	.loc 1 91 1 view .LVU16
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	diagn_enum_ansi_code, .-diagn_enum_ansi_code
	.type	diagn_lineno, @function
diagn_lineno:
.LASANPC61:
.LVL6:
.LFB61:
	.loc 1 130 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 130 1 is_stmt 0 view .LVU18
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
	subq	$8, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %r12
	movq	%rsi, %r14
	.loc 1 131 3 is_stmt 1 view .LVU19
.LVL7:
	.loc 1 132 3 view .LVU20
.LBB34:
	.loc 1 132 8 view .LVU21
	.loc 1 132 15 is_stmt 0 view .LVU22
	movl	$0, %ebx
.LBE34:
	.loc 1 131 12 view .LVU23
	movl	$1, %r15d
.LBB35:
	.loc 1 132 3 view .LVU24
	jmp	.L15
.LVL8:
.L16:
	.loc 1 133 14 view .LVU25
	cmpq	%rdx, %r12
	jb	.L18
.L17:
	.loc 1 133 14 view .LVU26
	movq	%r12, %r13
	addq	%rbx, %r13
	je	.L23
.L19:
	.loc 1 133 14 view .LVU27
	addq	$1, %rbx
.LVL9:
	.loc 1 133 14 view .LVU28
	movq	%r13, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	movq	%r13, %rdx
	andl	$7, %edx
	cmpb	%dl, %al
	jg	.L20
	testb	%al, %al
	jne	.L24
.L20:
	.loc 1 133 8 view .LVU29
	cmpb	$10, 0(%r13)
	je	.L25
.LVL10:
.L15:
	.loc 1 132 24 is_stmt 1 discriminator 1 view .LVU30
	cmpq	%r14, %rbx
	jnb	.L26
	.loc 1 133 5 view .LVU31
	.loc 1 133 14 is_stmt 0 view .LVU32
	leaq	(%r12,%rbx), %rdx
	testq	%rbx, %rbx
	js	.L16
	cmpq	%r12, %rdx
	jnb	.L17
.L18:
	movq	%r12, %rsi
	leaq	.Lubsan_data49(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL11:
	jmp	.L17
.L23:
	.loc 1 133 14 view .LVU33
	movl	$0, %esi
	leaq	.Lubsan_data50(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL12:
	jmp	.L19
.LVL13:
.L24:
	.loc 1 133 14 view .LVU34
	movq	%r13, %rdi
	call	__asan_report_load1@PLT
.LVL14:
.L25:
	.loc 1 134 7 is_stmt 1 view .LVU35
	.loc 1 134 14 is_stmt 0 view .LVU36
	addq	$1, %r15
.LVL15:
	.loc 1 134 14 view .LVU37
	jmp	.L15
.LVL16:
.L26:
	.loc 1 134 14 view .LVU38
.LBE35:
	.loc 1 135 3 is_stmt 1 view .LVU39
	.loc 1 136 1 is_stmt 0 view .LVU40
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
.LVL17:
	.loc 1 136 1 view .LVU41
	popq	%r12
.LVL18:
	.loc 1 136 1 view .LVU42
	popq	%r13
	popq	%r14
.LVL19:
	.loc 1 136 1 view .LVU43
	popq	%r15
.LVL20:
	.loc 1 136 1 view .LVU44
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	diagn_lineno, .-diagn_lineno
	.section	.rodata
	.align 32
.LC5:
	.string	"multichar"
	.zero	54
	.align 32
.LC6:
	.string	"0"
	.zero	62
	.align 32
.LC7:
	.string	"src/diagnostics.c"
	.zero	46
	.align 32
.LC8:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;31merror: \033[0m\033[1;37mAssertion failed: \033[0m%s\n"
	.zero	59
	.align 32
.LC9:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;31merror: \033[0mUnknown warning name \"%s\", maybe you spelled it wrong?\n"
	.zero	36
	.text
	.type	diagn_is_warn_enabled, @function
diagn_is_warn_enabled:
.LASANPC56:
.LVL21:
.LFB56:
	.loc 1 46 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 46 1 is_stmt 0 view .LVU46
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %rbx
	movq	%rsi, %r12
	.loc 1 47 3 is_stmt 1 view .LVU47
	.loc 1 47 8 is_stmt 0 view .LVU48
	testq	%rsi, %rsi
	je	.L42
.LVL22:
.L28:
	.loc 1 47 8 view .LVU49
	leaq	.LC5(%rip), %rsi
	movq	%r12, %rdi
	call	strcmp@PLT
.LVL23:
	.loc 1 47 6 discriminator 1 view .LVU50
	testl	%eax, %eax
	jne	.L29
	.loc 1 48 5 is_stmt 1 view .LVU51
	.loc 1 48 16 is_stmt 0 view .LVU52
	testq	%rbx, %rbx
	je	.L30
	testb	$7, %bl
	jne	.L30
.L31:
	leaq	16(%rbx), %rdx
	cmpq	$-16, %rbx
	jnb	.L43
.L32:
	leaq	16(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L44
	movq	16(%rbx), %rbx
.LVL24:
	.loc 1 48 39 view .LVU53
	testq	%rbx, %rbx
	je	.L34
	testb	$7, %bl
	jne	.L34
.LVL25:
.L35:
	.loc 1 48 39 view .LVU54
	movq	%rbx, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L36
	jle	.L45
.L36:
	movzbl	(%rbx), %eax
	andl	$1, %eax
	.loc 1 51 1 view .LVU55
	popq	%rbx
	popq	%r12
.LVL26:
	.loc 1 51 1 view .LVU56
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL27:
.L42:
	.cfi_restore_state
	.loc 1 47 8 view .LVU57
	leaq	.Lubsan_data13(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL28:
	.loc 1 47 8 view .LVU58
	jmp	.L28
.L30:
	.loc 1 48 16 view .LVU59
	movq	%rbx, %rsi
	leaq	.Lubsan_data51(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL29:
	jmp	.L31
.L43:
	.loc 1 48 16 view .LVU60
	movq	%rbx, %rsi
	leaq	.Lubsan_data52(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL30:
	jmp	.L32
.L44:
	.loc 1 48 16 view .LVU61
	call	__asan_report_load8@PLT
.LVL31:
.L34:
	.loc 1 48 39 view .LVU62
	movq	%rbx, %rsi
	leaq	.Lubsan_data53(%rip), %rdi
.LVL32:
	.loc 1 48 39 view .LVU63
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL33:
	jmp	.L35
.L45:
	movq	%rbx, %rdi
	call	__asan_report_load1@PLT
.LVL34:
.L29:
	.loc 1 49 3 is_stmt 1 view .LVU64
	.loc 1 49 15 discriminator 1 view .LVU65
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L46
	movq	stderr(%rip), %rbx
.LVL35:
	.loc 1 49 15 is_stmt 0 discriminator 1 view .LVU66
	testq	%rbx, %rbx
	je	.L47
.L38:
.LVL36:
.LBB36:
.LBI36:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 77 1 is_stmt 1 view .LVU67
.LBB37:
	.loc 2 79 3 view .LVU68
	.loc 2 79 10 is_stmt 0 view .LVU69
	leaq	.LC6(%rip), %r9
	movl	$49, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL37:
	.loc 2 79 10 view .LVU70
.LBE37:
.LBE36:
	.loc 1 49 144 is_stmt 1 discriminator 1 view .LVU71
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L48
	movq	stderr(%rip), %rbx
	testq	%rbx, %rbx
	je	.L49
.L40:
.LVL38:
.LBB38:
.LBI38:
	.loc 2 77 1 view .LVU72
.LBB39:
	.loc 2 79 3 view .LVU73
	.loc 2 79 10 is_stmt 0 view .LVU74
	movq	%r12, %r9
	movl	$49, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL39:
	.loc 2 79 10 view .LVU75
.LBE39:
.LBE38:
	.loc 1 49 155 is_stmt 1 discriminator 2 view .LVU76
	call	__asan_handle_no_return@PLT
.LVL40:
	movl	$1, %edi
	call	exit@PLT
.LVL41:
.L46:
	.loc 1 49 15 is_stmt 0 discriminator 1 view .LVU77
	call	__asan_report_load8@PLT
.LVL42:
.L47:
	.loc 1 49 15 discriminator 1 view .LVU78
	leaq	.Lubsan_data15(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL43:
	jmp	.L38
.L48:
	.loc 1 49 144 discriminator 1 view .LVU79
	call	__asan_report_load8@PLT
.LVL44:
.L49:
	leaq	.Lubsan_data17(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL45:
	jmp	.L40
	.cfi_endproc
.LFE56:
	.size	diagn_is_warn_enabled, .-diagn_is_warn_enabled
	.type	diagn_line_start_offset, @function
diagn_line_start_offset:
.LASANPC60:
.LVL46:
.LFB60:
	.loc 1 111 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 111 1 is_stmt 0 view .LVU81
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
	subq	$8, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %r12
	movq	%rsi, %r15
	.loc 1 112 3 is_stmt 1 view .LVU82
.LVL47:
	.loc 1 113 3 view .LVU83
.LBB40:
	.loc 1 113 8 view .LVU84
	.loc 1 113 15 is_stmt 0 view .LVU85
	movl	$0, %r14d
.LBE40:
	.loc 1 112 12 view .LVU86
	movl	$0, %r13d
.LBB43:
	.loc 1 113 3 view .LVU87
	jmp	.L51
.LVL48:
.L52:
.LBB41:
	.loc 1 115 28 view .LVU88
	cmpq	%rdx, %r12
	jb	.L54
.L53:
	.loc 1 115 13 view .LVU89
	addq	%r12, %rbx
	je	.L75
.L55:
	movq	%rbx, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	movq	%rbx, %rdx
	andl	$7, %edx
	cmpb	%dl, %al
	jg	.L56
	testb	%al, %al
	jne	.L76
.L56:
.LVL49:
	.loc 1 116 5 is_stmt 1 view .LVU90
	.loc 1 116 8 is_stmt 0 view .LVU91
	cmpb	$10, (%rbx)
	je	.L59
	.loc 1 118 5 is_stmt 1 view .LVU92
	.loc 1 118 11 is_stmt 0 view .LVU93
	addq	$1, %r13
.LVL50:
	.loc 1 118 11 view .LVU94
.LBE41:
	.loc 1 113 39 is_stmt 1 discriminator 2 view .LVU95
	addq	$1, %r14
.LVL51:
.L51:
	.loc 1 113 24 discriminator 1 view .LVU96
	cmpq	%r15, %r14
	jnb	.L59
.LBB42:
	.loc 1 115 5 view .LVU97
	.loc 1 115 28 is_stmt 0 view .LVU98
	movq	%r12, %rdx
	subq	%r14, %rdx
	movq	%r14, %rbx
	negq	%rbx
	js	.L52
	cmpq	%r12, %rdx
	jnb	.L53
.L54:
	movq	%r12, %rsi
	leaq	.Lubsan_data54(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL52:
	jmp	.L53
.L75:
	.loc 1 115 13 view .LVU99
	movl	$0, %esi
	leaq	.Lubsan_data55(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL53:
	jmp	.L55
.L76:
	movq	%rbx, %rdi
	call	__asan_report_load1@PLT
.LVL54:
.L60:
	.loc 1 115 13 view .LVU100
.LBE42:
.LBE43:
	.loc 1 122 11 discriminator 1 view .LVU101
	movq	%rbx, %rsi
	leaq	.Lubsan_data56(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL55:
	jmp	.L61
.L82:
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL56:
.L63:
	.loc 1 122 17 discriminator 1 view .LVU102
	cmpq	%rdx, %r12
	jb	.L65
.L64:
	.loc 1 122 9 discriminator 1 view .LVU103
	addq	%r12, %rbx
	je	.L77
.L66:
	movq	%rbx, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	movq	%rbx, %rdx
	andl	$7, %edx
	cmpb	%dl, %al
	jg	.L67
	testb	%al, %al
	jne	.L78
.L67:
	.loc 1 122 30 discriminator 1 view .LVU104
	movzbl	(%rbx), %ebx
	.loc 1 122 29 discriminator 1 view .LVU105
	addq	%rbx, %rbx
	leaq	(%r14,%rbx), %rdx
	cmpq	%r14, %rdx
	jb	.L79
.L69:
	addq	%r14, %rbx
	je	.L71
	testb	$1, %bl
	jne	.L71
.L72:
	movq	%rbx, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %edx
	movq	%rbx, %rax
	andl	$7, %eax
	addl	$1, %eax
	cmpb	%dl, %al
	jl	.L73
	testb	%dl, %dl
	jne	.L80
.L73:
	movzwl	(%rbx), %eax
	.loc 1 122 9 discriminator 1 view .LVU106
	testb	$32, %ah
	je	.L81
	.loc 1 123 5 is_stmt 1 view .LVU107
	.loc 1 123 11 is_stmt 0 view .LVU108
	subq	$1, %r13
.LVL57:
.L59:
	.loc 1 122 9 is_stmt 1 view .LVU109
	.loc 1 122 12 is_stmt 0 view .LVU110
	call	__ctype_b_loc@PLT
.LVL58:
	movq	%rax, %rbx
	.loc 1 122 11 discriminator 1 view .LVU111
	testq	%rax, %rax
	je	.L60
	.loc 1 122 11 discriminator 1 view .LVU112
	testb	$7, %al
	jne	.L60
.L61:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L82
	movq	(%rbx), %r14
	.loc 1 122 17 discriminator 1 view .LVU113
	movq	%r12, %rdx
	subq	%r13, %rdx
	movq	%r13, %rbx
	negq	%rbx
	js	.L63
	cmpq	%r12, %rdx
	jnb	.L64
.L65:
	movq	%r12, %rsi
	leaq	.Lubsan_data57(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL59:
	jmp	.L64
.L77:
	.loc 1 122 9 discriminator 1 view .LVU114
	movl	$0, %esi
	leaq	.Lubsan_data58(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL60:
	jmp	.L66
.L78:
	movq	%rbx, %rdi
	call	__asan_report_load1@PLT
.LVL61:
.L79:
	.loc 1 122 29 discriminator 1 view .LVU115
	movq	%r14, %rsi
	leaq	.Lubsan_data59(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL62:
	jmp	.L69
.L71:
	movq	%rbx, %rsi
	leaq	.Lubsan_data60(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL63:
	jmp	.L72
.L80:
	movq	%rbx, %rdi
	call	__asan_report_load2@PLT
.LVL64:
.L81:
	.loc 1 125 3 is_stmt 1 view .LVU116
	.loc 1 126 1 is_stmt 0 view .LVU117
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
.LVL65:
	.loc 1 126 1 view .LVU118
	popq	%r13
.LVL66:
	.loc 1 126 1 view .LVU119
	popq	%r14
	popq	%r15
.LVL67:
	.loc 1 126 1 view .LVU120
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	diagn_line_start_offset, .-diagn_line_start_offset
	.section	.rodata
	.align 32
.LC10:
	.string	"%s:%lu:%lu: %s %s\n"
	.zero	45
	.align 32
.LC11:
	.string	"%*lu |  %.*s"
	.zero	51
	.align 32
.LC12:
	.string	"\n%*c |  "
	.zero	55
	.align 32
.LC13:
	.string	"(... %lu lines)"
	.zero	48
	.align 32
.LC14:
	.string	"\n%*lu |  "
	.zero	54
	.align 32
.LC15:
	.string	"%c"
	.zero	61
	.text
	.type	diagn_flush_single, @function
diagn_flush_single:
.LASANPC62:
.LVL68:
.LFB62:
	.loc 1 140 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 140 1 is_stmt 0 view .LVU122
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
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %r13
	movq	%rsi, -56(%rbp)
	movq	%rdx, %rbx
	.loc 1 141 3 is_stmt 1 view .LVU123
	.loc 1 141 30 is_stmt 0 view .LVU124
	testq	%rdi, %rdi
	je	.L84
	testb	$7, %dil
	jne	.L84
.LVL69:
.L85:
	.loc 1 141 30 view .LVU125
	movq	%r13, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L165
	movq	0(%r13), %r12
	.loc 1 141 48 view .LVU126
	testq	%rbx, %rbx
	je	.L87
	testb	$7, %bl
	jne	.L87
.L88:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L166
	movq	(%rbx), %r14
	.loc 1 141 56 view .LVU127
	testq	%r14, %r14
	je	.L90
	testb	$7, %r14b
	jne	.L90
.L91:
	leaq	8(%r14), %rdx
	cmpq	$-8, %r14
	jnb	.L167
.L92:
	leaq	8(%r14), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L168
	movq	8(%r14), %r15
	.loc 1 141 12 view .LVU128
	leaq	(%r12,%r15), %rdx
	testq	%r15, %r15
	js	.L94
	cmpq	%r12, %rdx
	jnb	.L95
.L96:
	movq	%r12, %rsi
	leaq	.Lubsan_data65(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL70:
	jmp	.L95
.LVL71:
.L84:
	.loc 1 141 30 view .LVU129
	movq	%r13, %rsi
.LVL72:
	.loc 1 141 30 view .LVU130
	leaq	.Lubsan_data61(%rip), %rdi
.LVL73:
	.loc 1 141 30 view .LVU131
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL74:
	.loc 1 141 30 view .LVU132
	jmp	.L85
.L165:
	.loc 1 141 30 view .LVU133
	movq	%r13, %rdi
	call	__asan_report_load8@PLT
.LVL75:
.L87:
	.loc 1 141 48 view .LVU134
	movq	%rbx, %rsi
	leaq	.Lubsan_data62(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL76:
	jmp	.L88
.L166:
	.loc 1 141 48 view .LVU135
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL77:
.L90:
	.loc 1 141 56 view .LVU136
	movq	%r14, %rsi
	leaq	.Lubsan_data63(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL78:
	jmp	.L91
.L167:
	movq	%r14, %rsi
	leaq	.Lubsan_data64(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL79:
	jmp	.L92
.L168:
	call	__asan_report_load8@PLT
.LVL80:
.L94:
	.loc 1 141 12 view .LVU137
	cmpq	%rdx, %r12
	jb	.L96
.L95:
	addq	%r15, %r12
.LVL81:
	.loc 1 142 17 is_stmt 1 view .LVU138
	.loc 1 143 22 is_stmt 0 view .LVU139
	testq	%rbx, %rbx
	je	.L97
	testb	$7, %bl
	jne	.L97
.L98:
	.loc 1 142 49 view .LVU140
	testq	%r14, %r14
	je	.L99
	testb	$7, %r14b
	jne	.L99
.L100:
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	diagn_line_start_offset
.LVL82:
	movq	%rax, %r15
.LVL83:
	.loc 1 144 17 is_stmt 1 view .LVU141
	.loc 1 144 76 is_stmt 0 view .LVU142
	testq	%rbx, %rbx
	je	.L101
	testb	$7, %bl
	jne	.L101
.LVL84:
.L102:
	.loc 1 144 76 view .LVU143
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L169
	movq	(%rbx), %r14
	.loc 1 144 39 view .LVU144
	testq	%r14, %r14
	je	.L104
	testb	$7, %r14b
	jne	.L104
.L105:
	leaq	8(%r14), %rdx
	cmpq	$-8, %r14
	jnb	.L170
.L106:
	leaq	8(%r14), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L171
	movq	8(%r14), %r14
	.loc 1 144 57 view .LVU145
	testq	%r13, %r13
	je	.L108
	testb	$7, %r13b
	jne	.L108
.L109:
	movq	%r13, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L172
	movq	0(%r13), %rdi
	.loc 1 144 39 view .LVU146
	movq	%r14, %rsi
	call	diagn_lineno
.LVL85:
	movq	%rax, -80(%rbp)
.LVL86:
	.loc 1 146 3 is_stmt 1 view .LVU147
	testq	%rbx, %rbx
	je	.L111
	testb	$7, %bl
	jne	.L111
.LVL87:
.L112:
	.loc 1 146 3 is_stmt 0 view .LVU148
	leaq	16(%rbx), %rdx
	cmpq	$-16, %rbx
	jnb	.L173
.L113:
	leaq	16(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L174
	movq	16(%rbx), %r14
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L115
	cmpb	$3, %al
	jle	.L175
.L115:
	movl	8(%rbx), %edi
	call	diagn_enum_to_string
.LVL88:
	movq	%rax, -64(%rbp)
	.loc 1 146 3 discriminator 1 view .LVU149
	testq	%r13, %r13
	je	.L116
	testb	$7, %r13b
	jne	.L116
.L117:
	leaq	24(%r13), %rdx
	cmpq	$-24, %r13
	jnb	.L176
.L118:
	leaq	24(%r13), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L177
	movq	24(%r13), %r13
.LVL89:
	.loc 1 146 3 discriminator 1 view .LVU150
	cmpq	$0, -56(%rbp)
	je	.L178
.LVL90:
.L120:
.LBB44:
.LBI44:
	.loc 2 77 1 is_stmt 1 view .LVU151
.LBB45:
	.loc 2 79 3 view .LVU152
	.loc 2 79 10 is_stmt 0 view .LVU153
	pushq	%r14
	pushq	-64(%rbp)
	movq	%r15, %r9
	movq	-80(%rbp), %r8
	movq	%r13, %rcx
	leaq	.LC10(%rip), %rdx
	movl	$2, %esi
	movq	-56(%rbp), %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL91:
	.loc 2 79 10 view .LVU154
.LBE45:
.LBE44:
	.loc 1 149 17 is_stmt 1 view .LVU155
	.loc 1 149 43 is_stmt 0 view .LVU156
	addq	$16, %rsp
	testq	%rbx, %rbx
	je	.L121
	testb	$7, %bl
	jne	.L121
.L122:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L179
	movq	(%rbx), %rsi
	.loc 1 149 29 view .LVU157
	testq	%rsi, %rsi
	je	.L124
	testb	$7, %sil
	jne	.L124
.L125:
.LVL92:
	.loc 1 150 3 is_stmt 1 view .LVU158
	movq	%r12, %rdx
	subq	%r15, %rdx
	movq	%r15, %r13
	negq	%r13
	js	.L126
	cmpq	%r12, %rdx
	jnb	.L127
.L128:
	movq	%r12, %rsi
	leaq	.Lubsan_data78(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL93:
	.loc 1 150 3 is_stmt 0 view .LVU159
	jmp	.L127
.LVL94:
.L97:
	.loc 1 143 22 view .LVU160
	movq	%rbx, %rsi
	leaq	.Lubsan_data66(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL95:
	jmp	.L98
.L99:
	.loc 1 142 49 view .LVU161
	movq	%r14, %rsi
	leaq	.Lubsan_data67(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL96:
	jmp	.L100
.LVL97:
.L101:
	.loc 1 144 76 view .LVU162
	movq	%rbx, %rsi
	leaq	.Lubsan_data68(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL98:
	.loc 1 144 76 view .LVU163
	jmp	.L102
.L169:
	.loc 1 144 76 view .LVU164
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL99:
.L104:
	.loc 1 144 39 view .LVU165
	movq	%r14, %rsi
	leaq	.Lubsan_data69(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL100:
	jmp	.L105
.L170:
	movq	%r14, %rsi
	leaq	.Lubsan_data70(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL101:
	jmp	.L106
.L171:
	call	__asan_report_load8@PLT
.LVL102:
.L108:
	.loc 1 144 57 view .LVU166
	movq	%r13, %rsi
	leaq	.Lubsan_data71(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL103:
	jmp	.L109
.L172:
	.loc 1 144 57 view .LVU167
	movq	%r13, %rdi
	call	__asan_report_load8@PLT
.LVL104:
.L111:
	.loc 1 146 3 view .LVU168
	movq	%rbx, %rsi
	leaq	.Lubsan_data72(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL105:
	.loc 1 146 3 view .LVU169
	jmp	.L112
.L173:
	.loc 1 146 3 view .LVU170
	movq	%rbx, %rsi
	leaq	.Lubsan_data73(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL106:
	jmp	.L113
.L174:
	.loc 1 146 3 view .LVU171
	call	__asan_report_load8@PLT
.LVL107:
.L175:
	call	__asan_report_load4@PLT
.LVL108:
.L116:
	.loc 1 146 3 discriminator 1 view .LVU172
	movq	%r13, %rsi
	leaq	.Lubsan_data74(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL109:
	jmp	.L117
.L176:
	.loc 1 146 3 discriminator 1 view .LVU173
	movq	%r13, %rsi
	leaq	.Lubsan_data75(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL110:
	jmp	.L118
.L177:
	.loc 1 146 3 discriminator 1 view .LVU174
	call	__asan_report_load8@PLT
.LVL111:
.L178:
	.loc 1 146 3 discriminator 1 view .LVU175
	leaq	.Lubsan_data19(%rip), %rdi
.LVL112:
	.loc 1 146 3 discriminator 1 view .LVU176
	call	__ubsan_handle_nonnull_arg@PLT
.LVL113:
	jmp	.L120
.L121:
	.loc 1 149 43 view .LVU177
	movq	%rbx, %rsi
	leaq	.Lubsan_data76(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL114:
	jmp	.L122
.L179:
	.loc 1 149 43 view .LVU178
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL115:
.L124:
	.loc 1 149 29 view .LVU179
	leaq	.Lubsan_data77(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL116:
	jmp	.L125
.LVL117:
.L126:
	.loc 1 150 3 view .LVU180
	cmpq	%rdx, %r12
	jb	.L128
.L127:
	.loc 1 150 3 view .LVU181
	addq	%r12, %r13
	cmpq	$0, -56(%rbp)
	je	.L180
.L129:
.LVL118:
.LBB46:
.LBI46:
	.loc 2 77 1 is_stmt 1 view .LVU182
.LBB47:
	.loc 2 79 3 view .LVU183
	.loc 2 79 10 is_stmt 0 view .LVU184
	subq	$8, %rsp
	pushq	%r13
	movl	%r15d, %r9d
	movq	-80(%rbp), %r8
	movl	$4, %ecx
	leaq	.LC11(%rip), %rdx
	movl	$2, %esi
	movq	-56(%rbp), %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL119:
	.loc 2 79 10 view .LVU185
.LBE47:
.LBE46:
	.loc 1 154 3 is_stmt 1 view .LVU186
	.loc 1 155 3 view .LVU187
.LBB48:
	.loc 1 155 8 view .LVU188
	.loc 1 155 3 is_stmt 0 view .LVU189
	addq	$16, %rsp
	.loc 1 155 15 view .LVU190
	movl	$0, %r13d
.LBE48:
	.loc 1 154 12 view .LVU191
	movq	$1, -64(%rbp)
.LBB60:
	.loc 1 155 3 view .LVU192
	jmp	.L130
.LVL120:
.L180:
	.loc 1 155 3 view .LVU193
.LBE60:
	.loc 1 150 3 view .LVU194
	leaq	.Lubsan_data21(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL121:
	jmp	.L129
.LVL122:
.L131:
.LBB61:
.LBB49:
	.loc 1 157 33 view .LVU195
	cmpq	%rdx, %r12
	jb	.L133
.L132:
	.loc 1 157 13 view .LVU196
	movq	%r12, %r15
	addq	%r13, %r15
	je	.L181
.L134:
	.loc 1 157 13 view .LVU197
	movq	%r15, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	movq	%r15, %rdx
	andl	$7, %edx
	cmpb	%dl, %al
	jg	.L135
	testb	%al, %al
	jne	.L182
.L135:
	movzbl	(%r15), %eax
.LVL123:
	.loc 1 158 5 is_stmt 1 view .LVU198
	.loc 1 158 8 is_stmt 0 view .LVU199
	cmpb	$10, %al
	je	.L183
	.loc 1 174 5 is_stmt 1 view .LVU200
	movzbl	%al, %r14d
	testq	%rbx, %rbx
	je	.L153
	testb	$7, %bl
	jne	.L153
.LVL124:
.L154:
	.loc 1 174 5 is_stmt 0 view .LVU201
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L155
	cmpb	$3, %al
	jle	.L184
.L155:
	movl	8(%rbx), %edi
	call	diagn_enum_ansi_code
.LVL125:
	movq	%rax, %r15
	.loc 1 174 5 discriminator 1 view .LVU202
	cmpq	$0, -56(%rbp)
	je	.L185
.L156:
	movl	%r14d, %ecx
	leaq	.LC15(%rip), %rdx
	movq	%r15, %rsi
	movq	-56(%rbp), %rdi
	movl	$0, %eax
	call	cfprintf@PLT
.LVL126:
.L152:
	.loc 1 174 5 discriminator 1 view .LVU203
.LBE49:
	.loc 1 155 49 is_stmt 1 discriminator 2 view .LVU204
	addq	$1, %r13
.LVL127:
.L130:
	.loc 1 155 24 discriminator 1 view .LVU205
	.loc 1 155 31 is_stmt 0 discriminator 1 view .LVU206
	testq	%rbx, %rbx
	je	.L157
	testb	$7, %bl
	jne	.L157
.L158:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L186
	movq	(%rbx), %r14
	.loc 1 155 39 discriminator 1 view .LVU207
	testq	%r14, %r14
	je	.L160
	testb	$7, %r14b
	jne	.L160
.L161:
	movq	%r14, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L187
	movq	(%r14), %rax
	movq	%rax, -72(%rbp)
	.loc 1 155 24 discriminator 1 view .LVU208
	cmpq	%rax, %r13
	jnb	.L148
.LBB58:
	.loc 1 157 5 is_stmt 1 view .LVU209
	.loc 1 157 33 is_stmt 0 view .LVU210
	leaq	(%r12,%r13), %rdx
	testq	%r13, %r13
	js	.L131
	cmpq	%r12, %rdx
	jnb	.L132
.L133:
	movq	%r12, %rsi
	leaq	.Lubsan_data79(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL128:
	jmp	.L132
.L181:
	.loc 1 157 13 view .LVU211
	movl	$0, %esi
	leaq	.Lubsan_data80(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL129:
	jmp	.L134
.L182:
	.loc 1 157 13 view .LVU212
	movq	%r15, %rdi
	call	__asan_report_load1@PLT
.LVL130:
.L183:
	.loc 1 160 7 is_stmt 1 view .LVU213
	.loc 1 160 10 is_stmt 0 view .LVU214
	addq	$1, -64(%rbp)
.LVL131:
	.loc 1 160 10 view .LVU215
	movq	-64(%rbp), %rax
.LVL132:
	.loc 1 160 10 view .LVU216
	cmpq	$3, %rax
	jbe	.L137
.LBB50:
	.loc 1 162 23 is_stmt 1 view .LVU217
	.loc 1 162 79 is_stmt 0 view .LVU218
	testq	%rbx, %rbx
	je	.L138
	testb	$7, %bl
	jne	.L138
.LVL133:
.L139:
	.loc 1 162 87 view .LVU219
	testq	%r14, %r14
	je	.L140
	testb	$7, %r14b
	jne	.L140
.L141:
	leaq	8(%r14), %rdx
	cmpq	$-8, %r14
	jnb	.L188
.L142:
	leaq	8(%r14), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L189
	movq	8(%r14), %r13
.LVL134:
	.loc 1 162 108 view .LVU220
	testq	%rbx, %rbx
	je	.L144
	testb	$7, %bl
	jne	.L144
.L145:
	.loc 1 162 116 view .LVU221
	testq	%r14, %r14
	je	.L146
	testb	$7, %r14b
	jne	.L146
.L147:
	.loc 1 162 48 view .LVU222
	movq	-72(%rbp), %rsi
	addq	%r13, %rsi
	movq	%r12, %rdi
	call	diagn_lineno
.LVL135:
	.loc 1 164 9 is_stmt 1 view .LVU223
	.loc 1 164 12 is_stmt 0 view .LVU224
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
.LVL136:
	.loc 1 164 12 view .LVU225
	movq	%rax, %rbx
.LVL137:
	.loc 1 164 12 view .LVU226
	je	.L148
	.loc 1 166 9 is_stmt 1 view .LVU227
	cmpq	$0, -56(%rbp)
	je	.L190
.LVL138:
.L149:
.LBB51:
.LBI51:
	.loc 2 77 1 view .LVU228
.LBB52:
	.loc 2 79 3 view .LVU229
	.loc 2 79 10 is_stmt 0 view .LVU230
	movl	$32, %r8d
	movl	$4, %ecx
	leaq	.LC12(%rip), %rdx
	movl	$2, %esi
	movq	-56(%rbp), %r15
	movq	%r15, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL139:
	.loc 2 79 10 view .LVU231
.LBE52:
.LBE51:
	.loc 1 167 9 is_stmt 1 view .LVU232
	testq	%r15, %r15
	je	.L191
.L150:
.LVL140:
.LBB53:
.LBI53:
	.loc 2 77 1 view .LVU233
.LBB54:
	.loc 2 79 3 view .LVU234
	.loc 2 79 10 is_stmt 0 view .LVU235
	movq	%rbx, %rcx
	leaq	.LC13(%rip), %rdx
	movl	$2, %esi
	movq	-56(%rbp), %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL141:
	.loc 2 79 10 view .LVU236
.LBE54:
.LBE53:
	.loc 1 169 9 is_stmt 1 view .LVU237
.L148:
	.loc 1 169 9 is_stmt 0 view .LVU238
.LBE50:
.LBE58:
.LBE61:
	.loc 1 177 3 is_stmt 1 view .LVU239
	cmpq	$0, -56(%rbp)
	je	.L192
.L164:
.LVL142:
.LBB62:
.LBI62:
	.loc 2 77 1 view .LVU240
.LBB63:
	.loc 2 79 3 view .LVU241
	.loc 2 79 10 is_stmt 0 view .LVU242
	movq	-56(%rbp), %rsi
	movl	$10, %edi
	call	fputc@PLT
.LVL143:
	.loc 2 79 10 view .LVU243
.LBE63:
.LBE62:
	.loc 1 178 1 view .LVU244
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
.LVL144:
	.loc 1 178 1 view .LVU245
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LVL145:
	.loc 1 178 1 view .LVU246
	ret
.LVL146:
.L138:
	.cfi_restore_state
.LBB64:
.LBB59:
.LBB55:
	.loc 1 162 79 view .LVU247
	movq	%rbx, %rsi
	leaq	.Lubsan_data81(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL147:
	.loc 1 162 79 view .LVU248
	jmp	.L139
.L140:
	.loc 1 162 87 view .LVU249
	movq	%r14, %rsi
	leaq	.Lubsan_data82(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL148:
	jmp	.L141
.L188:
	movq	%r14, %rsi
	leaq	.Lubsan_data83(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL149:
	jmp	.L142
.L189:
	call	__asan_report_load8@PLT
.LVL150:
.L144:
	.loc 1 162 108 view .LVU250
	movq	%rbx, %rsi
	leaq	.Lubsan_data84(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL151:
	jmp	.L145
.L146:
	.loc 1 162 116 view .LVU251
	movq	%r14, %rsi
	leaq	.Lubsan_data85(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL152:
	jmp	.L147
.LVL153:
.L190:
	.loc 1 166 9 view .LVU252
	leaq	.Lubsan_data23(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL154:
	.loc 1 166 9 view .LVU253
	jmp	.L149
.L191:
	.loc 1 167 9 view .LVU254
	leaq	.Lubsan_data25(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL155:
	jmp	.L150
.LVL156:
.L137:
	.loc 1 167 9 view .LVU255
.LBE55:
	.loc 1 171 7 is_stmt 1 view .LVU256
	addq	$1, -80(%rbp)
.LVL157:
	.loc 1 171 7 is_stmt 0 view .LVU257
	cmpq	$0, -56(%rbp)
	je	.L193
.LVL158:
.L151:
.LBB56:
.LBI56:
	.loc 2 77 1 is_stmt 1 view .LVU258
.LBB57:
	.loc 2 79 3 view .LVU259
	.loc 2 79 10 is_stmt 0 view .LVU260
	movq	-80(%rbp), %r8
	movl	$4, %ecx
	leaq	.LC14(%rip), %rdx
	movl	$2, %esi
	movq	-56(%rbp), %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL159:
	.loc 2 79 10 view .LVU261
.LBE57:
.LBE56:
	.loc 1 172 7 is_stmt 1 view .LVU262
	jmp	.L152
.LVL160:
.L193:
	.loc 1 171 7 is_stmt 0 view .LVU263
	leaq	.Lubsan_data27(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL161:
	.loc 1 171 7 view .LVU264
	jmp	.L151
.LVL162:
.L153:
	.loc 1 174 5 view .LVU265
	movq	%rbx, %rsi
	leaq	.Lubsan_data86(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL163:
	.loc 1 174 5 view .LVU266
	jmp	.L154
.L184:
	.loc 1 174 5 view .LVU267
	call	__asan_report_load4@PLT
.LVL164:
.L185:
	.loc 1 174 5 discriminator 1 view .LVU268
	leaq	.Lubsan_data29(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL165:
	jmp	.L156
.LVL166:
.L157:
	.loc 1 174 5 discriminator 1 view .LVU269
.LBE59:
	.loc 1 155 31 discriminator 1 view .LVU270
	movq	%rbx, %rsi
	leaq	.Lubsan_data87(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL167:
	jmp	.L158
.L186:
	.loc 1 155 31 discriminator 1 view .LVU271
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL168:
.L160:
	.loc 1 155 39 discriminator 1 view .LVU272
	movq	%r14, %rsi
	leaq	.Lubsan_data88(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL169:
	jmp	.L161
.L187:
	movq	%r14, %rdi
	call	__asan_report_load8@PLT
.LVL170:
.L192:
	.loc 1 155 39 discriminator 1 view .LVU273
.LBE64:
	.loc 1 177 3 view .LVU274
	leaq	.Lubsan_data30(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL171:
	jmp	.L164
	.cfi_endproc
.LFE62:
	.size	diagn_flush_single, .-diagn_flush_single
	.section	.rodata
	.align 32
.LC16:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0m\tfreeing diagnostic: %p\n"
	.zero	32
	.text
	.type	diagn_free_impl, @function
diagn_free_impl:
.LASANPC64:
.LVL172:
.LFB64:
	.loc 1 201 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 201 1 is_stmt 0 view .LVU276
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
	.loc 1 202 3 is_stmt 1 view .LVU277
	.loc 1 202 142 is_stmt 0 view .LVU278
	movl	%edi, %r13d
	.loc 1 202 3 view .LVU279
	leaq	stdout(%rip), %rdi
.LVL173:
	.loc 1 202 3 view .LVU280
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L201
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L202
.L196:
.LVL174:
.LBB65:
.LBI65:
	.loc 2 77 1 is_stmt 1 view .LVU281
.LBB66:
	.loc 2 79 3 view .LVU282
	.loc 2 79 10 is_stmt 0 view .LVU283
	movq	%r13, %r9
	movl	$202, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL175:
	.loc 2 79 10 view .LVU284
.LBE66:
.LBE65:
	.loc 1 203 3 is_stmt 1 view .LVU285
	.loc 1 203 35 is_stmt 0 view .LVU286
	testq	%rbx, %rbx
	je	.L197
	testb	$7, %bl
	jne	.L197
.L198:
	leaq	16(%rbx), %rdx
	cmpq	$-16, %rbx
	jnb	.L203
.L199:
	leaq	16(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L204
	movq	16(%rbx), %rsi
	.loc 1 203 3 view .LVU287
	leaq	__func__.0(%rip), %r12
	movq	%r12, %rdi
	call	__chk_free_impl@PLT
.LVL176:
	.loc 1 204 3 is_stmt 1 view .LVU288
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	__chk_free_impl@PLT
.LVL177:
	.loc 1 205 1 is_stmt 0 view .LVU289
	addq	$8, %rsp
	popq	%rbx
.LVL178:
	.loc 1 205 1 view .LVU290
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL179:
.L201:
	.cfi_restore_state
	.loc 1 202 3 view .LVU291
	call	__asan_report_load8@PLT
.LVL180:
.L202:
	leaq	.Lubsan_data32(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL181:
	jmp	.L196
.L197:
	.loc 1 203 35 view .LVU292
	movq	%rbx, %rsi
	leaq	.Lubsan_data89(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL182:
	jmp	.L198
.L203:
	.loc 1 203 35 view .LVU293
	movq	%rbx, %rsi
	leaq	.Lubsan_data90(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL183:
	jmp	.L199
.L204:
	.loc 1 203 35 view .LVU294
	call	__asan_report_load8@PLT
.LVL184:
	.cfi_endproc
.LFE64:
	.size	diagn_free_impl, .-diagn_free_impl
	.globl	diagn_new
	.type	diagn_new, @function
diagn_new:
.LASANPC55:
.LVL185:
.LFB55:
	.loc 1 35 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 35 1 is_stmt 0 view .LVU296
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
	movq	%rdi, %r14
	movq	%rsi, %r13
	movq	%rdx, %r12
	.loc 1 36 3 is_stmt 1 view .LVU297
	.loc 1 36 19 is_stmt 0 view .LVU298
	movl	$32, %edx
.LVL186:
	.loc 1 36 19 view .LVU299
	movl	$1, %esi
.LVL187:
	.loc 1 36 19 view .LVU300
	leaq	__func__.3(%rip), %rdi
.LVL188:
	.loc 1 36 19 view .LVU301
	call	__chk_calloc_impl@PLT
.LVL189:
	movq	%rax, %rbx
.LVL190:
	.loc 1 37 3 is_stmt 1 view .LVU302
	.loc 1 37 20 is_stmt 0 view .LVU303
	testq	%rax, %rax
	je	.L206
	testb	$7, %al
	jne	.L206
.LVL191:
.L207:
	.loc 1 37 20 view .LVU304
	leaq	16(%rbx), %rdx
	cmpq	$-16, %rbx
	jnb	.L220
.L208:
	leaq	16(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L221
	movq	%r14, 16(%rbx)
	.loc 1 38 3 is_stmt 1 view .LVU305
	.loc 1 38 19 is_stmt 0 view .LVU306
	call	array_new@PLT
.LVL192:
	movq	%rax, %r14
.LVL193:
	.loc 1 38 17 discriminator 1 view .LVU307
	testq	%rbx, %rbx
	je	.L210
	testb	$7, %bl
	jne	.L210
.L211:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L222
	movq	%r14, 8(%rbx)
	.loc 1 39 3 is_stmt 1 view .LVU308
	.loc 1 39 21 is_stmt 0 view .LVU309
	testq	%rbx, %rbx
	je	.L213
	testb	$7, %bl
	jne	.L213
.L214:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L223
	movq	%r13, (%rbx)
	.loc 1 40 3 is_stmt 1 view .LVU310
	.loc 1 40 15 is_stmt 0 view .LVU311
	testq	%rbx, %rbx
	je	.L216
	.loc 1 40 15 view .LVU312
	testb	$7, %bl
	jne	.L216
.L217:
	.loc 1 40 15 view .LVU313
	leaq	24(%rbx), %rdx
	cmpq	$-24, %rbx
	jnb	.L224
.L218:
	leaq	24(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L225
	movq	%r12, 24(%rbx)
	.loc 1 41 3 is_stmt 1 view .LVU314
	.loc 1 42 1 is_stmt 0 view .LVU315
	movq	%rbx, %rax
	popq	%rbx
.LVL194:
	.loc 1 42 1 view .LVU316
	popq	%r12
.LVL195:
	.loc 1 42 1 view .LVU317
	popq	%r13
.LVL196:
	.loc 1 42 1 view .LVU318
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL197:
.L206:
	.cfi_restore_state
	.loc 1 37 20 view .LVU319
	movq	%rbx, %rsi
	leaq	.Lubsan_data91(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL198:
	.loc 1 37 20 view .LVU320
	jmp	.L207
.L220:
	.loc 1 37 20 view .LVU321
	movq	%rbx, %rsi
	leaq	.Lubsan_data92(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL199:
	jmp	.L208
.L221:
	.loc 1 37 20 view .LVU322
	call	__asan_report_store8@PLT
.LVL200:
.L210:
	.loc 1 38 17 discriminator 1 view .LVU323
	movq	%rbx, %rsi
	leaq	.Lubsan_data93(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL201:
	jmp	.L211
.L222:
	.loc 1 38 17 discriminator 1 view .LVU324
	call	__asan_report_store8@PLT
.LVL202:
.L213:
	.loc 1 39 21 view .LVU325
	movq	%rbx, %rsi
	leaq	.Lubsan_data94(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL203:
	jmp	.L214
.L223:
	.loc 1 39 21 view .LVU326
	movq	%rbx, %rdi
	call	__asan_report_store8@PLT
.LVL204:
.L216:
	.loc 1 40 15 view .LVU327
	movq	%rbx, %rsi
	leaq	.Lubsan_data95(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL205:
	jmp	.L217
.L224:
	.loc 1 40 15 view .LVU328
	movq	%rbx, %rsi
	leaq	.Lubsan_data96(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL206:
	jmp	.L218
.L225:
	.loc 1 40 15 view .LVU329
	call	__asan_report_store8@PLT
.LVL207:
	.cfi_endproc
.LFE55:
	.size	diagn_new, .-diagn_new
	.globl	__asan_stack_malloc_1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"1 32 24 4 args"
	.section	.rodata
	.align 32
.LC18:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;34mverbose: \033[0mignoring warning \"%s\" because it is disabled\n"
	.zero	44
	.align 32
.LC19:
	.string	"(vasprintf (&diagn->msg, fmt, args) > 0)"
	.zero	55
	.align 32
.LC20:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;31merror: \033[0mvasprintf() failed\n"
	.zero	40
	.text
	.globl	diagn_push
	.type	diagn_push, @function
diagn_push:
.LASANPC57:
.LVL208:
.LFB57:
	.loc 1 59 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 59 1 is_stmt 0 view .LVU331
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
	subq	$344, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %r13
	movq	%rsi, %rbx
	movl	%edx, -364(%rbp)
	movq	%rcx, -376(%rbp)
	movq	%r8, -384(%rbp)
	movq	%r9, -184(%rbp)
	testb	%al, %al
	je	.L230
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.L230:
	leaq	-352(%rbp), %r14
	movq	%r14, -360(%rbp)
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	jne	.L259
.LVL209:
.L226:
	.loc 1 59 1 view .LVU332
	leaq	128(%r14), %r12
	movq	$1102416563, (%r14)
.LVL210:
	.loc 1 59 1 view .LVU333
	leaq	.LC17(%rip), %rax
	movq	%rax, 8(%r14)
	leaq	.LASANPC57(%rip), %rax
	movq	%rax, 16(%r14)
	movq	%r14, %r15
	shrq	$3, %r15
	movl	$-235802127, 2147450880(%r15)
	movl	$-218103808, 2147450884(%r15)
	movl	$-202116109, 2147450888(%r15)
	.loc 1 59 1 view .LVU334
	movq	%fs:40, %rax
	movq	%rax, -232(%rbp)
	xorl	%eax, %eax
	.loc 1 60 3 is_stmt 1 view .LVU335
	.loc 1 60 6 is_stmt 0 view .LVU336
	testq	%rbx, %rbx
	je	.L231
	.loc 1 60 32 discriminator 1 view .LVU337
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	diagn_is_warn_enabled
.LVL211:
	.loc 1 60 28 discriminator 1 view .LVU338
	testb	%al, %al
	je	.L260
.L231:
	.loc 1 65 3 is_stmt 1 view .LVU339
	.loc 1 65 30 is_stmt 0 view .LVU340
	movl	$24, %edx
	movl	$1, %esi
	leaq	__func__.2(%rip), %rdi
	call	__chk_calloc_impl@PLT
.LVL212:
	movq	%rax, %rbx
.LVL213:
	.loc 1 66 3 is_stmt 1 view .LVU341
	.loc 1 66 17 is_stmt 0 view .LVU342
	testq	%rax, %rax
	je	.L235
	testb	$7, %al
	jne	.L235
.LVL214:
.L236:
	.loc 1 66 17 view .LVU343
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L261
	movq	-376(%rbp), %rax
	movq	%rax, (%rbx)
	.loc 1 67 3 is_stmt 1 view .LVU344
	.loc 1 67 15 is_stmt 0 view .LVU345
	testq	%rbx, %rbx
	je	.L238
	testb	$7, %bl
	jne	.L238
.L239:
	leaq	8(%rbx), %rdx
	cmpq	$-8, %rbx
	jnb	.L262
.L240:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L241
	cmpb	$3, %al
	jle	.L263
.L241:
	movl	-364(%rbp), %eax
	movl	%eax, 8(%rbx)
	.loc 1 69 3 is_stmt 1 view .LVU346
	.loc 1 69 11 is_stmt 0 discriminator 1 view .LVU347
	leaq	-96(%r12), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %ecx
	leaq	-73(%r12), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	andl	$7, %eax
	cmpb	%al, %dl
	setle	%sil
	testb	%dl, %dl
	setne	%al
	testb	%al, %sil
	jne	.L258
	testb	%cl, %cl
	setne	%dl
	setle	%al
	testb	%al, %dl
	jne	.L258
	pxor	%xmm0, %xmm0
	movups	%xmm0, -96(%r12)
	movq	$0, -80(%r12)
	.loc 1 70 2 is_stmt 1 view .LVU348
	movl	$40, -96(%r12)
	movl	$48, -92(%r12)
	leaq	16(%rbp), %rax
	movq	%rax, -88(%r12)
	leaq	-224(%rbp), %rax
	movq	%rax, -80(%r12)
	.loc 1 71 3 view .LVU349
	.loc 1 71 10 is_stmt 0 view .LVU350
	testq	%rbx, %rbx
	je	.L244
	testb	$7, %bl
	jne	.L244
.L245:
	leaq	16(%rbx), %rdx
	cmpq	$-16, %rbx
	jnb	.L264
.L246:
	leaq	-96(%r12), %rdx
	leaq	16(%rbx), %rdi
	movq	-384(%rbp), %rsi
	call	vasprintf@PLT
.LVL215:
	.loc 1 71 6 discriminator 1 view .LVU351
	testl	%eax, %eax
	jle	.L265
	.loc 1 71 6 is_stmt 1 discriminator 2 view .LVU352
	.loc 1 71 9 discriminator 2 view .LVU353
	.loc 1 72 2 view .LVU354
	.loc 1 74 3 view .LVU355
	testq	%r13, %r13
	je	.L252
	testb	$7, %r13b
	jne	.L252
.L253:
	leaq	8(%r13), %rdx
	cmpq	$-8, %r13
	jnb	.L266
.L254:
	leaq	8(%r13), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L267
	movq	8(%r13), %r12
	testq	%r12, %r12
	je	.L268
.L256:
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	array_append@PLT
.LVL216:
.L229:
	.loc 1 59 1 is_stmt 0 view .LVU356
	cmpq	%r14, -360(%rbp)
	jne	.L269
	movq	$0, 2147450880(%r15)
	movl	$0, 2147450888(%r15)
.L228:
	.loc 1 75 1 view .LVU357
	movq	-232(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L270
	addq	$344, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
.LVL217:
	.loc 1 75 1 view .LVU358
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL218:
.L259:
	.cfi_restore_state
	.loc 1 59 1 view .LVU359
	movl	$96, %edi
.LVL219:
	.loc 1 59 1 view .LVU360
	call	__asan_stack_malloc_1@PLT
.LVL220:
	.loc 1 59 1 view .LVU361
	testq	%rax, %rax
	je	.L226
	movq	%rax, %r14
	jmp	.L226
.LVL221:
.L260:
	.loc 1 62 7 is_stmt 1 view .LVU362
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L271
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L272
.L233:
.LVL222:
.LBB67:
.LBI67:
	.loc 2 77 1 view .LVU363
.LBB68:
	.loc 2 79 3 view .LVU364
	.loc 2 79 10 is_stmt 0 view .LVU365
	movq	%rbx, %r9
	movl	$62, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL223:
	.loc 2 79 10 view .LVU366
.LBE68:
.LBE67:
	.loc 1 63 7 is_stmt 1 view .LVU367
	jmp	.L229
.L271:
	.loc 1 62 7 is_stmt 0 view .LVU368
	call	__asan_report_load8@PLT
.LVL224:
.L272:
	leaq	.Lubsan_data34(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL225:
	jmp	.L233
.LVL226:
.L235:
	.loc 1 66 17 view .LVU369
	movq	%rbx, %rsi
	leaq	.Lubsan_data97(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL227:
	.loc 1 66 17 view .LVU370
	jmp	.L236
.L261:
	.loc 1 66 17 view .LVU371
	movq	%rbx, %rdi
	call	__asan_report_store8@PLT
.LVL228:
.L238:
	.loc 1 67 15 view .LVU372
	movq	%rbx, %rsi
	leaq	.Lubsan_data98(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL229:
	jmp	.L239
.L262:
	.loc 1 67 15 view .LVU373
	movq	%rbx, %rsi
	leaq	.Lubsan_data99(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL230:
	jmp	.L240
.L263:
	.loc 1 67 15 view .LVU374
	call	__asan_report_store4@PLT
.LVL231:
.L258:
	.loc 1 69 11 discriminator 1 view .LVU375
	movl	$24, %esi
	call	__asan_report_store_n@PLT
.LVL232:
.L244:
	.loc 1 71 10 view .LVU376
	movq	%rbx, %rsi
	leaq	.Lubsan_data100(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL233:
	jmp	.L245
.L264:
	.loc 1 71 10 view .LVU377
	movq	%rbx, %rsi
	leaq	.Lubsan_data101(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL234:
	jmp	.L246
.L265:
	.loc 1 71 54 is_stmt 1 discriminator 1 view .LVU378
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L273
	movq	stderr(%rip), %rbx
.LVL235:
	.loc 1 71 54 is_stmt 0 discriminator 1 view .LVU379
	testq	%rbx, %rbx
	je	.L274
.L249:
.LVL236:
.LBB69:
.LBI69:
	.loc 2 77 1 is_stmt 1 view .LVU380
.LBB70:
	.loc 2 79 3 view .LVU381
	.loc 2 79 10 is_stmt 0 view .LVU382
	leaq	.LC19(%rip), %r9
	movl	$71, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL237:
	.loc 2 79 10 view .LVU383
.LBE70:
.LBE69:
	.loc 1 71 183 is_stmt 1 discriminator 1 view .LVU384
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L275
	movq	stderr(%rip), %rbx
	testq	%rbx, %rbx
	je	.L276
.L251:
.LVL238:
.LBB71:
.LBI71:
	.loc 2 77 1 view .LVU385
.LBB72:
	.loc 2 79 3 view .LVU386
	.loc 2 79 10 is_stmt 0 view .LVU387
	movl	$71, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL239:
	.loc 2 79 10 view .LVU388
.LBE72:
.LBE71:
	.loc 1 71 106 is_stmt 1 discriminator 2 view .LVU389
	call	__asan_handle_no_return@PLT
.LVL240:
	movl	$1, %edi
	call	exit@PLT
.LVL241:
.L273:
	.loc 1 71 54 is_stmt 0 discriminator 1 view .LVU390
	call	__asan_report_load8@PLT
.LVL242:
.L274:
	.loc 1 71 54 discriminator 1 view .LVU391
	leaq	.Lubsan_data36(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL243:
	jmp	.L249
.L275:
	.loc 1 71 183 discriminator 1 view .LVU392
	call	__asan_report_load8@PLT
.LVL244:
.L276:
	leaq	.Lubsan_data38(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL245:
	jmp	.L251
.LVL246:
.L252:
	.loc 1 74 3 view .LVU393
	movq	%r13, %rsi
	leaq	.Lubsan_data102(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL247:
	jmp	.L253
.L266:
	.loc 1 74 3 view .LVU394
	movq	%r13, %rsi
	leaq	.Lubsan_data103(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL248:
	jmp	.L254
.L267:
	.loc 1 74 3 view .LVU395
	call	__asan_report_load8@PLT
.LVL249:
.L268:
	leaq	.Lubsan_data40(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL250:
	jmp	.L256
.LVL251:
.L269:
	.loc 1 59 1 view .LVU396
	movq	$1172321806, (%r14)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r15)
	movl	$-168430091, 2147450888(%r15)
	movq	120(%r14), %rax
	movb	$0, (%rax)
	jmp	.L228
.L270:
	.loc 1 75 1 view .LVU397
	call	__stack_chk_fail@PLT
.LVL252:
	.cfi_endproc
.LFE57:
	.size	diagn_push, .-diagn_push
	.section	.rodata
	.align 32
.LC21:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0mDumped %lu error(s), %lu warning(s), and %lu note(s)\n"
	.zero	40
	.text
	.globl	diagn_flush
	.type	diagn_flush, @function
diagn_flush:
.LASANPC63:
.LVL253:
.LFB63:
	.loc 1 183 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 183 1 is_stmt 0 view .LVU399
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
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %r12
	movq	%rsi, -72(%rbp)
	.loc 1 184 3 is_stmt 1 view .LVU400
.LVL254:
	.loc 1 187 3 view .LVU401
	.loc 1 187 29 discriminator 1 view .LVU402
.LBB73:
	.loc 1 187 34 discriminator 1 view .LVU403
	.loc 1 187 41 is_stmt 0 discriminator 1 view .LVU404
	movl	$0, %r13d
.LBE73:
	.loc 1 186 12 view .LVU405
	movq	$0, -64(%rbp)
	.loc 1 185 12 view .LVU406
	movq	$0, -56(%rbp)
	.loc 1 184 12 view .LVU407
	movl	$0, %r15d
.LBB74:
	.loc 1 187 29 view .LVU408
	jmp	.L278
.LVL255:
.L279:
	.loc 1 189 25 view .LVU409
	movq	%rbx, %rsi
	leaq	.Lubsan_data104(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL256:
	.loc 1 189 25 view .LVU410
	jmp	.L280
.L305:
	.loc 1 189 25 view .LVU411
	movq	%rbx, %rsi
	leaq	.Lubsan_data105(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL257:
	jmp	.L281
.L282:
	.loc 1 189 25 view .LVU412
	movl	8(%rbx), %r14d
	.loc 1 189 32 view .LVU413
	cmpl	$1, %r14d
	sete	%al
	movzbl	%al, %eax
	.loc 1 189 17 view .LVU414
	addq	%rax, %r15
.LVL258:
	.loc 1 190 7 is_stmt 1 view .LVU415
	.loc 1 190 27 is_stmt 0 view .LVU416
	testq	%rbx, %rbx
	je	.L283
	.loc 1 190 27 view .LVU417
	testb	$7, %bl
	jne	.L283
.L284:
	.loc 1 190 34 view .LVU418
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %eax
	.loc 1 190 19 view .LVU419
	addq	%rax, -56(%rbp)
.LVL259:
	.loc 1 191 7 is_stmt 1 view .LVU420
	.loc 1 191 24 is_stmt 0 view .LVU421
	testq	%rbx, %rbx
	je	.L285
	testb	$7, %bl
	jne	.L285
.L286:
	.loc 1 191 31 view .LVU422
	cmpl	$2, %r14d
	sete	%al
	movzbl	%al, %eax
	.loc 1 191 16 view .LVU423
	addq	%rax, -64(%rbp)
.LVL260:
	.loc 1 192 7 is_stmt 1 view .LVU424
	movq	%rbx, %rdx
	movq	-72(%rbp), %rsi
	movq	%r12, %rdi
	call	diagn_flush_single
.LVL261:
	.loc 1 187 122 discriminator 4 view .LVU425
	addq	$1, %r13
.LVL262:
.L278:
	.loc 1 187 80 discriminator 1 view .LVU426
	.loc 1 187 52 is_stmt 0 discriminator 1 view .LVU427
	testq	%r12, %r12
	je	.L287
	testb	$7, %r12b
	jne	.L287
.L288:
	leaq	8(%r12), %rdx
	cmpq	$-8, %r12
	jnb	.L300
.L289:
	leaq	8(%r12), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L301
	movq	8(%r12), %rbx
	testq	%rbx, %rbx
	je	.L302
.L291:
	movq	%rbx, %rdi
	call	array_length@PLT
.LVL263:
	.loc 1 187 80 discriminator 1 view .LVU428
	cmpq	%rax, %r13
	jnb	.L292
	.loc 1 187 92 discriminator 3 view .LVU429
	testq	%r12, %r12
	je	.L293
	testb	$7, %r12b
	jne	.L293
.L294:
	leaq	8(%r12), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L303
	movq	8(%r12), %rbx
	testq	%rbx, %rbx
	je	.L304
.L296:
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	array_get@PLT
.LVL264:
	movq	%rax, %rbx
.LVL265:
	.loc 1 187 80 discriminator 1 view .LVU430
	testq	%rax, %rax
	je	.L292
	.loc 1 189 7 is_stmt 1 view .LVU431
	.loc 1 189 25 is_stmt 0 view .LVU432
	je	.L279
	testb	$7, %bl
	jne	.L279
.LVL266:
.L280:
	.loc 1 189 25 view .LVU433
	leaq	8(%rbx), %rdx
	cmpq	$-8, %rbx
	jnb	.L305
.L281:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L282
	cmpb	$3, %al
	jg	.L282
	call	__asan_report_load4@PLT
.LVL267:
.L283:
	.loc 1 190 27 view .LVU434
	movq	%rbx, %rsi
	leaq	.Lubsan_data106(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL268:
	jmp	.L284
.L285:
	.loc 1 191 24 view .LVU435
	movq	%rbx, %rsi
	leaq	.Lubsan_data107(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL269:
	jmp	.L286
.LVL270:
.L287:
	.loc 1 187 52 discriminator 1 view .LVU436
	movq	%r12, %rsi
	leaq	.Lubsan_data108(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL271:
	jmp	.L288
.L300:
	.loc 1 187 52 discriminator 1 view .LVU437
	movq	%r12, %rsi
	leaq	.Lubsan_data109(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL272:
	jmp	.L289
.L301:
	.loc 1 187 52 discriminator 1 view .LVU438
	call	__asan_report_load8@PLT
.LVL273:
.L302:
	leaq	.Lubsan_data41(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL274:
	jmp	.L291
.L293:
	.loc 1 187 92 discriminator 3 view .LVU439
	movq	%r12, %rsi
	leaq	.Lubsan_data110(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL275:
	jmp	.L294
.L303:
	.loc 1 187 92 discriminator 3 view .LVU440
	call	__asan_report_load8@PLT
.LVL276:
.L304:
	leaq	.Lubsan_data42(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL277:
	jmp	.L296
.L292:
	.loc 1 187 92 discriminator 3 view .LVU441
.LBE74:
	.loc 1 194 3 is_stmt 1 view .LVU442
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L306
	movq	stdout(%rip), %rbx
	testq	%rbx, %rbx
	je	.L307
.L299:
.LVL278:
.LBB75:
.LBI75:
	.loc 2 77 1 view .LVU443
.LBB76:
	.loc 2 79 3 view .LVU444
	.loc 2 79 10 is_stmt 0 view .LVU445
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%r15, %r9
	movl	$194, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL279:
	.loc 2 79 10 view .LVU446
.LBE76:
.LBE75:
	.loc 1 196 3 is_stmt 1 view .LVU447
	.loc 1 197 1 is_stmt 0 view .LVU448
	movq	%r15, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
.LVL280:
	.loc 1 197 1 view .LVU449
	popq	%r13
.LVL281:
	.loc 1 197 1 view .LVU450
	popq	%r14
	popq	%r15
.LVL282:
	.loc 1 197 1 view .LVU451
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LVL283:
	.loc 1 197 1 view .LVU452
	ret
.LVL284:
.L306:
	.cfi_restore_state
	.loc 1 194 3 view .LVU453
	call	__asan_report_load8@PLT
.LVL285:
.L307:
	leaq	.Lubsan_data43(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL286:
	jmp	.L299
	.cfi_endproc
.LFE63:
	.size	diagn_flush, .-diagn_flush
	.section	.rodata
	.align 32
.LC22:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0mfreeing %zu diagnostics: %p\n"
	.zero	60
	.text
	.globl	diagn_free
	.type	diagn_free, @function
diagn_free:
.LASANPC65:
.LVL287:
.LFB65:
	.loc 1 209 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 209 1 is_stmt 0 view .LVU455
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
	.loc 1 210 3 is_stmt 1 view .LVU456
	.loc 1 210 173 is_stmt 0 view .LVU457
	movl	%edi, %r14d
	.loc 1 210 3 view .LVU458
	testq	%rdi, %rdi
	je	.L309
	testb	$7, %dil
	jne	.L309
.LVL288:
.L310:
	.loc 1 210 3 view .LVU459
	leaq	8(%rbx), %rdx
	cmpq	$-8, %rbx
	jnb	.L320
.L311:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L321
	movq	8(%rbx), %r12
	testq	%r12, %r12
	je	.L322
.L313:
	movq	%r12, %rdi
	call	array_length@PLT
.LVL289:
	movq	%rax, %r12
	.loc 1 210 3 discriminator 1 view .LVU460
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L323
	movq	stdout(%rip), %r13
	testq	%r13, %r13
	je	.L324
.L315:
.LVL290:
.LBB77:
.LBI77:
	.loc 2 77 1 is_stmt 1 view .LVU461
.LBB78:
	.loc 2 79 3 view .LVU462
	.loc 2 79 10 is_stmt 0 view .LVU463
	subq	$8, %rsp
	pushq	%r14
	movq	%r12, %r9
	movl	$210, %r8d
	leaq	.LC7(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL291:
	.loc 2 79 10 view .LVU464
.LBE78:
.LBE77:
	.loc 1 212 3 is_stmt 1 view .LVU465
	addq	$16, %rsp
	testq	%rbx, %rbx
	je	.L316
	testb	$7, %bl
	jne	.L316
.L317:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L325
	movq	8(%rbx), %r12
	testq	%r12, %r12
	je	.L326
.L319:
	leaq	diagn_free_impl(%rip), %rsi
	movq	%r12, %rdi
	call	array_free_cb@PLT
.LVL292:
	.loc 1 213 3 view .LVU466
	movq	%rbx, %rsi
	leaq	__func__.1(%rip), %rdi
	call	__chk_free_impl@PLT
.LVL293:
	.loc 1 214 1 is_stmt 0 view .LVU467
	leaq	-32(%rbp), %rsp
	popq	%rbx
.LVL294:
	.loc 1 214 1 view .LVU468
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL295:
.L309:
	.cfi_restore_state
	.loc 1 210 3 view .LVU469
	movq	%rbx, %rsi
	leaq	.Lubsan_data111(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL296:
	jmp	.L310
.L320:
	.loc 1 210 3 view .LVU470
	movq	%rbx, %rsi
	leaq	.Lubsan_data112(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL297:
	jmp	.L311
.L321:
	.loc 1 210 3 view .LVU471
	call	__asan_report_load8@PLT
.LVL298:
.L322:
	leaq	.Lubsan_data45(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL299:
	jmp	.L313
.L323:
	.loc 1 210 3 discriminator 1 view .LVU472
	call	__asan_report_load8@PLT
.LVL300:
.L324:
	leaq	.Lubsan_data46(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL301:
	jmp	.L315
.L316:
	.loc 1 212 3 view .LVU473
	movq	%rbx, %rsi
	leaq	.Lubsan_data113(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL302:
	jmp	.L317
.L325:
	.loc 1 212 3 view .LVU474
	call	__asan_report_load8@PLT
.LVL303:
.L326:
	leaq	.Lubsan_data48(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL304:
	jmp	.L319
	.cfi_endproc
.LFE65:
	.size	diagn_free, .-diagn_free
	.section	.data.rel.local,"aw"
	.align 32
	.type	.Lubsan_data113, @object
	.size	.Lubsan_data113, 32
.Lubsan_data113:
	.quad	.LC7
	.long	212
	.long	3
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data112, @object
	.size	.Lubsan_data112, 16
.Lubsan_data112:
	.quad	.LC7
	.long	210
	.long	3
	.zero	48
	.align 32
	.type	.Lubsan_data111, @object
	.size	.Lubsan_data111, 32
.Lubsan_data111:
	.quad	.LC7
	.long	210
	.long	3
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data110, @object
	.size	.Lubsan_data110, 32
.Lubsan_data110:
	.quad	.LC7
	.long	187
	.long	92
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data109, @object
	.size	.Lubsan_data109, 16
.Lubsan_data109:
	.quad	.LC7
	.long	187
	.long	52
	.zero	48
	.align 32
	.type	.Lubsan_data108, @object
	.size	.Lubsan_data108, 32
.Lubsan_data108:
	.quad	.LC7
	.long	187
	.long	52
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data107, @object
	.size	.Lubsan_data107, 32
.Lubsan_data107:
	.quad	.LC7
	.long	191
	.long	24
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data106, @object
	.size	.Lubsan_data106, 32
.Lubsan_data106:
	.quad	.LC7
	.long	190
	.long	27
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data105, @object
	.size	.Lubsan_data105, 16
.Lubsan_data105:
	.quad	.LC7
	.long	189
	.long	25
	.zero	48
	.align 32
	.type	.Lubsan_data104, @object
	.size	.Lubsan_data104, 32
.Lubsan_data104:
	.quad	.LC7
	.long	189
	.long	25
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data103, @object
	.size	.Lubsan_data103, 16
.Lubsan_data103:
	.quad	.LC7
	.long	74
	.long	3
	.zero	48
	.align 32
	.type	.Lubsan_data102, @object
	.size	.Lubsan_data102, 32
.Lubsan_data102:
	.quad	.LC7
	.long	74
	.long	3
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data101, @object
	.size	.Lubsan_data101, 16
.Lubsan_data101:
	.quad	.LC7
	.long	71
	.long	10
	.zero	48
	.align 32
	.type	.Lubsan_data100, @object
	.size	.Lubsan_data100, 32
.Lubsan_data100:
	.quad	.LC7
	.long	71
	.long	10
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data99, @object
	.size	.Lubsan_data99, 16
.Lubsan_data99:
	.quad	.LC7
	.long	67
	.long	15
	.zero	48
	.align 32
	.type	.Lubsan_data98, @object
	.size	.Lubsan_data98, 32
.Lubsan_data98:
	.quad	.LC7
	.long	67
	.long	15
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data97, @object
	.size	.Lubsan_data97, 32
.Lubsan_data97:
	.quad	.LC7
	.long	66
	.long	17
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data96, @object
	.size	.Lubsan_data96, 16
.Lubsan_data96:
	.quad	.LC7
	.long	40
	.long	15
	.zero	48
	.align 32
	.type	.Lubsan_data95, @object
	.size	.Lubsan_data95, 32
.Lubsan_data95:
	.quad	.LC7
	.long	40
	.long	15
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data94, @object
	.size	.Lubsan_data94, 32
.Lubsan_data94:
	.quad	.LC7
	.long	39
	.long	21
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data93, @object
	.size	.Lubsan_data93, 32
.Lubsan_data93:
	.quad	.LC7
	.long	38
	.long	17
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data92, @object
	.size	.Lubsan_data92, 16
.Lubsan_data92:
	.quad	.LC7
	.long	37
	.long	20
	.zero	48
	.align 32
	.type	.Lubsan_data91, @object
	.size	.Lubsan_data91, 32
.Lubsan_data91:
	.quad	.LC7
	.long	37
	.long	20
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data90, @object
	.size	.Lubsan_data90, 16
.Lubsan_data90:
	.quad	.LC7
	.long	203
	.long	35
	.zero	48
	.align 32
	.type	.Lubsan_data89, @object
	.size	.Lubsan_data89, 32
.Lubsan_data89:
	.quad	.LC7
	.long	203
	.long	35
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data88, @object
	.size	.Lubsan_data88, 32
.Lubsan_data88:
	.quad	.LC7
	.long	155
	.long	39
	.quad	.Lubsan_type7
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data87, @object
	.size	.Lubsan_data87, 32
.Lubsan_data87:
	.quad	.LC7
	.long	155
	.long	31
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data86, @object
	.size	.Lubsan_data86, 32
.Lubsan_data86:
	.quad	.LC7
	.long	174
	.long	5
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data85, @object
	.size	.Lubsan_data85, 32
.Lubsan_data85:
	.quad	.LC7
	.long	162
	.long	116
	.quad	.Lubsan_type7
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data84, @object
	.size	.Lubsan_data84, 32
.Lubsan_data84:
	.quad	.LC7
	.long	162
	.long	108
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data83, @object
	.size	.Lubsan_data83, 16
.Lubsan_data83:
	.quad	.LC7
	.long	162
	.long	87
	.zero	48
	.align 32
	.type	.Lubsan_data82, @object
	.size	.Lubsan_data82, 32
.Lubsan_data82:
	.quad	.LC7
	.long	162
	.long	87
	.quad	.Lubsan_type7
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data81, @object
	.size	.Lubsan_data81, 32
.Lubsan_data81:
	.quad	.LC7
	.long	162
	.long	79
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data80, @object
	.size	.Lubsan_data80, 32
.Lubsan_data80:
	.quad	.LC7
	.long	157
	.long	13
	.quad	.Lubsan_type8
	.byte	0
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type8, @object
	.size	.Lubsan_type8, 14
.Lubsan_type8:
	.value	-1
	.value	0
	.string	"'uint8_t'"
	.zero	50
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data79, @object
	.size	.Lubsan_data79, 16
.Lubsan_data79:
	.quad	.LC7
	.long	157
	.long	33
	.zero	48
	.align 32
	.type	.Lubsan_data78, @object
	.size	.Lubsan_data78, 16
.Lubsan_data78:
	.quad	.LC7
	.long	150
	.long	3
	.zero	48
	.align 32
	.type	.Lubsan_data77, @object
	.size	.Lubsan_data77, 32
.Lubsan_data77:
	.quad	.LC7
	.long	149
	.long	29
	.quad	.Lubsan_type7
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data76, @object
	.size	.Lubsan_data76, 32
.Lubsan_data76:
	.quad	.LC7
	.long	149
	.long	43
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data75, @object
	.size	.Lubsan_data75, 16
.Lubsan_data75:
	.quad	.LC7
	.long	146
	.long	3
	.zero	48
	.align 32
	.type	.Lubsan_data74, @object
	.size	.Lubsan_data74, 32
.Lubsan_data74:
	.quad	.LC7
	.long	146
	.long	3
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data73, @object
	.size	.Lubsan_data73, 16
.Lubsan_data73:
	.quad	.LC7
	.long	146
	.long	3
	.zero	48
	.align 32
	.type	.Lubsan_data72, @object
	.size	.Lubsan_data72, 32
.Lubsan_data72:
	.quad	.LC7
	.long	146
	.long	3
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data71, @object
	.size	.Lubsan_data71, 32
.Lubsan_data71:
	.quad	.LC7
	.long	144
	.long	57
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data70, @object
	.size	.Lubsan_data70, 16
.Lubsan_data70:
	.quad	.LC7
	.long	144
	.long	39
	.zero	48
	.align 32
	.type	.Lubsan_data69, @object
	.size	.Lubsan_data69, 32
.Lubsan_data69:
	.quad	.LC7
	.long	144
	.long	39
	.quad	.Lubsan_type7
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data68, @object
	.size	.Lubsan_data68, 32
.Lubsan_data68:
	.quad	.LC7
	.long	144
	.long	76
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data67, @object
	.size	.Lubsan_data67, 32
.Lubsan_data67:
	.quad	.LC7
	.long	142
	.long	49
	.quad	.Lubsan_type7
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data66, @object
	.size	.Lubsan_data66, 32
.Lubsan_data66:
	.quad	.LC7
	.long	143
	.long	22
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data65, @object
	.size	.Lubsan_data65, 16
.Lubsan_data65:
	.quad	.LC7
	.long	141
	.long	12
	.zero	48
	.align 32
	.type	.Lubsan_data64, @object
	.size	.Lubsan_data64, 16
.Lubsan_data64:
	.quad	.LC7
	.long	141
	.long	56
	.zero	48
	.align 32
	.type	.Lubsan_data63, @object
	.size	.Lubsan_data63, 32
.Lubsan_data63:
	.quad	.LC7
	.long	141
	.long	56
	.quad	.Lubsan_type7
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type7, @object
	.size	.Lubsan_type7, 23
.Lubsan_type7:
	.value	-1
	.value	0
	.string	"'struct <unknown>'"
	.zero	41
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data62, @object
	.size	.Lubsan_data62, 32
.Lubsan_data62:
	.quad	.LC7
	.long	141
	.long	48
	.quad	.Lubsan_type6
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type6, @object
	.size	.Lubsan_type6, 24
.Lubsan_type6:
	.value	-1
	.value	0
	.string	"'struct diagnostic'"
	.zero	40
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data61, @object
	.size	.Lubsan_data61, 32
.Lubsan_data61:
	.quad	.LC7
	.long	141
	.long	30
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data60, @object
	.size	.Lubsan_data60, 32
.Lubsan_data60:
	.quad	.LC7
	.long	122
	.long	29
	.quad	.Lubsan_type5
	.byte	1
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type5, @object
	.size	.Lubsan_type5, 31
.Lubsan_type5:
	.value	-1
	.value	0
	.string	"'const short unsigned int'"
	.zero	33
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data59, @object
	.size	.Lubsan_data59, 16
.Lubsan_data59:
	.quad	.LC7
	.long	122
	.long	29
	.zero	48
	.align 32
	.type	.Lubsan_data58, @object
	.size	.Lubsan_data58, 32
.Lubsan_data58:
	.quad	.LC7
	.long	122
	.long	9
	.quad	.Lubsan_type1
	.byte	0
	.byte	0
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data57, @object
	.size	.Lubsan_data57, 16
.Lubsan_data57:
	.quad	.LC7
	.long	122
	.long	17
	.zero	48
	.align 32
	.type	.Lubsan_data56, @object
	.size	.Lubsan_data56, 32
.Lubsan_data56:
	.quad	.LC7
	.long	122
	.long	11
	.quad	.Lubsan_type4
	.byte	3
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type4, @object
	.size	.Lubsan_type4, 33
.Lubsan_type4:
	.value	-1
	.value	0
	.string	"'const short unsigned int *'"
	.zero	63
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data55, @object
	.size	.Lubsan_data55, 32
.Lubsan_data55:
	.quad	.LC7
	.long	115
	.long	13
	.quad	.Lubsan_type1
	.byte	0
	.byte	0
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data54, @object
	.size	.Lubsan_data54, 16
.Lubsan_data54:
	.quad	.LC7
	.long	115
	.long	28
	.zero	48
	.align 32
	.type	.Lubsan_data53, @object
	.size	.Lubsan_data53, 32
.Lubsan_data53:
	.quad	.LC7
	.long	48
	.long	39
	.quad	.Lubsan_type3
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type3, @object
	.size	.Lubsan_type3, 30
.Lubsan_type3:
	.value	-1
	.value	0
	.string	"'struct compilation_args'"
	.zero	34
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data52, @object
	.size	.Lubsan_data52, 16
.Lubsan_data52:
	.quad	.LC7
	.long	48
	.long	16
	.zero	48
	.align 32
	.type	.Lubsan_data51, @object
	.size	.Lubsan_data51, 32
.Lubsan_data51:
	.quad	.LC7
	.long	48
	.long	16
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type2, @object
	.size	.Lubsan_type2, 29
.Lubsan_type2:
	.value	-1
	.value	0
	.string	"'struct diagnostic_impl'"
	.zero	35
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data50, @object
	.size	.Lubsan_data50, 32
.Lubsan_data50:
	.quad	.LC7
	.long	133
	.long	14
	.quad	.Lubsan_type1
	.byte	0
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type1, @object
	.size	.Lubsan_type1, 20
.Lubsan_type1:
	.value	-1
	.value	0
	.string	"'const uint8_t'"
	.zero	44
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data49, @object
	.size	.Lubsan_data49, 16
.Lubsan_data49:
	.quad	.LC7
	.long	133
	.long	14
	.zero	48
	.align 32
	.type	.Lubsan_data48, @object
	.size	.Lubsan_data48, 40
.Lubsan_data48:
	.quad	.LC7
	.long	212
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data46, @object
	.size	.Lubsan_data46, 40
.Lubsan_data46:
	.quad	.LC7
	.long	210
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data45, @object
	.size	.Lubsan_data45, 40
.Lubsan_data45:
	.quad	.LC7
	.long	210
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data43, @object
	.size	.Lubsan_data43, 40
.Lubsan_data43:
	.quad	.LC7
	.long	194
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data42, @object
	.size	.Lubsan_data42, 40
.Lubsan_data42:
	.quad	.LC7
	.long	187
	.long	92
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data41, @object
	.size	.Lubsan_data41, 40
.Lubsan_data41:
	.quad	.LC7
	.long	187
	.long	52
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data40, @object
	.size	.Lubsan_data40, 40
.Lubsan_data40:
	.quad	.LC7
	.long	74
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data38, @object
	.size	.Lubsan_data38, 40
.Lubsan_data38:
	.quad	.LC7
	.long	71
	.long	183
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data36, @object
	.size	.Lubsan_data36, 40
.Lubsan_data36:
	.quad	.LC7
	.long	71
	.long	54
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data34, @object
	.size	.Lubsan_data34, 40
.Lubsan_data34:
	.quad	.LC7
	.long	62
	.long	7
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data32, @object
	.size	.Lubsan_data32, 40
.Lubsan_data32:
	.quad	.LC7
	.long	202
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data30, @object
	.size	.Lubsan_data30, 40
.Lubsan_data30:
	.quad	.LC7
	.long	177
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data29, @object
	.size	.Lubsan_data29, 40
.Lubsan_data29:
	.quad	.LC7
	.long	174
	.long	5
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data27, @object
	.size	.Lubsan_data27, 40
.Lubsan_data27:
	.quad	.LC7
	.long	171
	.long	7
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data25, @object
	.size	.Lubsan_data25, 40
.Lubsan_data25:
	.quad	.LC7
	.long	167
	.long	9
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data23, @object
	.size	.Lubsan_data23, 40
.Lubsan_data23:
	.quad	.LC7
	.long	166
	.long	9
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data21, @object
	.size	.Lubsan_data21, 40
.Lubsan_data21:
	.quad	.LC7
	.long	150
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data19, @object
	.size	.Lubsan_data19, 40
.Lubsan_data19:
	.quad	.LC7
	.long	146
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data17, @object
	.size	.Lubsan_data17, 40
.Lubsan_data17:
	.quad	.LC7
	.long	49
	.long	144
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data15, @object
	.size	.Lubsan_data15, 40
.Lubsan_data15:
	.quad	.LC7
	.long	49
	.long	15
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
	.quad	.LC7
	.long	47
	.long	8
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.section	.rodata
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"diagn_free_impl"
	.zero	48
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 11
__func__.1:
	.string	"diagn_free"
	.zero	53
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 11
__func__.2:
	.string	"diagn_push"
	.zero	53
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 10
__func__.3:
	.string	"diagn_new"
	.zero	54
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data10, @object
	.size	.Lubsan_data10, 16
.Lubsan_data10:
	.quad	.LC7
	.long	105
	.long	7
	.zero	48
	.align 32
	.type	.Lubsan_data9, @object
	.size	.Lubsan_data9, 16
.Lubsan_data9:
	.quad	.LC7
	.long	89
	.long	7
	.zero	48
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC7
	.long	203
	.long	20
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC7
	.long	213
	.long	20
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC7
	.long	65
	.long	49
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC7
	.long	36
	.long	38
	.section	.rodata.str1.1
.LC23:
	.string	"*.Lubsan_data113"
.LC24:
	.string	"*.Lubsan_data112"
.LC25:
	.string	"*.Lubsan_data111"
.LC26:
	.string	"*.Lubsan_data110"
.LC27:
	.string	"*.Lubsan_data109"
.LC28:
	.string	"*.Lubsan_data108"
.LC29:
	.string	"*.Lubsan_data107"
.LC30:
	.string	"*.Lubsan_data106"
.LC31:
	.string	"*.Lubsan_data105"
.LC32:
	.string	"*.Lubsan_data104"
.LC33:
	.string	"*.Lubsan_data103"
.LC34:
	.string	"*.Lubsan_data102"
.LC35:
	.string	"*.Lubsan_data101"
.LC36:
	.string	"*.Lubsan_data100"
.LC37:
	.string	"*.Lubsan_data99"
.LC38:
	.string	"*.Lubsan_data98"
.LC39:
	.string	"*.Lubsan_data97"
.LC40:
	.string	"*.Lubsan_data96"
.LC41:
	.string	"*.Lubsan_data95"
.LC42:
	.string	"*.Lubsan_data94"
.LC43:
	.string	"*.Lubsan_data93"
.LC44:
	.string	"*.Lubsan_data92"
.LC45:
	.string	"*.Lubsan_data91"
.LC46:
	.string	"*.Lubsan_data90"
.LC47:
	.string	"*.Lubsan_data89"
.LC48:
	.string	"*.Lubsan_data88"
.LC49:
	.string	"*.Lubsan_data87"
.LC50:
	.string	"*.Lubsan_data86"
.LC51:
	.string	"*.Lubsan_data85"
.LC52:
	.string	"*.Lubsan_data84"
.LC53:
	.string	"*.Lubsan_data83"
.LC54:
	.string	"*.Lubsan_data82"
.LC55:
	.string	"*.Lubsan_data81"
.LC56:
	.string	"*.Lubsan_data80"
.LC57:
	.string	"*.Lubsan_type8"
.LC58:
	.string	"*.Lubsan_data79"
.LC59:
	.string	"*.Lubsan_data78"
.LC60:
	.string	"*.Lubsan_data77"
.LC61:
	.string	"*.Lubsan_data76"
.LC62:
	.string	"*.Lubsan_data75"
.LC63:
	.string	"*.Lubsan_data74"
.LC64:
	.string	"*.Lubsan_data73"
.LC65:
	.string	"*.Lubsan_data72"
.LC66:
	.string	"*.Lubsan_data71"
.LC67:
	.string	"*.Lubsan_data70"
.LC68:
	.string	"*.Lubsan_data69"
.LC69:
	.string	"*.Lubsan_data68"
.LC70:
	.string	"*.Lubsan_data67"
.LC71:
	.string	"*.Lubsan_data66"
.LC72:
	.string	"*.Lubsan_data65"
.LC73:
	.string	"*.Lubsan_data64"
.LC74:
	.string	"*.Lubsan_data63"
.LC75:
	.string	"*.Lubsan_type7"
.LC76:
	.string	"*.Lubsan_data62"
.LC77:
	.string	"*.Lubsan_type6"
.LC78:
	.string	"*.Lubsan_data61"
.LC79:
	.string	"*.Lubsan_data60"
.LC80:
	.string	"*.Lubsan_type5"
.LC81:
	.string	"*.Lubsan_data59"
.LC82:
	.string	"*.Lubsan_data58"
.LC83:
	.string	"*.Lubsan_data57"
.LC84:
	.string	"*.Lubsan_data56"
.LC85:
	.string	"*.Lubsan_type4"
.LC86:
	.string	"*.Lubsan_data55"
.LC87:
	.string	"*.Lubsan_data54"
.LC88:
	.string	"*.Lubsan_data53"
.LC89:
	.string	"*.Lubsan_type3"
.LC90:
	.string	"*.Lubsan_data52"
.LC91:
	.string	"*.Lubsan_data51"
.LC92:
	.string	"*.Lubsan_type2"
.LC93:
	.string	"*.Lubsan_data50"
.LC94:
	.string	"*.Lubsan_type1"
.LC95:
	.string	"*.Lubsan_data49"
.LC96:
	.string	"*.Lubsan_data48"
.LC97:
	.string	"*.Lubsan_data46"
.LC98:
	.string	"*.Lubsan_data45"
.LC99:
	.string	"*.Lubsan_data43"
.LC100:
	.string	"*.Lubsan_data42"
.LC101:
	.string	"*.Lubsan_data41"
.LC102:
	.string	"*.Lubsan_data40"
.LC103:
	.string	"*.Lubsan_data38"
.LC104:
	.string	"*.Lubsan_data36"
.LC105:
	.string	"*.Lubsan_data34"
.LC106:
	.string	"*.Lubsan_data32"
.LC107:
	.string	"*.Lubsan_data30"
.LC108:
	.string	"*.Lubsan_data29"
.LC109:
	.string	"*.Lubsan_data27"
.LC110:
	.string	"*.Lubsan_data25"
.LC111:
	.string	"*.Lubsan_data23"
.LC112:
	.string	"*.Lubsan_data21"
.LC113:
	.string	"*.Lubsan_data19"
.LC114:
	.string	"*.Lubsan_data17"
.LC115:
	.string	"*.Lubsan_data15"
.LC116:
	.string	"*.Lubsan_data13"
.LC117:
	.string	"__func__"
.LC118:
	.string	"*.Lubsan_data10"
.LC119:
	.string	"*.Lubsan_data9"
.LC120:
	.string	"*.LC10"
.LC121:
	.string	"*.LC16"
.LC122:
	.string	"*.LC21"
.LC123:
	.string	"*.LC13"
.LC124:
	.string	"*.LC0"
.LC125:
	.string	"*.LC8"
.LC126:
	.string	"*.LC22"
.LC127:
	.string	"*.LC9"
.LC128:
	.string	"*.LC6"
.LC129:
	.string	"*.LC4"
.LC130:
	.string	"*.LC11"
.LC131:
	.string	"*.LC2"
.LC132:
	.string	"*.LC3"
.LC133:
	.string	"*.LC5"
.LC134:
	.string	"*.LC15"
.LC135:
	.string	"*.LC1"
.LC136:
	.string	"*.LC7"
.LC137:
	.string	"*.LC18"
.LC138:
	.string	"*.LC14"
.LC139:
	.string	"*.LC20"
.LC140:
	.string	"*.LC12"
.LC141:
	.string	"*.LC19"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 7808
.LASAN0:
	.quad	.Lubsan_data113
	.quad	32
	.quad	64
	.quad	.LC23
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data112
	.quad	16
	.quad	64
	.quad	.LC24
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data111
	.quad	32
	.quad	64
	.quad	.LC25
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data110
	.quad	32
	.quad	64
	.quad	.LC26
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data109
	.quad	16
	.quad	64
	.quad	.LC27
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data108
	.quad	32
	.quad	64
	.quad	.LC28
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data107
	.quad	32
	.quad	64
	.quad	.LC29
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data106
	.quad	32
	.quad	64
	.quad	.LC30
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data105
	.quad	16
	.quad	64
	.quad	.LC31
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data104
	.quad	32
	.quad	64
	.quad	.LC32
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data103
	.quad	16
	.quad	64
	.quad	.LC33
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data102
	.quad	32
	.quad	64
	.quad	.LC34
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data101
	.quad	16
	.quad	64
	.quad	.LC35
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data100
	.quad	32
	.quad	64
	.quad	.LC36
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data99
	.quad	16
	.quad	64
	.quad	.LC37
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data98
	.quad	32
	.quad	64
	.quad	.LC38
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data97
	.quad	32
	.quad	64
	.quad	.LC39
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data96
	.quad	16
	.quad	64
	.quad	.LC40
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data95
	.quad	32
	.quad	64
	.quad	.LC41
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data94
	.quad	32
	.quad	64
	.quad	.LC42
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data93
	.quad	32
	.quad	64
	.quad	.LC43
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data92
	.quad	16
	.quad	64
	.quad	.LC44
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data91
	.quad	32
	.quad	64
	.quad	.LC45
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data90
	.quad	16
	.quad	64
	.quad	.LC46
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data89
	.quad	32
	.quad	64
	.quad	.LC47
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data88
	.quad	32
	.quad	64
	.quad	.LC48
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data87
	.quad	32
	.quad	64
	.quad	.LC49
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data86
	.quad	32
	.quad	64
	.quad	.LC50
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data85
	.quad	32
	.quad	64
	.quad	.LC51
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data84
	.quad	32
	.quad	64
	.quad	.LC52
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data83
	.quad	16
	.quad	64
	.quad	.LC53
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data82
	.quad	32
	.quad	64
	.quad	.LC54
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data81
	.quad	32
	.quad	64
	.quad	.LC55
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data80
	.quad	32
	.quad	64
	.quad	.LC56
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type8
	.quad	14
	.quad	64
	.quad	.LC57
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data79
	.quad	16
	.quad	64
	.quad	.LC58
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data78
	.quad	16
	.quad	64
	.quad	.LC59
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data77
	.quad	32
	.quad	64
	.quad	.LC60
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data76
	.quad	32
	.quad	64
	.quad	.LC61
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data75
	.quad	16
	.quad	64
	.quad	.LC62
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data74
	.quad	32
	.quad	64
	.quad	.LC63
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data73
	.quad	16
	.quad	64
	.quad	.LC64
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data72
	.quad	32
	.quad	64
	.quad	.LC65
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data71
	.quad	32
	.quad	64
	.quad	.LC66
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data70
	.quad	16
	.quad	64
	.quad	.LC67
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data69
	.quad	32
	.quad	64
	.quad	.LC68
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data68
	.quad	32
	.quad	64
	.quad	.LC69
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data67
	.quad	32
	.quad	64
	.quad	.LC70
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data66
	.quad	32
	.quad	64
	.quad	.LC71
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data65
	.quad	16
	.quad	64
	.quad	.LC72
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data64
	.quad	16
	.quad	64
	.quad	.LC73
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data63
	.quad	32
	.quad	64
	.quad	.LC74
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type7
	.quad	23
	.quad	64
	.quad	.LC75
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data62
	.quad	32
	.quad	64
	.quad	.LC76
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type6
	.quad	24
	.quad	64
	.quad	.LC77
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data61
	.quad	32
	.quad	64
	.quad	.LC78
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data60
	.quad	32
	.quad	64
	.quad	.LC79
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type5
	.quad	31
	.quad	64
	.quad	.LC80
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data59
	.quad	16
	.quad	64
	.quad	.LC81
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data58
	.quad	32
	.quad	64
	.quad	.LC82
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data57
	.quad	16
	.quad	64
	.quad	.LC83
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data56
	.quad	32
	.quad	64
	.quad	.LC84
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type4
	.quad	33
	.quad	96
	.quad	.LC85
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data55
	.quad	32
	.quad	64
	.quad	.LC86
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data54
	.quad	16
	.quad	64
	.quad	.LC87
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data53
	.quad	32
	.quad	64
	.quad	.LC88
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type3
	.quad	30
	.quad	64
	.quad	.LC89
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data52
	.quad	16
	.quad	64
	.quad	.LC90
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data51
	.quad	32
	.quad	64
	.quad	.LC91
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type2
	.quad	29
	.quad	64
	.quad	.LC92
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data50
	.quad	32
	.quad	64
	.quad	.LC93
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type1
	.quad	20
	.quad	64
	.quad	.LC94
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data49
	.quad	16
	.quad	64
	.quad	.LC95
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data48
	.quad	40
	.quad	96
	.quad	.LC96
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data46
	.quad	40
	.quad	96
	.quad	.LC97
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data45
	.quad	40
	.quad	96
	.quad	.LC98
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data43
	.quad	40
	.quad	96
	.quad	.LC99
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data42
	.quad	40
	.quad	96
	.quad	.LC100
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data41
	.quad	40
	.quad	96
	.quad	.LC101
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data40
	.quad	40
	.quad	96
	.quad	.LC102
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data38
	.quad	40
	.quad	96
	.quad	.LC103
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data36
	.quad	40
	.quad	96
	.quad	.LC104
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data34
	.quad	40
	.quad	96
	.quad	.LC105
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data32
	.quad	40
	.quad	96
	.quad	.LC106
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data30
	.quad	40
	.quad	96
	.quad	.LC107
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data29
	.quad	40
	.quad	96
	.quad	.LC108
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data27
	.quad	40
	.quad	96
	.quad	.LC109
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data25
	.quad	40
	.quad	96
	.quad	.LC110
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data23
	.quad	40
	.quad	96
	.quad	.LC111
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data21
	.quad	40
	.quad	96
	.quad	.LC112
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data19
	.quad	40
	.quad	96
	.quad	.LC113
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data17
	.quad	40
	.quad	96
	.quad	.LC114
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data15
	.quad	40
	.quad	96
	.quad	.LC115
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data13
	.quad	40
	.quad	96
	.quad	.LC116
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	__func__.0
	.quad	16
	.quad	64
	.quad	.LC117
	.quad	.LC7
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	__func__.1
	.quad	11
	.quad	64
	.quad	.LC117
	.quad	.LC7
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	__func__.2
	.quad	11
	.quad	64
	.quad	.LC117
	.quad	.LC7
	.quad	0
	.quad	.LASANLOC3
	.quad	0
	.quad	__func__.3
	.quad	10
	.quad	64
	.quad	.LC117
	.quad	.LC7
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	.Lubsan_data10
	.quad	16
	.quad	64
	.quad	.LC118
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data9
	.quad	16
	.quad	64
	.quad	.LC119
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	19
	.quad	64
	.quad	.LC120
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	64
	.quad	96
	.quad	.LC121
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	88
	.quad	128
	.quad	.LC122
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	16
	.quad	64
	.quad	.LC123
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	17
	.quad	64
	.quad	.LC124
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	69
	.quad	128
	.quad	.LC125
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	68
	.quad	128
	.quad	.LC126
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	92
	.quad	128
	.quad	.LC127
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	2
	.quad	64
	.quad	.LC128
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	8
	.quad	64
	.quad	.LC129
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	13
	.quad	64
	.quad	.LC130
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	18
	.quad	64
	.quad	.LC131
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	8
	.quad	64
	.quad	.LC132
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	10
	.quad	64
	.quad	.LC133
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	3
	.quad	64
	.quad	.LC134
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	20
	.quad	64
	.quad	.LC135
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	18
	.quad	64
	.quad	.LC136
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	84
	.quad	128
	.quad	.LC137
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.quad	10
	.quad	64
	.quad	.LC138
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	56
	.quad	96
	.quad	.LC139
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	9
	.quad	64
	.quad	.LC140
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	41
	.quad	96
	.quad	.LC141
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB66:
	.cfi_startproc
	.loc 1 214 1 is_stmt 1 view .LVU475
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$122, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB67:
	.cfi_startproc
	.loc 1 214 1 view .LVU476
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$122, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "include/array.h"
	.file 6 "/usr/include/bits/stdint-uintn.h"
	.file 7 "/usr/include/stdint.h"
	.file 8 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdarg.h"
	.file 9 "<built-in>"
	.file 10 "/usr/include/bits/types/struct_FILE.h"
	.file 11 "/usr/include/bits/types/FILE.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "include/io.h"
	.file 14 "include/lexer.h"
	.file 15 "include/diagnostics.h"
	.file 16 "include/generic.h"
	.file 17 "include/ansi-colors.h"
	.file 18 "/usr/include/bits/stdio2-decl.h"
	.file 19 "/usr/include/string.h"
	.file 20 "/usr/include/stdlib.h"
	.file 21 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2667
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2c
	.long	.LASF212
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.long	.LASF9
	.byte	0x3
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x11
	.long	0x5d
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0xb
	.long	.LASF10
	.byte	0x4
	.byte	0x26
	.byte	0x17
	.long	0x56
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.long	.LASF11
	.uleb128 0xb
	.long	.LASF12
	.byte	0x4
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0xb
	.long	.LASF13
	.byte	0x4
	.byte	0x98
	.byte	0x12
	.long	0x48
	.uleb128 0xb
	.long	.LASF14
	.byte	0x4
	.byte	0x99
	.byte	0x12
	.long	0x48
	.uleb128 0x2e
	.byte	0x8
	.uleb128 0xa
	.long	0xb5
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x11
	.long	0xb5
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0xb
	.byte	0x1c
	.long	0xd4
	.uleb128 0xa
	.long	0xd9
	.uleb128 0x17
	.long	.LASF57
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0xc
	.byte	0x10
	.long	0xea
	.uleb128 0xa
	.long	0xef
	.uleb128 0x2f
	.long	0xfa
	.uleb128 0x8
	.long	0xae
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.long	0x77
	.uleb128 0x11
	.long	0xfa
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0x1b
	.byte	0x14
	.long	0x8a
	.uleb128 0xb
	.long	.LASF21
	.byte	0x7
	.byte	0x4f
	.byte	0x1b
	.long	0x3a
	.uleb128 0xb
	.long	.LASF22
	.byte	0x8
	.byte	0x28
	.byte	0x1b
	.long	0x12f
	.uleb128 0x30
	.long	.LASF213
	.long	0x138
	.uleb128 0x12
	.long	0x148
	.long	0x148
	.uleb128 0x13
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF214
	.byte	0x18
	.byte	0x9
	.byte	0
	.long	0x17d
	.uleb128 0x18
	.long	.LASF23
	.long	0x69
	.byte	0
	.uleb128 0x18
	.long	.LASF24
	.long	0x69
	.byte	0x4
	.uleb128 0x18
	.long	.LASF25
	.long	0xae
	.byte	0x8
	.uleb128 0x18
	.long	.LASF26
	.long	0xae
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.long	.LASF109
	.byte	0xd8
	.byte	0xa
	.byte	0x31
	.long	0x303
	.uleb128 0x4
	.long	.LASF27
	.byte	0xa
	.byte	0x33
	.byte	0x7
	.long	0x41
	.byte	0
	.uleb128 0x4
	.long	.LASF28
	.byte	0xa
	.byte	0x36
	.byte	0x9
	.long	0xb0
	.byte	0x8
	.uleb128 0x4
	.long	.LASF29
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.long	0xb0
	.byte	0x10
	.uleb128 0x4
	.long	.LASF30
	.byte	0xa
	.byte	0x38
	.byte	0x9
	.long	0xb0
	.byte	0x18
	.uleb128 0x4
	.long	.LASF31
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0xb0
	.byte	0x20
	.uleb128 0x4
	.long	.LASF32
	.byte	0xa
	.byte	0x3a
	.byte	0x9
	.long	0xb0
	.byte	0x28
	.uleb128 0x4
	.long	.LASF33
	.byte	0xa
	.byte	0x3b
	.byte	0x9
	.long	0xb0
	.byte	0x30
	.uleb128 0x4
	.long	.LASF34
	.byte	0xa
	.byte	0x3c
	.byte	0x9
	.long	0xb0
	.byte	0x38
	.uleb128 0x4
	.long	.LASF35
	.byte	0xa
	.byte	0x3d
	.byte	0x9
	.long	0xb0
	.byte	0x40
	.uleb128 0x4
	.long	.LASF36
	.byte	0xa
	.byte	0x40
	.byte	0x9
	.long	0xb0
	.byte	0x48
	.uleb128 0x4
	.long	.LASF37
	.byte	0xa
	.byte	0x41
	.byte	0x9
	.long	0xb0
	.byte	0x50
	.uleb128 0x4
	.long	.LASF38
	.byte	0xa
	.byte	0x42
	.byte	0x9
	.long	0xb0
	.byte	0x58
	.uleb128 0x4
	.long	.LASF39
	.byte	0xa
	.byte	0x44
	.byte	0x16
	.long	0x31c
	.byte	0x60
	.uleb128 0x4
	.long	.LASF40
	.byte	0xa
	.byte	0x46
	.byte	0x14
	.long	0x321
	.byte	0x68
	.uleb128 0x4
	.long	.LASF41
	.byte	0xa
	.byte	0x48
	.byte	0x7
	.long	0x41
	.byte	0x70
	.uleb128 0x4
	.long	.LASF42
	.byte	0xa
	.byte	0x49
	.byte	0x7
	.long	0x41
	.byte	0x74
	.uleb128 0x4
	.long	.LASF43
	.byte	0xa
	.byte	0x4a
	.byte	0xb
	.long	0x96
	.byte	0x78
	.uleb128 0x4
	.long	.LASF44
	.byte	0xa
	.byte	0x4d
	.byte	0x12
	.long	0x5d
	.byte	0x80
	.uleb128 0x4
	.long	.LASF45
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.long	0x70
	.byte	0x82
	.uleb128 0x4
	.long	.LASF46
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.long	0x326
	.byte	0x83
	.uleb128 0x4
	.long	.LASF47
	.byte	0xa
	.byte	0x51
	.byte	0xf
	.long	0x336
	.byte	0x88
	.uleb128 0x4
	.long	.LASF48
	.byte	0xa
	.byte	0x59
	.byte	0xd
	.long	0xa2
	.byte	0x90
	.uleb128 0x4
	.long	.LASF49
	.byte	0xa
	.byte	0x5b
	.byte	0x17
	.long	0x340
	.byte	0x98
	.uleb128 0x4
	.long	.LASF50
	.byte	0xa
	.byte	0x5c
	.byte	0x19
	.long	0x34a
	.byte	0xa0
	.uleb128 0x4
	.long	.LASF51
	.byte	0xa
	.byte	0x5d
	.byte	0x14
	.long	0x321
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF52
	.byte	0xa
	.byte	0x5e
	.byte	0x9
	.long	0xae
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF53
	.byte	0xa
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF54
	.byte	0xa
	.byte	0x60
	.byte	0x7
	.long	0x41
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF55
	.byte	0xa
	.byte	0x62
	.byte	0x8
	.long	0x34f
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF56
	.byte	0xb
	.byte	0x7
	.byte	0x19
	.long	0x17d
	.uleb128 0x32
	.long	.LASF215
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.uleb128 0x17
	.long	.LASF58
	.uleb128 0xa
	.long	0x317
	.uleb128 0xa
	.long	0x17d
	.uleb128 0x12
	.long	0xb5
	.long	0x336
	.uleb128 0x13
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x30f
	.uleb128 0x17
	.long	.LASF59
	.uleb128 0xa
	.long	0x33b
	.uleb128 0x17
	.long	.LASF60
	.uleb128 0xa
	.long	0x345
	.uleb128 0x12
	.long	0xb5
	.long	0x35f
	.uleb128 0x13
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	0xbc
	.uleb128 0x1e
	.long	0x35f
	.uleb128 0x11
	.long	0x35f
	.uleb128 0xb
	.long	.LASF61
	.byte	0xc
	.byte	0x35
	.byte	0x18
	.long	0x123
	.uleb128 0xa
	.long	0x303
	.uleb128 0x1e
	.long	0x37a
	.uleb128 0x21
	.long	.LASF62
	.byte	0x96
	.long	0x37a
	.uleb128 0x21
	.long	.LASF63
	.byte	0x97
	.long	0x37a
	.uleb128 0xb
	.long	.LASF64
	.byte	0xd
	.byte	0x6
	.byte	0xf
	.long	0x37a
	.uleb128 0xa
	.long	0xfa
	.uleb128 0xa
	.long	0x64
	.uleb128 0x22
	.long	.LASF115
	.long	0x69
	.byte	0xe
	.byte	0x1d
	.long	0x4b4
	.uleb128 0x3
	.long	.LASF65
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0x1
	.uleb128 0x3
	.long	.LASF67
	.byte	0x2
	.uleb128 0x3
	.long	.LASF68
	.byte	0x3
	.uleb128 0x3
	.long	.LASF69
	.byte	0x4
	.uleb128 0x3
	.long	.LASF70
	.byte	0x5
	.uleb128 0x3
	.long	.LASF71
	.byte	0x6
	.uleb128 0x3
	.long	.LASF72
	.byte	0x7
	.uleb128 0x3
	.long	.LASF73
	.byte	0x8
	.uleb128 0x1a
	.string	"Dot"
	.byte	0x9
	.uleb128 0x1a
	.string	"Add"
	.byte	0xa
	.uleb128 0x3
	.long	.LASF74
	.byte	0xb
	.uleb128 0x1a
	.string	"Div"
	.byte	0xc
	.uleb128 0x3
	.long	.LASF75
	.byte	0xd
	.uleb128 0x3
	.long	.LASF76
	.byte	0xe
	.uleb128 0x3
	.long	.LASF77
	.byte	0xf
	.uleb128 0x3
	.long	.LASF78
	.byte	0x10
	.uleb128 0x3
	.long	.LASF79
	.byte	0x11
	.uleb128 0x3
	.long	.LASF80
	.byte	0x12
	.uleb128 0x3
	.long	.LASF81
	.byte	0x13
	.uleb128 0x3
	.long	.LASF82
	.byte	0x14
	.uleb128 0x3
	.long	.LASF83
	.byte	0x15
	.uleb128 0x3
	.long	.LASF84
	.byte	0x16
	.uleb128 0x3
	.long	.LASF85
	.byte	0x17
	.uleb128 0x3
	.long	.LASF86
	.byte	0x18
	.uleb128 0x3
	.long	.LASF87
	.byte	0x19
	.uleb128 0x1a
	.string	"Not"
	.byte	0x1a
	.uleb128 0x3
	.long	.LASF88
	.byte	0x1b
	.uleb128 0x3
	.long	.LASF89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF90
	.byte	0x1d
	.uleb128 0x3
	.long	.LASF91
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF92
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF93
	.byte	0x20
	.uleb128 0x3
	.long	.LASF94
	.byte	0x21
	.uleb128 0x3
	.long	.LASF95
	.byte	0x22
	.uleb128 0x3
	.long	.LASF96
	.byte	0x23
	.uleb128 0x3
	.long	.LASF97
	.byte	0x24
	.uleb128 0x3
	.long	.LASF98
	.byte	0x25
	.uleb128 0x3
	.long	.LASF99
	.byte	0x26
	.uleb128 0x3
	.long	.LASF100
	.byte	0x27
	.uleb128 0x3
	.long	.LASF101
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.byte	0x18
	.byte	0xe
	.byte	0x34
	.byte	0x9
	.long	0x4e5
	.uleb128 0x4
	.long	.LASF102
	.byte	0xe
	.byte	0x36
	.byte	0xc
	.long	0x10b
	.byte	0
	.uleb128 0x4
	.long	.LASF103
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x10b
	.byte	0x8
	.uleb128 0x4
	.long	.LASF104
	.byte	0xe
	.byte	0x38
	.byte	0x14
	.long	0x3ae
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF105
	.byte	0xe
	.byte	0x39
	.byte	0x4
	.long	0x4f1
	.uleb128 0xa
	.long	0x4b4
	.uleb128 0x1f
	.byte	0x1
	.byte	0xf
	.byte	0xa
	.byte	0x3
	.long	0x50a
	.uleb128 0x23
	.long	.LASF107
	.byte	0xc
	.long	0x50a
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.byte	0x2
	.long	.LASF106
	.uleb128 0x1f
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.byte	0x3
	.long	0x525
	.uleb128 0x23
	.long	.LASF108
	.byte	0x10
	.long	0x50a
	.byte	0
	.uleb128 0x19
	.long	.LASF110
	.byte	0x18
	.byte	0xf
	.byte	0x8
	.long	0x566
	.uleb128 0x4
	.long	.LASF111
	.byte	0xf
	.byte	0xd
	.byte	0x5
	.long	0x4f6
	.byte	0
	.uleb128 0x4
	.long	.LASF112
	.byte	0xf
	.byte	0x11
	.byte	0x5
	.long	0x511
	.byte	0x1
	.uleb128 0x4
	.long	.LASF113
	.byte	0xf
	.byte	0x12
	.byte	0xa
	.long	0x566
	.byte	0x8
	.uleb128 0x4
	.long	.LASF114
	.byte	0xf
	.byte	0x13
	.byte	0xa
	.long	0x2e
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0xb0
	.uleb128 0x1e
	.long	0x566
	.uleb128 0x22
	.long	.LASF116
	.long	0x69
	.byte	0xf
	.byte	0x16
	.long	0x592
	.uleb128 0x3
	.long	.LASF117
	.byte	0
	.uleb128 0x3
	.long	.LASF118
	.byte	0x1
	.uleb128 0x3
	.long	.LASF119
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0xf
	.byte	0x1e
	.byte	0x21
	.long	0x59e
	.uleb128 0xa
	.long	0x5a3
	.uleb128 0x19
	.long	.LASF121
	.byte	0x20
	.byte	0x1
	.byte	0x10
	.long	0x5e4
	.uleb128 0x4
	.long	.LASF122
	.byte	0x1
	.byte	0x12
	.byte	0xc
	.long	0x3a4
	.byte	0
	.uleb128 0x4
	.long	.LASF123
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.long	0xc8
	.byte	0x8
	.uleb128 0x4
	.long	.LASF124
	.byte	0x1
	.byte	0x14
	.byte	0x1c
	.long	0x643
	.byte	0x10
	.uleb128 0x4
	.long	.LASF125
	.byte	0x1
	.byte	0x15
	.byte	0xf
	.long	0x35f
	.byte	0x18
	.byte	0
	.uleb128 0x33
	.byte	0x7
	.byte	0x4
	.long	0x69
	.byte	0x15
	.byte	0x2f
	.byte	0x1
	.long	0x643
	.uleb128 0x10
	.long	.LASF126
	.value	0x100
	.uleb128 0x10
	.long	.LASF127
	.value	0x200
	.uleb128 0x10
	.long	.LASF128
	.value	0x400
	.uleb128 0x10
	.long	.LASF129
	.value	0x800
	.uleb128 0x10
	.long	.LASF130
	.value	0x1000
	.uleb128 0x10
	.long	.LASF131
	.value	0x2000
	.uleb128 0x10
	.long	.LASF132
	.value	0x4000
	.uleb128 0x10
	.long	.LASF133
	.value	0x8000
	.uleb128 0x3
	.long	.LASF134
	.byte	0x1
	.uleb128 0x3
	.long	.LASF135
	.byte	0x2
	.uleb128 0x3
	.long	.LASF136
	.byte	0x4
	.uleb128 0x3
	.long	.LASF137
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x525
	.uleb128 0x19
	.long	.LASF138
	.byte	0x18
	.byte	0x1
	.byte	0x18
	.long	0x67c
	.uleb128 0x4
	.long	.LASF139
	.byte	0x1
	.byte	0x1a
	.byte	0xc
	.long	0x4e5
	.byte	0
	.uleb128 0x4
	.long	.LASF104
	.byte	0x1
	.byte	0x1b
	.byte	0x13
	.long	0x570
	.byte	0x8
	.uleb128 0x34
	.string	"msg"
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.long	0xb0
	.byte	0x10
	.byte	0
	.uleb128 0x20
	.long	.LASF140
	.byte	0x10
	.byte	0x50
	.long	0x692
	.uleb128 0x8
	.long	0x35f
	.uleb128 0x8
	.long	0xae
	.byte	0
	.uleb128 0x20
	.long	.LASF141
	.byte	0x5
	.byte	0x27
	.long	0x6a8
	.uleb128 0x8
	.long	0xc8
	.uleb128 0x8
	.long	0xde
	.byte	0
	.uleb128 0x24
	.long	.LASF150
	.byte	0x15
	.byte	0x4f
	.byte	0x23
	.long	0x6b4
	.uleb128 0xa
	.long	0x3a9
	.uleb128 0x20
	.long	.LASF142
	.byte	0x11
	.byte	0x25
	.long	0x6d5
	.uleb128 0x8
	.long	0x398
	.uleb128 0x8
	.long	0x35f
	.uleb128 0x8
	.long	0x35f
	.uleb128 0x1b
	.byte	0
	.uleb128 0x14
	.long	.LASF143
	.byte	0x5
	.byte	0x21
	.byte	0x7
	.long	0xae
	.long	0x6f0
	.uleb128 0x8
	.long	0xc8
	.uleb128 0x8
	.long	0x2e
	.byte	0
	.uleb128 0x14
	.long	.LASF144
	.byte	0x5
	.byte	0x24
	.byte	0x8
	.long	0x2e
	.long	0x706
	.uleb128 0x8
	.long	0xc8
	.byte	0
	.uleb128 0x14
	.long	.LASF145
	.byte	0x12
	.byte	0x31
	.byte	0xc
	.long	0x41
	.long	0x727
	.uleb128 0x8
	.long	0x37f
	.uleb128 0x8
	.long	0x41
	.uleb128 0x8
	.long	0x364
	.uleb128 0x1b
	.byte	0
	.uleb128 0x14
	.long	.LASF146
	.byte	0x13
	.byte	0x9c
	.byte	0xc
	.long	0x41
	.long	0x742
	.uleb128 0x8
	.long	0x35f
	.uleb128 0x8
	.long	0x35f
	.byte	0
	.uleb128 0x14
	.long	.LASF147
	.byte	0x5
	.byte	0x1e
	.byte	0x7
	.long	0xae
	.long	0x75d
	.uleb128 0x8
	.long	0xc8
	.uleb128 0x8
	.long	0xae
	.byte	0
	.uleb128 0x35
	.long	.LASF148
	.byte	0x14
	.value	0x2f4
	.byte	0xd
	.long	0x770
	.uleb128 0x8
	.long	0x41
	.byte	0
	.uleb128 0x36
	.long	.LASF149
	.byte	0xc
	.value	0x18d
	.byte	0xc
	.long	0x41
	.long	0x791
	.uleb128 0x8
	.long	0x56b
	.uleb128 0x8
	.long	0x364
	.uleb128 0x8
	.long	0x791
	.byte	0
	.uleb128 0xa
	.long	0x148
	.uleb128 0x24
	.long	.LASF151
	.byte	0x5
	.byte	0xf
	.byte	0x9
	.long	0xc8
	.uleb128 0x14
	.long	.LASF152
	.byte	0x10
	.byte	0x52
	.byte	0x7
	.long	0xae
	.long	0x7c2
	.uleb128 0x8
	.long	0x35f
	.uleb128 0x8
	.long	0x2e
	.uleb128 0x8
	.long	0x2e
	.byte	0
	.uleb128 0x25
	.long	.LASF174
	.byte	0xd0
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d4
	.uleb128 0x9
	.long	.LASF153
	.byte	0xd0
	.byte	0x15
	.long	0x592
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x1c
	.long	.LASF155
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI77
	.byte	.LVU461
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0xd2
	.byte	0x3
	.long	0x882
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST76
	.long	.LVUS76
	.uleb128 0x7
	.quad	.LVL291
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
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
	.quad	.LC22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0xd2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL289
	.long	0x6f0
	.long	0x89a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL292
	.long	0x692
	.long	0x8bf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	diagn_free_impl
	.byte	0
	.uleb128 0x2
	.quad	.LVL293
	.long	0x67c
	.long	0x8e4
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
	.uleb128 0x2
	.quad	.LVL296
	.long	0x25dd
	.long	0x909
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data111
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL297
	.long	0x25e6
	.long	0x92e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data112
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL298
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL299
	.long	0x25f8
	.long	0x95a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data45
	.byte	0
	.uleb128 0x5
	.quad	.LVL300
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL301
	.long	0x25f8
	.long	0x986
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data46
	.byte	0
	.uleb128 0x2
	.quad	.LVL302
	.long	0x25dd
	.long	0x9ab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data113
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL303
	.long	0x25ef
	.uleb128 0x7
	.quad	.LVL304
	.long	0x25f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data48
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xbc
	.long	0x9e4
	.uleb128 0x13
	.long	0x3a
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.long	0x9d4
	.uleb128 0x26
	.long	.LASF160
	.byte	0xc8
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0xb63
	.uleb128 0x9
	.long	.LASF154
	.byte	0xc8
	.byte	0x25
	.long	0xb63
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x1c
	.long	.LASF155
	.long	0xb78
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI65
	.byte	.LVU281
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.byte	0xca
	.byte	0x3
	.long	0xaa9
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x7
	.quad	.LVL175
	.long	0x706
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
	.quad	.LC16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0xca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL176
	.long	0x67c
	.long	0xac1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL177
	.long	0x67c
	.long	0xadf
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL180
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL181
	.long	0x25f8
	.long	0xb0b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data32
	.byte	0
	.uleb128 0x2
	.quad	.LVL182
	.long	0x25dd
	.long	0xb30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data89
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL183
	.long	0x25e6
	.long	0xb55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data90
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL184
	.long	0x25ef
	.byte	0
	.uleb128 0xa
	.long	0x648
	.uleb128 0x12
	.long	0xbc
	.long	0xb78
	.uleb128 0x13
	.long	0x3a
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.long	0xb68
	.uleb128 0x27
	.long	.LASF180
	.byte	0xb5
	.long	0x10b
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xe9c
	.uleb128 0x9
	.long	.LASF153
	.byte	0xb5
	.byte	0x16
	.long	0x592
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x9
	.long	.LASF156
	.byte	0xb6
	.byte	0x15
	.long	0x398
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0xc
	.long	.LASF157
	.byte	0xb8
	.byte	0xc
	.long	0x10b
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0xc
	.long	.LASF158
	.byte	0xb9
	.byte	0xc
	.long	0x10b
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0xc
	.long	.LASF159
	.byte	0xba
	.byte	0xc
	.long	0x10b
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0xc
	.long	.LASF154
	.byte	0xbb
	.byte	0x16
	.long	0xb63
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x15
	.long	.LLRL70
	.long	0xdf5
	.uleb128 0x1d
	.string	"i"
	.byte	0xbb
	.byte	0x29
	.long	0x2e
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x2
	.quad	.LVL256
	.long	0x25dd
	.long	0xc4e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data104
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL257
	.long	0x25e6
	.long	0xc73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data105
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL261
	.long	0xe9c
	.long	0xc99
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL263
	.long	0x6f0
	.long	0xcb1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL264
	.long	0x6d5
	.long	0xccf
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL267
	.long	0x2601
	.long	0xce7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.quad	.LVL268
	.long	0x25dd
	.long	0xd0c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data106
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL269
	.long	0x25dd
	.long	0xd31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data107
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL271
	.long	0x25dd
	.long	0xd56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data108
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL272
	.long	0x25e6
	.long	0xd7b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data109
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL273
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL274
	.long	0x25f8
	.long	0xda7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data41
	.byte	0
	.uleb128 0x2
	.quad	.LVL275
	.long	0x25dd
	.long	0xdcc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data110
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL276
	.long	0x25ef
	.uleb128 0x7
	.quad	.LVL277
	.long	0x25f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data42
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI75
	.byte	.LVU443
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.byte	0xc2
	.byte	0x3
	.long	0xe73
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x7
	.quad	.LVL279
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
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
	.quad	.LC21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0xc2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL285
	.long	0x25ef
	.uleb128 0x7
	.quad	.LVL286
	.long	0x25f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data43
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF161
	.byte	0x8b
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x18cf
	.uleb128 0x9
	.long	.LASF153
	.byte	0x8b
	.byte	0x1d
	.long	0x592
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x9
	.long	.LASF156
	.byte	0x8b
	.byte	0x2a
	.long	0x398
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x9
	.long	.LASF154
	.byte	0x8b
	.byte	0x43
	.long	0xb63
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0xc
	.long	.LASF162
	.byte	0x8d
	.byte	0xc
	.long	0x3a4
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0xc
	.long	.LASF163
	.byte	0x8e
	.byte	0x1d
	.long	0x10b
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0xc
	.long	.LASF164
	.byte	0x90
	.byte	0x1d
	.long	0x10b
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x28
	.long	.LASF102
	.byte	0x95
	.byte	0x1d
	.long	0x10b
	.uleb128 0xc
	.long	.LASF165
	.byte	0x9a
	.byte	0xc
	.long	0x10b
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x15
	.long	.LLRL31
	.long	0x1396
	.uleb128 0x1d
	.string	"i"
	.byte	0x9b
	.byte	0xf
	.long	0x2e
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x15
	.long	.LLRL33
	.long	0x131f
	.uleb128 0xc
	.long	.LASF166
	.byte	0x9d
	.byte	0xd
	.long	0xfa
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x15
	.long	.LLRL35
	.long	0x119d
	.uleb128 0xc
	.long	.LASF167
	.byte	0xa2
	.byte	0x23
	.long	0x10b
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI51
	.byte	.LVU228
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.byte	0xa6
	.byte	0x9
	.long	0x100c
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x7
	.quad	.LVL139
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
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
	.quad	.LC12
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI53
	.byte	.LVU233
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0xa7
	.byte	0x9
	.long	0x1079
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x7
	.quad	.LVL141
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
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
	.quad	.LC13
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL135
	.long	0x18cf
	.long	0x109c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x7
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x2
	.quad	.LVL147
	.long	0x25dd
	.long	0x10c1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL148
	.long	0x25dd
	.long	0x10e6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data82
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL149
	.long	0x25e6
	.long	0x110b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data83
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL150
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL151
	.long	0x25dd
	.long	0x113d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data84
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL152
	.long	0x25dd
	.long	0x1162
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data85
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL154
	.long	0x25f8
	.long	0x1181
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data23
	.byte	0
	.uleb128 0x7
	.quad	.LVL155
	.long	0x25f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data25
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI56
	.byte	.LVU258
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0xab
	.byte	0x7
	.long	0x1211
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x7
	.quad	.LVL159
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
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
	.quad	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL125
	.long	0x1bf2
	.uleb128 0x2
	.quad	.LVL126
	.long	0x6b9
	.long	0x1251
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL128
	.long	0x25e6
	.long	0x1276
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data79
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL129
	.long	0x25dd
	.long	0x129a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL130
	.long	0x260a
	.long	0x12b2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL161
	.long	0x25f8
	.long	0x12d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data27
	.byte	0
	.uleb128 0x2
	.quad	.LVL163
	.long	0x25dd
	.long	0x12f6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data86
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL164
	.long	0x2601
	.uleb128 0x7
	.quad	.LVL165
	.long	0x25f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data29
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL167
	.long	0x25dd
	.long	0x1344
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data87
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL168
	.long	0x25ef
	.long	0x135c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL169
	.long	0x25dd
	.long	0x1381
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data88
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL170
	.long	0x25ef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI44
	.byte	.LVU151
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x92
	.byte	0x3
	.long	0x1411
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x7
	.quad	.LVL91
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
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
	.quad	.LC10
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI46
	.byte	.LVU182
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.byte	0x96
	.byte	0x3
	.long	0x148b
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x7
	.quad	.LVL119
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
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
	.quad	.LC11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI62
	.byte	.LVU240
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.byte	0xb1
	.byte	0x3
	.long	0x14e5
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x7
	.quad	.LVL143
	.long	0x2619
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL70
	.long	0x25e6
	.long	0x150a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data65
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL74
	.long	0x25dd
	.long	0x152f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data61
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL75
	.long	0x25ef
	.long	0x1547
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL76
	.long	0x25dd
	.long	0x156c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data62
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL77
	.long	0x25ef
	.long	0x1584
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL78
	.long	0x25dd
	.long	0x15a9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data63
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL79
	.long	0x25e6
	.long	0x15ce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL80
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL82
	.long	0x19a2
	.long	0x15f9
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
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL85
	.long	0x18cf
	.long	0x1611
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL88
	.long	0x1b96
	.uleb128 0x2
	.quad	.LVL93
	.long	0x25e6
	.long	0x1643
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data78
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL95
	.long	0x25dd
	.long	0x1668
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data66
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL96
	.long	0x25dd
	.long	0x168d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data67
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL98
	.long	0x25dd
	.long	0x16b2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL99
	.long	0x25ef
	.long	0x16ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL100
	.long	0x25dd
	.long	0x16ef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data69
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL101
	.long	0x25e6
	.long	0x1714
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL102
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL103
	.long	0x25dd
	.long	0x1746
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL104
	.long	0x25ef
	.long	0x175e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL105
	.long	0x25dd
	.long	0x1783
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL106
	.long	0x25e6
	.long	0x17a8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL107
	.long	0x25ef
	.uleb128 0x5
	.quad	.LVL108
	.long	0x2601
	.uleb128 0x2
	.quad	.LVL109
	.long	0x25dd
	.long	0x17e7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data74
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL110
	.long	0x25e6
	.long	0x180c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data75
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL111
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL113
	.long	0x25f8
	.long	0x1838
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data19
	.byte	0
	.uleb128 0x2
	.quad	.LVL114
	.long	0x25dd
	.long	0x185d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data76
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL115
	.long	0x25ef
	.long	0x1875
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL116
	.long	0x25dd
	.long	0x1894
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data77
	.byte	0
	.uleb128 0x2
	.quad	.LVL121
	.long	0x25f8
	.long	0x18b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data21
	.byte	0
	.uleb128 0x7
	.quad	.LVL171
	.long	0x25f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data30
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF169
	.byte	0x81
	.long	0x10b
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x199d
	.uleb128 0x9
	.long	.LASF168
	.byte	0x81
	.byte	0x1e
	.long	0x199d
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x9
	.long	.LASF103
	.byte	0x81
	.byte	0x2e
	.long	0x10b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xc
	.long	.LASF164
	.byte	0x83
	.byte	0xc
	.long	0x10b
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x29
	.long	.LLRL5
	.uleb128 0x1d
	.string	"i"
	.byte	0x84
	.byte	0xf
	.long	0x2e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2
	.quad	.LVL11
	.long	0x25e6
	.long	0x1963
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL12
	.long	0x25dd
	.long	0x1987
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data50
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.quad	.LVL14
	.long	0x260a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x106
	.uleb128 0x16
	.long	.LASF170
	.byte	0x6e
	.long	0x10b
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b96
	.uleb128 0x9
	.long	.LASF168
	.byte	0x6e
	.byte	0x29
	.long	0x199d
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x9
	.long	.LASF103
	.byte	0x6e
	.byte	0x39
	.long	0x10b
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0xc
	.long	.LASF102
	.byte	0x70
	.byte	0xc
	.long	0x10b
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x15
	.long	.LLRL16
	.long	0x1a8c
	.uleb128 0x1d
	.string	"i"
	.byte	0x71
	.byte	0xf
	.long	0x2e
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x29
	.long	.LLRL18
	.uleb128 0xc
	.long	.LASF171
	.byte	0x73
	.byte	0xd
	.long	0xfa
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x2
	.quad	.LVL52
	.long	0x25e6
	.long	0x1a52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL53
	.long	0x25dd
	.long	0x1a76
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.quad	.LVL54
	.long	0x260a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL55
	.long	0x25dd
	.long	0x1ab1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL56
	.long	0x25ef
	.long	0x1ac9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL58
	.long	0x6a8
	.uleb128 0x2
	.quad	.LVL59
	.long	0x25e6
	.long	0x1afb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data57
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL60
	.long	0x25dd
	.long	0x1b1f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL61
	.long	0x260a
	.long	0x1b37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL62
	.long	0x25e6
	.long	0x1b5c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data59
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL63
	.long	0x25dd
	.long	0x1b81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data60
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL64
	.long	0x2622
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF172
	.byte	0x5e
	.long	0x35f
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf2
	.uleb128 0x9
	.long	.LASF104
	.byte	0x5e
	.byte	0x27
	.long	0x570
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x5
	.quad	.LVL1
	.long	0x262b
	.uleb128 0x7
	.quad	.LVL2
	.long	0x2634
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data10
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF173
	.byte	0x4e
	.long	0x35f
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c4e
	.uleb128 0x9
	.long	.LASF104
	.byte	0x4e
	.byte	0x27
	.long	0x570
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x5
	.quad	.LVL4
	.long	0x262b
	.uleb128 0x7
	.quad	.LVL5
	.long	0x2634
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data9
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF175
	.byte	0x36
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x2131
	.uleb128 0x9
	.long	.LASF153
	.byte	0x36
	.byte	0x15
	.long	0x592
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x9
	.long	.LASF176
	.byte	0x37
	.byte	0x19
	.long	0x35f
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x9
	.long	.LASF104
	.byte	0x38
	.byte	0x1d
	.long	0x570
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x9
	.long	.LASF139
	.byte	0x39
	.byte	0x16
	.long	0x4e5
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x37
	.string	"fmt"
	.byte	0x1
	.byte	0x3a
	.byte	0x19
	.long	0x35f
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x1b
	.uleb128 0xc
	.long	.LASF154
	.byte	0x41
	.byte	0x16
	.long	0xb63
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x1c
	.long	.LASF155
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x28
	.long	.LASF177
	.byte	0x45
	.byte	0xb
	.long	0x36e
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI67
	.byte	.LVU363
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.byte	0x3e
	.byte	0x7
	.long	0x1d7a
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x7
	.quad	.LVL223
	.long	0x706
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
	.quad	.LC18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI69
	.byte	.LVU380
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.byte	0x47
	.byte	0x36
	.long	0x1dff
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x7
	.quad	.LVL237
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
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
	.quad	.LC8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI71
	.byte	.LVU385
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.byte	0x47
	.byte	0xb7
	.long	0x1e77
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x7
	.quad	.LVL239
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
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
	.quad	.LC20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL211
	.long	0x2131
	.long	0x1e95
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
	.uleb128 0x2
	.quad	.LVL212
	.long	0x7a2
	.long	0x1ebe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.quad	.LVL215
	.long	0x770
	.long	0x1ee5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -400
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7c
	.sleb128 -96
	.byte	0
	.uleb128 0x2
	.quad	.LVL216
	.long	0x742
	.long	0x1f03
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL220
	.long	0x263d
	.uleb128 0x5
	.quad	.LVL224
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL225
	.long	0x25f8
	.long	0x1f3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data34
	.byte	0
	.uleb128 0x2
	.quad	.LVL227
	.long	0x25dd
	.long	0x1f61
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data97
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL228
	.long	0x2646
	.long	0x1f79
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL229
	.long	0x25dd
	.long	0x1f9e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data98
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL230
	.long	0x25e6
	.long	0x1fc3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data99
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL231
	.long	0x264f
	.uleb128 0x2
	.quad	.LVL232
	.long	0x2658
	.long	0x1fe7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.quad	.LVL233
	.long	0x25dd
	.long	0x200c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL234
	.long	0x25e6
	.long	0x2031
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data101
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL240
	.long	0x262b
	.uleb128 0x2
	.quad	.LVL241
	.long	0x75d
	.long	0x2055
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.quad	.LVL242
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL243
	.long	0x25f8
	.long	0x2081
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data36
	.byte	0
	.uleb128 0x5
	.quad	.LVL244
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL245
	.long	0x25f8
	.long	0x20ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data38
	.byte	0
	.uleb128 0x2
	.quad	.LVL247
	.long	0x25dd
	.long	0x20d2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data102
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL248
	.long	0x25e6
	.long	0x20f7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data103
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL249
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL250
	.long	0x25f8
	.long	0x2123
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data40
	.byte	0
	.uleb128 0x5
	.quad	.LVL252
	.long	0x2661
	.byte	0
	.uleb128 0x16
	.long	.LASF178
	.byte	0x2d
	.long	0x50a
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x23cb
	.uleb128 0x9
	.long	.LASF153
	.byte	0x2d
	.byte	0x20
	.long	0x592
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x9
	.long	.LASF179
	.byte	0x2d
	.byte	0x32
	.long	0x35f
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI36
	.byte	.LVU67
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x31
	.byte	0xf
	.long	0x21fc
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x7
	.quad	.LVL37
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
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
	.quad	.LC8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x25b4
	.quad	.LBI38
	.byte	.LVU72
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x31
	.byte	0x90
	.long	0x227a
	.uleb128 0x6
	.long	0x25d0
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x6
	.long	0x25c5
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x7
	.quad	.LVL39
	.long	0x706
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
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
	.quad	.LC9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL23
	.long	0x727
	.long	0x229f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x2
	.quad	.LVL28
	.long	0x25f8
	.long	0x22be
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data13
	.byte	0
	.uleb128 0x2
	.quad	.LVL29
	.long	0x25dd
	.long	0x22e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL30
	.long	0x25e6
	.long	0x2308
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL31
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL33
	.long	0x25dd
	.long	0x233a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data53
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL34
	.long	0x260a
	.long	0x2352
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL40
	.long	0x262b
	.uleb128 0x2
	.quad	.LVL41
	.long	0x75d
	.long	0x2376
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.quad	.LVL42
	.long	0x25ef
	.uleb128 0x2
	.quad	.LVL43
	.long	0x25f8
	.long	0x23a2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data15
	.byte	0
	.uleb128 0x5
	.quad	.LVL44
	.long	0x25ef
	.uleb128 0x7
	.quad	.LVL45
	.long	0x25f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data17
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF181
	.byte	0x20
	.long	0x592
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x259f
	.uleb128 0x9
	.long	.LASF124
	.byte	0x20
	.byte	0x25
	.long	0x643
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x9
	.long	.LASF122
	.byte	0x21
	.byte	0x15
	.long	0x3a4
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x9
	.long	.LASF125
	.byte	0x22
	.byte	0x1e
	.long	0x369
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0xc
	.long	.LASF154
	.byte	0x24
	.byte	0xb
	.long	0x592
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x1c
	.long	.LASF155
	.long	0x25af
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.3
	.uleb128 0x2
	.quad	.LVL189
	.long	0x7a2
	.long	0x2474
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.quad	.LVL192
	.long	0x796
	.uleb128 0x2
	.quad	.LVL198
	.long	0x25dd
	.long	0x24a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data91
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL199
	.long	0x25e6
	.long	0x24cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data92
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL200
	.long	0x2646
	.uleb128 0x2
	.quad	.LVL201
	.long	0x25dd
	.long	0x24fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL202
	.long	0x2646
	.uleb128 0x2
	.quad	.LVL203
	.long	0x25dd
	.long	0x252f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data94
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL204
	.long	0x2646
	.long	0x2547
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL205
	.long	0x25dd
	.long	0x256c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data95
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL206
	.long	0x25e6
	.long	0x2591
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data96
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL207
	.long	0x2646
	.byte	0
	.uleb128 0x12
	.long	0xbc
	.long	0x25af
	.uleb128 0x13
	.long	0x3a
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.long	0x259f
	.uleb128 0x38
	.long	.LASF216
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.long	0x41
	.byte	0x3
	.long	0x25dd
	.uleb128 0x2a
	.long	.LASF182
	.byte	0x4d
	.byte	0x1b
	.long	0x37f
	.uleb128 0x2a
	.long	.LASF183
	.byte	0x4d
	.byte	0x3c
	.long	0x364
	.uleb128 0x1b
	.byte	0
	.uleb128 0xe
	.long	.LASF184
	.long	.LASF186
	.uleb128 0xe
	.long	.LASF185
	.long	.LASF187
	.uleb128 0xe
	.long	.LASF188
	.long	.LASF189
	.uleb128 0xe
	.long	.LASF190
	.long	.LASF191
	.uleb128 0xe
	.long	.LASF192
	.long	.LASF193
	.uleb128 0xe
	.long	.LASF194
	.long	.LASF195
	.uleb128 0x39
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x2
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.long	.LASF196
	.long	.LASF197
	.uleb128 0xe
	.long	.LASF198
	.long	.LASF199
	.uleb128 0xe
	.long	.LASF200
	.long	.LASF201
	.uleb128 0xe
	.long	.LASF202
	.long	.LASF203
	.uleb128 0x2b
	.long	.LASF210
	.long	.LASF210
	.uleb128 0xe
	.long	.LASF204
	.long	.LASF205
	.uleb128 0xe
	.long	.LASF206
	.long	.LASF207
	.uleb128 0xe
	.long	.LASF208
	.long	.LASF209
	.uleb128 0x2b
	.long	.LASF211
	.long	.LASF211
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
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
	.uleb128 0x1e
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x37
	.uleb128 0x5
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
	.uleb128 0x38
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
	.uleb128 0x39
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
.LVUS74:
	.uleb128 0
	.uleb128 .LVU459
	.uleb128 .LVU459
	.uleb128 .LVU468
	.uleb128 .LVU468
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 0
.LLST74:
	.byte	0x4
	.uleb128 .LVL287-.Ltext0
	.uleb128 .LVL288-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL288-.Ltext0
	.uleb128 .LVL294-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL294-.Ltext0
	.uleb128 .LVL295-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL295-.Ltext0
	.uleb128 .LFE65-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS75:
	.uleb128 .LVU461
	.uleb128 .LVU464
.LLST75:
	.byte	0x4
	.uleb128 .LVL290-.Ltext0
	.uleb128 .LVL291-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.byte	0
.LVUS76:
	.uleb128 .LVU461
	.uleb128 .LVU464
.LLST76:
	.byte	0x4
	.uleb128 .LVL290-.Ltext0
	.uleb128 .LVL291-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 0
.LLST45:
	.byte	0x4
	.uleb128 .LVL172-.Ltext0
	.uleb128 .LVL173-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL173-.Ltext0
	.uleb128 .LVL178-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL178-.Ltext0
	.uleb128 .LVL179-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL179-.Ltext0
	.uleb128 .LFE64-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS46:
	.uleb128 .LVU281
	.uleb128 .LVU284
.LLST46:
	.byte	0x4
	.uleb128 .LVL174-.Ltext0
	.uleb128 .LVL175-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC16
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 .LVU281
	.uleb128 .LVU284
.LLST47:
	.byte	0x4
	.uleb128 .LVL174-.Ltext0
	.uleb128 .LVL175-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS64:
	.uleb128 0
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU449
	.uleb128 .LVU449
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 0
.LLST64:
	.byte	0x4
	.uleb128 .LVL253-.Ltext0
	.uleb128 .LVL255-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL255-.Ltext0
	.uleb128 .LVL280-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL280-.Ltext0
	.uleb128 .LVL284-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL284-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 0
.LLST65:
	.byte	0x4
	.uleb128 .LVL253-.Ltext0
	.uleb128 .LVL255-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL255-.Ltext0
	.uleb128 .LVL283-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x4
	.uleb128 .LVL283-.Ltext0
	.uleb128 .LVL284-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL284-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
.LVUS66:
	.uleb128 .LVU401
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU451
	.uleb128 .LVU451
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 0
.LLST66:
	.byte	0x4
	.uleb128 .LVL254-.Ltext0
	.uleb128 .LVL255-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL255-.Ltext0
	.uleb128 .LVL282-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL282-.Ltext0
	.uleb128 .LVL284-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL284-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS67:
	.uleb128 .LVU401
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 0
.LLST67:
	.byte	0x4
	.uleb128 .LVL254-.Ltext0
	.uleb128 .LVL255-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL255-.Ltext0
	.uleb128 .LVL283-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL283-.Ltext0
	.uleb128 .LVL284-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL284-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS68:
	.uleb128 .LVU401
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 0
.LLST68:
	.byte	0x4
	.uleb128 .LVL254-.Ltext0
	.uleb128 .LVL255-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL255-.Ltext0
	.uleb128 .LVL283-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL283-.Ltext0
	.uleb128 .LVL284-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL284-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
.LVUS69:
	.uleb128 .LVU409
	.uleb128 .LVU410
	.uleb128 .LVU410
	.uleb128 .LVU426
	.uleb128 .LVU430
	.uleb128 .LVU433
	.uleb128 .LVU433
	.uleb128 .LVU436
.LLST69:
	.byte	0x4
	.uleb128 .LVL255-.Ltext0
	.uleb128 .LVL256-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL256-1-.Ltext0
	.uleb128 .LVL262-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL265-.Ltext0
	.uleb128 .LVL266-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL266-.Ltext0
	.uleb128 .LVL270-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS71:
	.uleb128 .LVU404
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU450
	.uleb128 .LVU453
	.uleb128 0
.LLST71:
	.byte	0x4
	.uleb128 .LVL254-.Ltext0
	.uleb128 .LVL255-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL255-.Ltext0
	.uleb128 .LVL281-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL284-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS72:
	.uleb128 .LVU443
	.uleb128 .LVU446
.LLST72:
	.byte	0x4
	.uleb128 .LVL278-.Ltext0
	.uleb128 .LVL279-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC21
	.byte	0x9f
	.byte	0
.LVUS73:
	.uleb128 .LVU443
	.uleb128 .LVU446
.LLST73:
	.byte	0x4
	.uleb128 .LVL278-.Ltext0
	.uleb128 .LVL279-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x3
	.byte	0x75
	.sleb128 -24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL111-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL111-.Ltext0
	.uleb128 .LVL112-.Ltext0
	.uleb128 0x3
	.byte	0x75
	.sleb128 -24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LFE62-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL145-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL145-.Ltext0
	.uleb128 .LVL146-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LFE62-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL74-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL74-1-.Ltext0
	.uleb128 .LVL137-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL137-.Ltext0
	.uleb128 .LVL146-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LVL153-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL153-.Ltext0
	.uleb128 .LVL156-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL156-.Ltext0
	.uleb128 .LVL170-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL170-.Ltext0
	.uleb128 .LFE62-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU138
	.uleb128 .LVU245
	.uleb128 .LVU247
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL144-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LFE62-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS24:
	.uleb128 .LVU141
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU160
	.uleb128 .LVU162
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU195
.LLST24:
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LVL98-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL98-1-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS25:
	.uleb128 .LVU147
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU160
	.uleb128 .LVU168
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x4
	.uleb128 .LVL104-.Ltext0
	.uleb128 .LVL105-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL105-1-.Ltext0
	.uleb128 .LVL145-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x4
	.uleb128 .LVL145-.Ltext0
	.uleb128 .LVL146-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 -88
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LFE62-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
.LVUS26:
	.uleb128 .LVU187
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU215
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL119-.Ltext0
	.uleb128 .LVL120-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL122-.Ltext0
	.uleb128 .LVL131-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL132-.Ltext0
	.uleb128 .LVL133-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL133-.Ltext0
	.uleb128 .LVL145-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL145-.Ltext0
	.uleb128 .LVL146-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LVL147-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL147-1-.Ltext0
	.uleb128 .LVL156-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL156-.Ltext0
	.uleb128 .LVL158-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL158-.Ltext0
	.uleb128 .LVL160-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL160-.Ltext0
	.uleb128 .LVL161-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL161-1-.Ltext0
	.uleb128 .LFE62-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
.LVUS32:
	.uleb128 .LVU189
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU220
	.uleb128 .LVU247
	.uleb128 .LVU250
	.uleb128 .LVU255
	.uleb128 .LVU273
.LLST32:
	.byte	0x4
	.uleb128 .LVL119-.Ltext0
	.uleb128 .LVL120-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL122-.Ltext0
	.uleb128 .LVL134-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LVL150-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL156-.Ltext0
	.uleb128 .LVL170-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS34:
	.uleb128 .LVU198
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU203
	.uleb128 .LVU213
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU255
	.uleb128 .LVU258
	.uleb128 .LVU263
	.uleb128 .LVU264
	.uleb128 .LVU265
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU269
.LLST34:
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LVL124-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL124-.Ltext0
	.uleb128 .LVL126-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL130-.Ltext0
	.uleb128 .LVL132-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL132-.Ltext0
	.uleb128 .LVL133-.Ltext0
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL146-.Ltext0
	.uleb128 .LVL147-1-.Ltext0
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL156-.Ltext0
	.uleb128 .LVL158-.Ltext0
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL160-.Ltext0
	.uleb128 .LVL161-1-.Ltext0
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL162-.Ltext0
	.uleb128 .LVL163-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL163-1-.Ltext0
	.uleb128 .LVL166-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS36:
	.uleb128 .LVU223
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU238
	.uleb128 .LVU252
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU255
.LLST36:
	.byte	0x4
	.uleb128 .LVL135-.Ltext0
	.uleb128 .LVL136-.Ltext0
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL136-.Ltext0
	.uleb128 .LVL138-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL138-.Ltext0
	.uleb128 .LVL141-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL153-.Ltext0
	.uleb128 .LVL154-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL154-1-.Ltext0
	.uleb128 .LVL156-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS37:
	.uleb128 .LVU228
	.uleb128 .LVU231
.LLST37:
	.byte	0x4
	.uleb128 .LVL138-.Ltext0
	.uleb128 .LVL139-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU228
	.uleb128 .LVU231
.LLST38:
	.byte	0x4
	.uleb128 .LVL138-.Ltext0
	.uleb128 .LVL139-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS39:
	.uleb128 .LVU233
	.uleb128 .LVU236
.LLST39:
	.byte	0x4
	.uleb128 .LVL140-.Ltext0
	.uleb128 .LVL141-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU233
	.uleb128 .LVU236
.LLST40:
	.byte	0x4
	.uleb128 .LVL140-.Ltext0
	.uleb128 .LVL141-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS41:
	.uleb128 .LVU258
	.uleb128 .LVU261
.LLST41:
	.byte	0x4
	.uleb128 .LVL158-.Ltext0
	.uleb128 .LVL159-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU258
	.uleb128 .LVU261
.LLST42:
	.byte	0x4
	.uleb128 .LVL158-.Ltext0
	.uleb128 .LVL159-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS27:
	.uleb128 .LVU151
	.uleb128 .LVU154
.LLST27:
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU151
	.uleb128 .LVU154
.LLST28:
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS29:
	.uleb128 .LVU182
	.uleb128 .LVU185
.LLST29:
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU182
	.uleb128 .LVU185
.LLST30:
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS43:
	.uleb128 .LVU240
	.uleb128 .LVU243
.LLST43:
	.byte	0x4
	.uleb128 .LVL142-.Ltext0
	.uleb128 .LVL143-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+9747
	.sleb128 0
	.byte	0
.LVUS44:
	.uleb128 .LVU240
	.uleb128 .LVU243
.LLST44:
	.byte	0x4
	.uleb128 .LVL142-.Ltext0
	.uleb128 .LVL143-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LFE61-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LFE61-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU20
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE61-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS6:
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU41
.LLST6:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU83
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 0
.LLST15:
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS17:
	.uleb128 .LVU85
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU100
.LLST17:
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS19:
	.uleb128 .LVU90
	.uleb128 .LVU96
.LLST19:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LFE59-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL4-1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE58-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU358
	.uleb128 .LVU358
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU360
	.uleb128 .LVU360
	.uleb128 0
.LLST52:
	.byte	0x4
	.uleb128 .LVL208-.Ltext0
	.uleb128 .LVL209-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL209-.Ltext0
	.uleb128 .LVL217-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL217-.Ltext0
	.uleb128 .LVL218-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL218-.Ltext0
	.uleb128 .LVL219-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL219-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS53:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU369
	.uleb128 .LVU369
	.uleb128 0
.LLST53:
	.byte	0x4
	.uleb128 .LVL208-.Ltext0
	.uleb128 .LVL209-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL209-.Ltext0
	.uleb128 .LVL213-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL213-.Ltext0
	.uleb128 .LVL218-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL218-.Ltext0
	.uleb128 .LVL226-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL226-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS54:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 0
.LLST54:
	.byte	0x4
	.uleb128 .LVL208-.Ltext0
	.uleb128 .LVL209-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL209-.Ltext0
	.uleb128 .LVL210-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.byte	0x4
	.uleb128 .LVL210-.Ltext0
	.uleb128 .LVL218-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL218-.Ltext0
	.uleb128 .LVL220-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL220-1-.Ltext0
	.uleb128 .LVL221-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.byte	0x4
	.uleb128 .LVL221-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 0
.LLST55:
	.byte	0x4
	.uleb128 .LVL208-.Ltext0
	.uleb128 .LVL209-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL209-.Ltext0
	.uleb128 .LVL210-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0x4
	.uleb128 .LVL210-.Ltext0
	.uleb128 .LVL218-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL218-.Ltext0
	.uleb128 .LVL220-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL220-1-.Ltext0
	.uleb128 .LVL221-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0x4
	.uleb128 .LVL221-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 0
.LLST56:
	.byte	0x4
	.uleb128 .LVL208-.Ltext0
	.uleb128 .LVL209-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL209-.Ltext0
	.uleb128 .LVL210-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0x4
	.uleb128 .LVL210-.Ltext0
	.uleb128 .LVL218-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL218-.Ltext0
	.uleb128 .LVL220-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL220-1-.Ltext0
	.uleb128 .LVL221-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0x4
	.uleb128 .LVL221-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 .LVU341
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU356
	.uleb128 .LVU369
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU379
	.uleb128 .LVU390
	.uleb128 .LVU391
	.uleb128 .LVU393
	.uleb128 .LVU396
.LLST57:
	.byte	0x4
	.uleb128 .LVL213-.Ltext0
	.uleb128 .LVL214-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL214-.Ltext0
	.uleb128 .LVL216-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL226-.Ltext0
	.uleb128 .LVL227-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL227-1-.Ltext0
	.uleb128 .LVL235-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL241-.Ltext0
	.uleb128 .LVL242-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL246-.Ltext0
	.uleb128 .LVL251-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS58:
	.uleb128 .LVU363
	.uleb128 .LVU366
.LLST58:
	.byte	0x4
	.uleb128 .LVL222-.Ltext0
	.uleb128 .LVL223-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC18
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 .LVU363
	.uleb128 .LVU366
.LLST59:
	.byte	0x4
	.uleb128 .LVL222-.Ltext0
	.uleb128 .LVL223-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS60:
	.uleb128 .LVU380
	.uleb128 .LVU383
.LLST60:
	.byte	0x4
	.uleb128 .LVL236-.Ltext0
	.uleb128 .LVL237-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS61:
	.uleb128 .LVU380
	.uleb128 .LVU383
.LLST61:
	.byte	0x4
	.uleb128 .LVL236-.Ltext0
	.uleb128 .LVL237-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS62:
	.uleb128 .LVU385
	.uleb128 .LVU388
.LLST62:
	.byte	0x4
	.uleb128 .LVL238-.Ltext0
	.uleb128 .LVL239-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.byte	0
.LVUS63:
	.uleb128 .LVU385
	.uleb128 .LVU388
.LLST63:
	.byte	0x4
	.uleb128 .LVL238-.Ltext0
	.uleb128 .LVL239-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL28-1-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS9:
	.uleb128 .LVU67
	.uleb128 .LVU70
.LLST9:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU67
	.uleb128 .LVU70
.LLST10:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS11:
	.uleb128 .LVU72
	.uleb128 .LVU75
.LLST11:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU72
	.uleb128 .LVU75
.LLST12:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU323
	.uleb128 .LVU323
	.uleb128 0
.LLST48:
	.byte	0x4
	.uleb128 .LVL185-.Ltext0
	.uleb128 .LVL188-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL188-.Ltext0
	.uleb128 .LVL193-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL193-.Ltext0
	.uleb128 .LVL197-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL197-.Ltext0
	.uleb128 .LVL200-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL200-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS49:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 0
.LLST49:
	.byte	0x4
	.uleb128 .LVL185-.Ltext0
	.uleb128 .LVL187-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL187-.Ltext0
	.uleb128 .LVL196-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL196-.Ltext0
	.uleb128 .LVL197-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL197-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 0
.LLST50:
	.byte	0x4
	.uleb128 .LVL185-.Ltext0
	.uleb128 .LVL186-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL186-.Ltext0
	.uleb128 .LVL195-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL195-.Ltext0
	.uleb128 .LVL197-.Ltext0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL197-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS51:
	.uleb128 .LVU302
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU316
	.uleb128 .LVU316
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST51:
	.byte	0x4
	.uleb128 .LVL190-.Ltext0
	.uleb128 .LVL191-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL191-.Ltext0
	.uleb128 .LVL194-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL194-.Ltext0
	.uleb128 .LVL198-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL198-1-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x53
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
	.uleb128 .LBB34-.Ltext0
	.uleb128 .LBE34-.Ltext0
	.byte	0x4
	.uleb128 .LBB35-.Ltext0
	.uleb128 .LBE35-.Ltext0
	.byte	0
.LLRL16:
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0x4
	.uleb128 .LBB43-.Ltext0
	.uleb128 .LBE43-.Ltext0
	.byte	0
.LLRL18:
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0x4
	.uleb128 .LBB42-.Ltext0
	.uleb128 .LBE42-.Ltext0
	.byte	0
.LLRL31:
	.byte	0x4
	.uleb128 .LBB48-.Ltext0
	.uleb128 .LBE48-.Ltext0
	.byte	0x4
	.uleb128 .LBB60-.Ltext0
	.uleb128 .LBE60-.Ltext0
	.byte	0x4
	.uleb128 .LBB61-.Ltext0
	.uleb128 .LBE61-.Ltext0
	.byte	0x4
	.uleb128 .LBB64-.Ltext0
	.uleb128 .LBE64-.Ltext0
	.byte	0
.LLRL33:
	.byte	0x4
	.uleb128 .LBB49-.Ltext0
	.uleb128 .LBE49-.Ltext0
	.byte	0x4
	.uleb128 .LBB58-.Ltext0
	.uleb128 .LBE58-.Ltext0
	.byte	0x4
	.uleb128 .LBB59-.Ltext0
	.uleb128 .LBE59-.Ltext0
	.byte	0
.LLRL35:
	.byte	0x4
	.uleb128 .LBB50-.Ltext0
	.uleb128 .LBE50-.Ltext0
	.byte	0x4
	.uleb128 .LBB55-.Ltext0
	.uleb128 .LBE55-.Ltext0
	.byte	0
.LLRL70:
	.byte	0x4
	.uleb128 .LBB73-.Ltext0
	.uleb128 .LBE73-.Ltext0
	.byte	0x4
	.uleb128 .LBB74-.Ltext0
	.uleb128 .LBE74-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF189:
	.string	"__builtin___asan_report_load8"
.LASF138:
	.string	"diagnostic"
.LASF154:
	.string	"diagn"
.LASF46:
	.string	"_shortbuf"
.LASF215:
	.string	"_IO_lock_t"
.LASF117:
	.string	"DiagnosticWarning"
.LASF23:
	.string	"gp_offset"
.LASF174:
	.string	"diagn_free"
.LASF63:
	.string	"stderr"
.LASF158:
	.string	"nr_warnings"
.LASF35:
	.string	"_IO_buf_end"
.LASF150:
	.string	"__ctype_b_loc"
.LASF153:
	.string	"self"
.LASF184:
	.string	"__ubsan_handle_type_mismatch_v1"
.LASF103:
	.string	"stream_offs"
.LASF185:
	.string	"__ubsan_handle_pointer_overflow"
.LASF33:
	.string	"_IO_write_end"
.LASF7:
	.string	"unsigned int"
.LASF51:
	.string	"_freeres_list"
.LASF207:
	.string	"__builtin___asan_report_store4"
.LASF160:
	.string	"diagn_free_impl"
.LASF205:
	.string	"__builtin___asan_report_store8"
.LASF27:
	.string	"_flags"
.LASF39:
	.string	"_markers"
.LASF170:
	.string	"diagn_line_start_offset"
.LASF208:
	.string	"__asan_report_store_n"
.LASF17:
	.string	"array_t"
.LASF107:
	.string	"warn_multichar"
.LASF80:
	.string	"StarAssign"
.LASF175:
	.string	"diagn_push"
.LASF164:
	.string	"line_no"
.LASF69:
	.string	"Identifier"
.LASF181:
	.string	"diagn_new"
.LASF169:
	.string	"diagn_lineno"
.LASF62:
	.string	"stdout"
.LASF139:
	.string	"lexeme"
.LASF38:
	.string	"_IO_save_end"
.LASF59:
	.string	"_IO_codecvt"
.LASF131:
	.string	"_ISspace"
.LASF124:
	.string	"comp_args"
.LASF25:
	.string	"overflow_arg_area"
.LASF16:
	.string	"long long unsigned int"
.LASF156:
	.string	"file"
.LASF118:
	.string	"DiagnosticError"
.LASF142:
	.string	"cfprintf"
.LASF210:
	.string	"__asan_stack_malloc_1"
.LASF173:
	.string	"diagn_enum_ansi_code"
.LASF149:
	.string	"vasprintf"
.LASF37:
	.string	"_IO_backup_base"
.LASF94:
	.string	"BitwiseXorAssign"
.LASF48:
	.string	"_offset"
.LASF191:
	.string	"__builtin___ubsan_handle_nonnull_arg"
.LASF121:
	.string	"diagnostic_impl"
.LASF127:
	.string	"_ISlower"
.LASF41:
	.string	"_fileno"
.LASF180:
	.string	"diagn_flush"
.LASF22:
	.string	"__gnuc_va_list"
.LASF92:
	.string	"BitwiseOrAssign"
.LASF119:
	.string	"DiagnosticNote"
.LASF9:
	.string	"size_t"
.LASF100:
	.string	"Comment"
.LASF73:
	.string	"RightBrace"
.LASF130:
	.string	"_ISxdigit"
.LASF140:
	.string	"__chk_free_impl"
.LASF30:
	.string	"_IO_read_base"
.LASF106:
	.string	"_Bool"
.LASF90:
	.string	"BitwiseAnd"
.LASF87:
	.string	"AssignAssign"
.LASF12:
	.string	"__uint64_t"
.LASF125:
	.string	"path"
.LASF183:
	.string	"__fmt"
.LASF163:
	.string	"line_start_offset"
.LASF201:
	.string	"__builtin___asan_handle_no_return"
.LASF182:
	.string	"__stream"
.LASF115:
	.string	"lexeme_type"
.LASF15:
	.string	"char"
.LASF190:
	.string	"__ubsan_handle_nonnull_arg"
.LASF145:
	.string	"__fprintf_chk"
.LASF54:
	.string	"_mode"
.LASF120:
	.string	"diagn_t"
.LASF74:
	.string	"Minus"
.LASF58:
	.string	"_IO_marker"
.LASF28:
	.string	"_IO_read_ptr"
.LASF113:
	.string	"filenames"
.LASF148:
	.string	"exit"
.LASF203:
	.string	"__builtin___ubsan_handle_builtin_unreachable"
.LASF146:
	.string	"strcmp"
.LASF144:
	.string	"array_length"
.LASF19:
	.string	"uint8_t"
.LASF83:
	.string	"Decrement"
.LASF57:
	.string	"array_impl"
.LASF61:
	.string	"va_list"
.LASF31:
	.string	"_IO_write_base"
.LASF72:
	.string	"LeftBrace"
.LASF4:
	.string	"long long int"
.LASF36:
	.string	"_IO_save_base"
.LASF93:
	.string	"BitwiseAndAssign"
.LASF135:
	.string	"_IScntrl"
.LASF151:
	.string	"array_new"
.LASF71:
	.string	"RightParen"
.LASF68:
	.string	"CharacterLiteral"
.LASF129:
	.string	"_ISdigit"
.LASF91:
	.string	"BitwiseXor"
.LASF114:
	.string	"nr_filenames"
.LASF81:
	.string	"ModulusAssign"
.LASF52:
	.string	"_freeres_buf"
.LASF88:
	.string	"NotAssign"
.LASF82:
	.string	"Increment"
.LASF79:
	.string	"DivAssign"
.LASF53:
	.string	"__pad5"
.LASF186:
	.string	"__builtin___ubsan_handle_type_mismatch_v1"
.LASF172:
	.string	"diagn_enum_to_string"
.LASF187:
	.string	"__builtin___ubsan_handle_pointer_overflow"
.LASF45:
	.string	"_vtable_offset"
.LASF179:
	.string	"warn_name"
.LASF116:
	.string	"diagn_type"
.LASF212:
	.ascii	"GNU C17 13.3.1 202"
	.string	"40614 -mtune=generic -march=x86-64 -ggdb -Os -Og -std=gnu17 -p -fanalyzer -fsanitize=address,undefined,leak -fstack-protector-strong -fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero -fno-omit-frame-pointer -fno-common -fcf-protection"
.LASF152:
	.string	"__chk_calloc_impl"
.LASF177:
	.string	"args"
.LASF126:
	.string	"_ISupper"
.LASF123:
	.string	"diagns"
.LASF50:
	.string	"_wide_data"
.LASF78:
	.string	"MinusAssign"
.LASF122:
	.string	"src_stream"
.LASF111:
	.string	"warn_flags"
.LASF101:
	.string	"MultiComment"
.LASF136:
	.string	"_ISpunct"
.LASF29:
	.string	"_IO_read_end"
.LASF86:
	.string	"Assign"
.LASF132:
	.string	"_ISprint"
.LASF11:
	.string	"short int"
.LASF85:
	.string	"LogicalAnd"
.LASF171:
	.string	"curr"
.LASF3:
	.string	"long int"
.LASF70:
	.string	"LeftParen"
.LASF18:
	.string	"array_free_callback_t"
.LASF102:
	.string	"length"
.LASF161:
	.string	"diagn_flush_single"
.LASF64:
	.string	"fptr_t"
.LASF211:
	.string	"__stack_chk_fail"
.LASF67:
	.string	"StringLiteral"
.LASF60:
	.string	"_IO_wide_data"
.LASF20:
	.string	"uint64_t"
.LASF214:
	.string	"__va_list_tag"
.LASF157:
	.string	"nr_errors"
.LASF216:
	.string	"fprintf"
.LASF143:
	.string	"array_get"
.LASF165:
	.string	"rel_line"
.LASF84:
	.string	"LogicalOr"
.LASF24:
	.string	"fp_offset"
.LASF10:
	.string	"__uint8_t"
.LASF133:
	.string	"_ISgraph"
.LASF168:
	.string	"start"
.LASF105:
	.string	"lexeme_t"
.LASF98:
	.string	"Semi"
.LASF21:
	.string	"uintptr_t"
.LASF47:
	.string	"_lock"
.LASF2:
	.string	"long unsigned int"
.LASF43:
	.string	"_old_offset"
.LASF109:
	.string	"_IO_FILE"
.LASF26:
	.string	"reg_save_area"
.LASF128:
	.string	"_ISalpha"
.LASF209:
	.string	"__builtin___asan_report_store_n"
.LASF194:
	.string	"__asan_report_load1"
.LASF198:
	.string	"__asan_report_load2"
.LASF192:
	.string	"__asan_report_load4"
.LASF188:
	.string	"__asan_report_load8"
.LASF206:
	.string	"__asan_report_store4"
.LASF178:
	.string	"diagn_is_warn_enabled"
.LASF104:
	.string	"type"
.LASF5:
	.string	"unsigned char"
.LASF204:
	.string	"__asan_report_store8"
.LASF108:
	.string	"tokenize_comments"
.LASF32:
	.string	"_IO_write_ptr"
.LASF176:
	.string	"warn_name_opt"
.LASF95:
	.string	"BitwiseNegate"
.LASF76:
	.string	"Modulus"
.LASF202:
	.string	"__ubsan_handle_builtin_unreachable"
.LASF96:
	.string	"BwdSlash"
.LASF112:
	.string	"parse_flags"
.LASF97:
	.string	"Newline"
.LASF147:
	.string	"array_append"
.LASF137:
	.string	"_ISalnum"
.LASF159:
	.string	"nr_notes"
.LASF89:
	.string	"BitwiseOr"
.LASF49:
	.string	"_codecvt"
.LASF110:
	.string	"compilation_args"
.LASF77:
	.string	"AddAssign"
.LASF13:
	.string	"__off_t"
.LASF134:
	.string	"_ISblank"
.LASF8:
	.string	"signed char"
.LASF6:
	.string	"short unsigned int"
.LASF213:
	.string	"__builtin_va_list"
.LASF166:
	.string	"current"
.LASF155:
	.string	"__func__"
.LASF75:
	.string	"Star"
.LASF40:
	.string	"_chain"
.LASF66:
	.string	"FloatingLiteral"
.LASF56:
	.string	"FILE"
.LASF42:
	.string	"_flags2"
.LASF167:
	.string	"lines_left"
.LASF197:
	.string	"__builtin_fputc"
.LASF65:
	.string	"NumericLiteral"
.LASF44:
	.string	"_cur_column"
.LASF141:
	.string	"array_free_cb"
.LASF162:
	.string	"lexeme_raw"
.LASF99:
	.string	"EndOfFile"
.LASF14:
	.string	"__off64_t"
.LASF200:
	.string	"__asan_handle_no_return"
.LASF55:
	.string	"_unused2"
.LASF34:
	.string	"_IO_buf_base"
.LASF195:
	.string	"__builtin___asan_report_load1"
.LASF199:
	.string	"__builtin___asan_report_load2"
.LASF193:
	.string	"__builtin___asan_report_load4"
.LASF196:
	.string	"fputc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/unazed/Programming/c/ucc-0.2.0"
.LASF0:
	.string	"src/diagnostics.c"
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
