	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/unazed/Programming/c/ucc-0.2.0" "src/main.c"
	.section	.rodata
	.align 32
.LC0:
	.string	"Yes"
	.zero	60
	.align 32
.LC1:
	.string	"No"
	.zero	61
	.align 32
.LC2:
	.string	"src/main.c"
	.zero	53
	.align 32
.LC3:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0mCompilation flags:\n"
	.zero	42
	.align 32
.LC4:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0m\tTokenize comments? %s\n"
	.zero	38
	.align 32
.LC5:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0mWarnings:\n"
	.zero	51
	.align 32
.LC6:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0m\tWarn on multi-char. character literals? %s\n"
	.zero	49
	.text
	.type	dbg_dump_comp_args, @function
dbg_dump_comp_args:
.LASANPC62:
.LVL0:
.LFB62:
	.file 1 "src/main.c"
	.loc 1 108 1 view -0
	.cfi_startproc
	.loc 1 108 1 is_stmt 0 view .LVU1
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
	.loc 1 109 3 is_stmt 1 view .LVU2
	leaq	stdout(%rip), %rdi
.LVL1:
	.loc 1 109 3 is_stmt 0 view .LVU3
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L19
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L20
.L3:
.LVL2:
.LBB21:
.LBI21:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 77 1 is_stmt 1 view .LVU4
.LBB22:
	.loc 2 79 3 view .LVU5
	.loc 2 79 10 is_stmt 0 view .LVU6
	movl	$109, %r8d
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL3:
	.loc 2 79 10 view .LVU7
.LBE22:
.LBE21:
	.loc 1 110 3 is_stmt 1 view .LVU8
	.loc 1 110 137 is_stmt 0 view .LVU9
	testq	%rbx, %rbx
	je	.L4
	testb	$7, %bl
	jne	.L4
.L5:
	leaq	1(%rbx), %rdx
	cmpq	$-1, %rbx
	jnb	.L21
.L6:
	.loc 1 110 3 view .LVU10
	testb	$1, 1(%rbx)
	je	.L17
	.loc 1 110 3 discriminator 1 view .LVU11
	leaq	.LC0(%rip), %r13
.L7:
	.loc 1 110 3 discriminator 4 view .LVU12
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L22
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L23
.L9:
.LVL4:
.LBB23:
.LBI23:
	.loc 2 77 1 is_stmt 1 view .LVU13
.LBB24:
	.loc 2 79 3 view .LVU14
	.loc 2 79 10 is_stmt 0 view .LVU15
	movq	%r13, %r9
	movl	$110, %r8d
	leaq	.LC2(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL5:
	.loc 2 79 10 view .LVU16
.LBE24:
.LBE23:
	.loc 1 111 3 is_stmt 1 view .LVU17
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L24
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L25
.L11:
.LVL6:
.LBB25:
.LBI25:
	.loc 2 77 1 view .LVU18
.LBB26:
	.loc 2 79 3 view .LVU19
	.loc 2 79 10 is_stmt 0 view .LVU20
	movl	$111, %r8d
	leaq	.LC2(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL7:
	.loc 2 79 10 view .LVU21
.LBE26:
.LBE25:
	.loc 1 112 3 is_stmt 1 view .LVU22
	.loc 1 112 154 is_stmt 0 view .LVU23
	testq	%rbx, %rbx
	je	.L12
	testb	$7, %bl
	jne	.L12
.L13:
	.loc 1 112 3 view .LVU24
	testb	$1, (%rbx)
	je	.L18
	.loc 1 112 3 discriminator 1 view .LVU25
	leaq	.LC0(%rip), %r12
.L14:
	.loc 1 112 3 discriminator 4 view .LVU26
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L26
	movq	stdout(%rip), %rbx
.LVL8:
	.loc 1 112 3 discriminator 4 view .LVU27
	testq	%rbx, %rbx
	je	.L27
.L16:
.LVL9:
.LBB27:
.LBI27:
	.loc 2 77 1 is_stmt 1 view .LVU28
.LBB28:
	.loc 2 79 3 view .LVU29
	.loc 2 79 10 is_stmt 0 view .LVU30
	movq	%r12, %r9
	movl	$112, %r8d
	leaq	.LC2(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL10:
	.loc 2 79 10 view .LVU31
.LBE28:
.LBE27:
	.loc 1 113 1 view .LVU32
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL11:
.L19:
	.cfi_restore_state
	.loc 1 109 3 view .LVU33
	call	__asan_report_load8@PLT
.LVL12:
.L20:
	leaq	.Lubsan_data11(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL13:
	jmp	.L3
.L4:
	.loc 1 110 137 view .LVU34
	movq	%rbx, %rsi
	leaq	.Lubsan_data43(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL14:
	jmp	.L5
.L21:
	.loc 1 110 137 view .LVU35
	movq	%rbx, %rsi
	leaq	.Lubsan_data44(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL15:
	jmp	.L6
.L17:
	.loc 1 110 3 discriminator 2 view .LVU36
	leaq	.LC1(%rip), %r13
	jmp	.L7
.L22:
	.loc 1 110 3 discriminator 4 view .LVU37
	call	__asan_report_load8@PLT
.LVL16:
.L23:
	leaq	.Lubsan_data13(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL17:
	jmp	.L9
.L24:
	.loc 1 111 3 view .LVU38
	call	__asan_report_load8@PLT
.LVL18:
.L25:
	leaq	.Lubsan_data15(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL19:
	jmp	.L11
.L12:
	.loc 1 112 154 view .LVU39
	movq	%rbx, %rsi
	leaq	.Lubsan_data45(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL20:
	jmp	.L13
.L18:
	.loc 1 112 3 discriminator 2 view .LVU40
	leaq	.LC1(%rip), %r12
	jmp	.L14
.L26:
	.loc 1 112 3 discriminator 4 view .LVU41
	call	__asan_report_load8@PLT
.LVL21:
.L27:
	.loc 1 112 3 discriminator 4 view .LVU42
	leaq	.Lubsan_data17(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL22:
	jmp	.L16
	.cfi_endproc
.LFE62:
	.size	dbg_dump_comp_args, .-dbg_dump_comp_args
	.type	set_default_flags, @function
set_default_flags:
.LASANPC61:
.LVL23:
.LFB61:
	.loc 1 100 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 100 1 is_stmt 0 view .LVU44
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %rbx
	.loc 1 101 3 is_stmt 1 view .LVU45
	.loc 1 101 39 is_stmt 0 view .LVU46
	testq	%rdi, %rdi
	je	.L29
	testb	$7, %dil
	jne	.L29
.LVL24:
.L30:
	.loc 1 101 39 view .LVU47
	leaq	1(%rbx), %rdx
	cmpq	$-1, %rbx
	jnb	.L36
.L31:
	leaq	1(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	movq	%rdi, %rdx
	andl	$7, %edx
	cmpb	%dl, %al
	jg	.L32
	testb	%al, %al
	jne	.L37
.L32:
	movzbl	1(%rbx), %eax
	andl	$-2, %eax
	movb	%al, 1(%rbx)
	.loc 1 102 3 is_stmt 1 view .LVU48
	.loc 1 102 35 is_stmt 0 view .LVU49
	testq	%rbx, %rbx
	je	.L33
	testb	$7, %bl
	jne	.L33
.L34:
	movq	%rbx, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L35
	jle	.L38
.L35:
	movzbl	(%rbx), %eax
	orl	$1, %eax
	movb	%al, (%rbx)
	.loc 1 103 1 view .LVU50
	addq	$8, %rsp
	popq	%rbx
.LVL25:
	.loc 1 103 1 view .LVU51
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL26:
.L29:
	.cfi_restore_state
	.loc 1 101 39 view .LVU52
	movq	%rbx, %rsi
	leaq	.Lubsan_data46(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL27:
	jmp	.L30
.L36:
	.loc 1 101 39 view .LVU53
	movq	%rbx, %rsi
	leaq	.Lubsan_data47(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL28:
	jmp	.L31
.L37:
	.loc 1 101 39 view .LVU54
	call	__asan_report_store1@PLT
.LVL29:
.L33:
	.loc 1 102 35 view .LVU55
	movq	%rbx, %rsi
	leaq	.Lubsan_data48(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL30:
	jmp	.L34
.L38:
	.loc 1 102 35 view .LVU56
	movq	%rbx, %rdi
	call	__asan_report_store1@PLT
.LVL31:
	.cfi_endproc
.LFE61:
	.size	set_default_flags, .-set_default_flags
	.section	.rodata
	.align 32
.LC7:
	.string	"no-"
	.zero	60
	.align 32
.LC8:
	.string	"multichar"
	.zero	54
	.text
	.type	parse_warning_opt, @function
parse_warning_opt:
.LASANPC58:
.LVL32:
.LFB58:
	.loc 1 24 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 24 1 is_stmt 0 view .LVU58
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
	movq	%rsi, %rbx
	.loc 1 25 2 is_stmt 1 view .LVU59
.LVL33:
	.loc 1 26 2 view .LVU60
	.loc 1 27 3 view .LVU61
	.loc 1 27 8 is_stmt 0 view .LVU62
	testq	%rsi, %rsi
	je	.L50
.LVL34:
.L40:
	.loc 1 27 8 view .LVU63
	movl	$3, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rbx, %rdi
	call	strncmp@PLT
.LVL35:
	.loc 1 27 6 discriminator 1 view .LVU64
	testl	%eax, %eax
	jne	.L41
	.loc 1 29 7 is_stmt 1 view .LVU65
.LVL36:
	.loc 1 30 7 view .LVU66
	.loc 1 30 11 is_stmt 0 view .LVU67
	leaq	3(%rbx), %rdx
	cmpq	$-3, %rbx
	jnb	.L51
.L42:
	addq	$3, %rbx
.LVL37:
	.loc 1 32 3 is_stmt 1 view .LVU68
	.loc 1 29 14 is_stmt 0 view .LVU69
	movl	$0, %r13d
.LVL38:
.L43:
	.loc 1 32 8 view .LVU70
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	call	strcmp@PLT
.LVL39:
	.loc 1 32 6 discriminator 1 view .LVU71
	testl	%eax, %eax
	jne	.L49
	.loc 1 34 7 is_stmt 1 view .LVU72
	.loc 1 34 39 is_stmt 0 view .LVU73
	testq	%r12, %r12
	je	.L45
	testb	$7, %r12b
	jne	.L45
.L46:
	.loc 1 34 39 view .LVU74
	movq	%r12, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L47
	jle	.L52
.L47:
	movzbl	(%r12), %eax
	andl	$-2, %eax
	orl	%eax, %r13d
	movb	%r13b, (%r12)
	.loc 1 35 7 is_stmt 1 view .LVU75
.LVL40:
	.loc 1 35 21 is_stmt 0 view .LVU76
	movl	$1, %eax
.LVL41:
.L39:
	.loc 1 38 1 view .LVU77
	addq	$8, %rsp
	popq	%rbx
.LVL42:
	.loc 1 38 1 view .LVU78
	popq	%r12
.LVL43:
	.loc 1 38 1 view .LVU79
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL44:
.L50:
	.cfi_restore_state
	.loc 1 27 8 view .LVU80
	leaq	.Lubsan_data19(%rip), %rdi
.LVL45:
	.loc 1 27 8 view .LVU81
	call	__ubsan_handle_nonnull_arg@PLT
.LVL46:
	jmp	.L40
.LVL47:
.L51:
	.loc 1 30 11 view .LVU82
	movq	%rbx, %rsi
	leaq	.Lubsan_data49(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL48:
	jmp	.L42
.LVL49:
.L41:
	.loc 1 32 3 is_stmt 1 view .LVU83
	.loc 1 32 8 is_stmt 0 view .LVU84
	testq	%rbx, %rbx
	je	.L53
	movl	$1, %r13d
	jmp	.L43
.L53:
	leaq	.Lubsan_data21(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL50:
	movl	$1, %r13d
	jmp	.L43
.LVL51:
.L45:
	.loc 1 34 39 view .LVU85
	movq	%r12, %rsi
	leaq	.Lubsan_data50(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL52:
	jmp	.L46
.L52:
	.loc 1 34 39 view .LVU86
	movq	%r12, %rdi
	call	__asan_report_store1@PLT
.LVL53:
.L49:
	.loc 1 26 7 view .LVU87
	movl	$0, %eax
	.loc 1 37 3 is_stmt 1 view .LVU88
	.loc 1 37 10 is_stmt 0 view .LVU89
	jmp	.L39
	.cfi_endproc
.LFE58:
	.size	parse_warning_opt, .-parse_warning_opt
	.section	.rodata
	.align 32
.LC9:
	.string	"tokenize-comments"
	.zero	46
	.text
	.type	parse_compiler_opt, @function
parse_compiler_opt:
.LASANPC59:
.LVL54:
.LFB59:
	.loc 1 42 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 42 1 is_stmt 0 view .LVU91
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
	movq	%rsi, %rbx
	.loc 1 43 2 is_stmt 1 view .LVU92
.LVL55:
	.loc 1 44 2 view .LVU93
	.loc 1 45 3 view .LVU94
	.loc 1 45 8 is_stmt 0 view .LVU95
	testq	%rsi, %rsi
	je	.L66
.LVL56:
.L55:
	.loc 1 45 8 view .LVU96
	movl	$3, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rbx, %rdi
	call	strncmp@PLT
.LVL57:
	.loc 1 45 6 discriminator 1 view .LVU97
	testl	%eax, %eax
	jne	.L56
	.loc 1 47 7 is_stmt 1 view .LVU98
.LVL58:
	.loc 1 48 7 view .LVU99
	.loc 1 48 11 is_stmt 0 view .LVU100
	leaq	3(%rbx), %rdx
	cmpq	$-3, %rbx
	jnb	.L67
.L57:
	addq	$3, %rbx
.LVL59:
	.loc 1 50 3 is_stmt 1 view .LVU101
	.loc 1 47 14 is_stmt 0 view .LVU102
	movl	$0, %r13d
.LVL60:
.L58:
	.loc 1 50 8 view .LVU103
	leaq	.LC9(%rip), %rsi
	movq	%rbx, %rdi
	call	strcmp@PLT
.LVL61:
	.loc 1 50 6 discriminator 1 view .LVU104
	testl	%eax, %eax
	jne	.L65
	.loc 1 52 7 is_stmt 1 view .LVU105
	.loc 1 52 43 is_stmt 0 view .LVU106
	testq	%r12, %r12
	je	.L60
	testb	$7, %r12b
	jne	.L60
.L61:
	.loc 1 52 43 view .LVU107
	leaq	1(%r12), %rdx
	cmpq	$-1, %r12
	jnb	.L68
.L62:
	leaq	1(%r12), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	movq	%rdi, %rdx
	andl	$7, %edx
	cmpb	%dl, %al
	jg	.L63
	testb	%al, %al
	jne	.L69
.L63:
	movzbl	1(%r12), %eax
	andl	$-2, %eax
	orl	%eax, %r13d
	movb	%r13b, 1(%r12)
	.loc 1 53 7 is_stmt 1 view .LVU108
.LVL62:
	.loc 1 53 21 is_stmt 0 view .LVU109
	movl	$1, %eax
.LVL63:
.L54:
	.loc 1 56 1 view .LVU110
	addq	$8, %rsp
	popq	%rbx
.LVL64:
	.loc 1 56 1 view .LVU111
	popq	%r12
.LVL65:
	.loc 1 56 1 view .LVU112
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL66:
.L66:
	.cfi_restore_state
	.loc 1 45 8 view .LVU113
	leaq	.Lubsan_data23(%rip), %rdi
.LVL67:
	.loc 1 45 8 view .LVU114
	call	__ubsan_handle_nonnull_arg@PLT
.LVL68:
	jmp	.L55
.LVL69:
.L67:
	.loc 1 48 11 view .LVU115
	movq	%rbx, %rsi
	leaq	.Lubsan_data51(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL70:
	jmp	.L57
.LVL71:
.L56:
	.loc 1 50 3 is_stmt 1 view .LVU116
	.loc 1 50 8 is_stmt 0 view .LVU117
	testq	%rbx, %rbx
	je	.L70
	movl	$1, %r13d
	jmp	.L58
.L70:
	leaq	.Lubsan_data25(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL72:
	movl	$1, %r13d
	jmp	.L58
.LVL73:
.L60:
	.loc 1 52 43 view .LVU118
	movq	%r12, %rsi
	leaq	.Lubsan_data52(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL74:
	jmp	.L61
.L68:
	.loc 1 52 43 view .LVU119
	movq	%r12, %rsi
	leaq	.Lubsan_data53(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL75:
	jmp	.L62
.L69:
	.loc 1 52 43 view .LVU120
	call	__asan_report_store1@PLT
.LVL76:
.L65:
	.loc 1 44 7 view .LVU121
	movl	$0, %eax
	.loc 1 55 3 is_stmt 1 view .LVU122
	.loc 1 55 10 is_stmt 0 view .LVU123
	jmp	.L54
	.cfi_endproc
.LFE59:
	.size	parse_compiler_opt, .-parse_compiler_opt
	.section	.rodata
	.align 32
.LC10:
	.string	"The -W flag requires a valid warning specifier"
	.zero	49
	.align 32
.LC11:
	.string	"Unknown warning specifier \"%s\""
	.zero	33
	.align 32
.LC12:
	.string	"The -C flag requires a valid compilation flag specifier"
	.zero	40
	.align 32
.LC13:
	.string	"Unknown compilation flag \"%s\""
	.zero	34
	.text
	.type	parse_opt, @function
parse_opt:
.LASANPC60:
.LVL77:
.LFB60:
	.loc 1 60 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 60 1 is_stmt 0 view .LVU125
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
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movl	%edi, %r12d
	movq	%rsi, %r14
	movq	%rdx, %rbx
	.loc 1 61 3 is_stmt 1 view .LVU126
	.loc 1 61 28 is_stmt 0 view .LVU127
	testq	%rdx, %rdx
	je	.L72
	testb	$7, %dl
	jne	.L72
.LVL78:
.L73:
	.loc 1 61 28 view .LVU128
	leaq	40(%rbx), %rdx
	cmpq	$-40, %rbx
	jnb	.L119
.L74:
	leaq	40(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L120
	movq	40(%rbx), %r13
.LVL79:
	.loc 1 62 3 is_stmt 1 view .LVU129
	cmpl	$87, %r12d
	je	.L76
	jg	.L77
	testl	%r12d, %r12d
	je	.L78
	cmpl	$67, %r12d
	jne	.L121
	.loc 1 76 7 view .LVU130
	.loc 1 76 10 is_stmt 0 view .LVU131
	testq	%r14, %r14
	je	.L122
.L111:
	.loc 1 78 7 is_stmt 1 view .LVU132
	.loc 1 78 12 is_stmt 0 view .LVU133
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	parse_compiler_opt
.LVL80:
	.loc 1 78 10 discriminator 1 view .LVU134
	testb	%al, %al
	je	.L123
	.loc 1 91 10 view .LVU135
	movl	$0, %eax
	jmp	.L71
.LVL81:
.L72:
	.loc 1 61 28 view .LVU136
	movq	%rbx, %rsi
.LVL82:
	.loc 1 61 28 view .LVU137
	leaq	.Lubsan_data54(%rip), %rdi
.LVL83:
	.loc 1 61 28 view .LVU138
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL84:
	.loc 1 61 28 view .LVU139
	jmp	.L73
.L119:
	.loc 1 61 28 view .LVU140
	movq	%rbx, %rsi
	leaq	.Lubsan_data55(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL85:
	jmp	.L74
.L120:
	.loc 1 61 28 view .LVU141
	call	__asan_report_load8@PLT
.LVL86:
.L121:
	.loc 1 62 3 view .LVU142
	movl	$7, %eax
	jmp	.L71
.L77:
	cmpl	$16777217, %r12d
	jne	.L124
	.loc 1 82 7 is_stmt 1 view .LVU143
	.loc 1 82 16 is_stmt 0 view .LVU144
	testq	%rbx, %rbx
	je	.L112
	testb	$7, %bl
	jne	.L112
.L113:
	.loc 1 82 16 view .LVU145
	leaq	32(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L114
	cmpb	$3, %al
	jle	.L125
.L114:
	.loc 1 82 10 view .LVU146
	cmpl	$0, 32(%rbx)
	je	.L126
	.loc 1 91 10 view .LVU147
	movl	$0, %eax
	jmp	.L71
.L124:
	.loc 1 62 3 view .LVU148
	movl	$7, %eax
	jmp	.L71
.L78:
	.loc 1 65 7 is_stmt 1 view .LVU149
	.loc 1 65 36 is_stmt 0 view .LVU150
	testq	%rbx, %rbx
	je	.L82
	testb	$7, %bl
	jne	.L82
.L83:
	.loc 1 65 36 view .LVU151
	leaq	16(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L127
	movq	16(%rbx), %r15
	.loc 1 65 48 view .LVU152
	testq	%rbx, %rbx
	je	.L85
	testb	$7, %bl
	jne	.L85
.L86:
	leaq	24(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L87
	cmpb	$3, %al
	jle	.L128
.L87:
	movl	24(%rbx), %eax
	movl	%eax, -52(%rbp)
	cltq
	.loc 1 65 42 view .LVU153
	leaq	-8(,%rax,8), %r14
.LVL87:
	.loc 1 65 30 view .LVU154
	leaq	(%r15,%r14), %rdx
	testq	%r14, %r14
	js	.L88
	cmpq	%r15, %rdx
	jnb	.L89
.L90:
	movq	%r15, %rsi
	leaq	.Lubsan_data58(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL88:
	jmp	.L89
.LVL89:
.L82:
	.loc 1 65 36 view .LVU155
	movq	%rbx, %rsi
	leaq	.Lubsan_data56(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL90:
	jmp	.L83
.L127:
	.loc 1 65 36 view .LVU156
	call	__asan_report_load8@PLT
.LVL91:
.L85:
	.loc 1 65 48 view .LVU157
	movq	%rbx, %rsi
	leaq	.Lubsan_data57(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL92:
	jmp	.L86
.L128:
	.loc 1 65 48 view .LVU158
	call	__asan_report_load4@PLT
.LVL93:
.L88:
	.loc 1 65 30 view .LVU159
	cmpq	%rdx, %r15
	jb	.L90
.L89:
	addq	%r15, %r14
	.loc 1 65 28 view .LVU160
	testq	%r13, %r13
	je	.L91
	testb	$7, %r13b
	jne	.L91
.L92:
	leaq	8(%r13), %rdx
	cmpq	$-8, %r13
	jnb	.L129
.L93:
	leaq	8(%r13), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L130
	movq	%r14, 8(%r13)
	.loc 1 66 7 is_stmt 1 view .LVU161
	.loc 1 66 49 is_stmt 0 view .LVU162
	testq	%rbx, %rbx
	je	.L95
	testb	$7, %bl
	jne	.L95
.L96:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %eax
	testb	%al, %al
	je	.L97
	cmpb	$3, %al
	jle	.L131
.L97:
	movl	8(%rbx), %r14d
	.loc 1 66 63 view .LVU163
	testq	%rbx, %rbx
	je	.L98
	testb	$7, %bl
	jne	.L98
.L99:
	.loc 1 66 56 view .LVU164
	movl	%r14d, %r15d
	subl	-52(%rbp), %r15d
	jo	.L132
.L100:
	.loc 1 66 71 view .LVU165
	leal	1(%r15), %r15d
	.loc 1 66 31 view .LVU166
	testq	%r13, %r13
	je	.L102
	testb	$7, %r13b
	jne	.L102
.L103:
	leaq	16(%r13), %rdx
	cmpq	$-16, %r13
	jnb	.L133
.L104:
	leaq	16(%r13), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L134
	movq	%r15, 16(%r13)
	.loc 1 67 7 is_stmt 1 view .LVU167
	.loc 1 67 26 is_stmt 0 view .LVU168
	testq	%rbx, %rbx
	je	.L106
	testb	$7, %bl
	jne	.L106
.L107:
	.loc 1 67 19 view .LVU169
	testq	%rbx, %rbx
	je	.L108
	testb	$7, %bl
	jne	.L108
.L109:
	movl	%r14d, 24(%rbx)
	.loc 1 68 7 is_stmt 1 view .LVU170
	.loc 1 91 10 is_stmt 0 view .LVU171
	movl	%r12d, %eax
.L71:
	.loc 1 92 1 view .LVU172
	addq	$24, %rsp
	popq	%rbx
.LVL94:
	.loc 1 92 1 view .LVU173
	popq	%r12
.LVL95:
	.loc 1 92 1 view .LVU174
	popq	%r13
.LVL96:
	.loc 1 92 1 view .LVU175
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL97:
.L91:
	.cfi_restore_state
	.loc 1 65 28 view .LVU176
	movq	%r13, %rsi
	leaq	.Lubsan_data59(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL98:
	jmp	.L92
.L129:
	.loc 1 65 28 view .LVU177
	movq	%r13, %rsi
	leaq	.Lubsan_data60(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL99:
	jmp	.L93
.L130:
	.loc 1 65 28 view .LVU178
	call	__asan_report_store8@PLT
.LVL100:
.L95:
	.loc 1 66 49 view .LVU179
	movq	%rbx, %rsi
	leaq	.Lubsan_data61(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL101:
	jmp	.L96
.L131:
	.loc 1 66 49 view .LVU180
	call	__asan_report_load4@PLT
.LVL102:
.L98:
	.loc 1 66 63 view .LVU181
	movq	%rbx, %rsi
	leaq	.Lubsan_data62(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL103:
	jmp	.L99
.L132:
	.loc 1 66 56 view .LVU182
	movslq	-52(%rbp), %rdx
	movslq	%r14d, %rax
	movq	%rax, %rsi
	leaq	.Lubsan_data68(%rip), %rdi
	call	__ubsan_handle_sub_overflow@PLT
.LVL104:
	jmp	.L100
.L102:
	.loc 1 66 31 view .LVU183
	movq	%r13, %rsi
	leaq	.Lubsan_data63(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL105:
	jmp	.L103
.L133:
	.loc 1 66 31 view .LVU184
	movq	%r13, %rsi
	leaq	.Lubsan_data64(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL106:
	jmp	.L104
.L134:
	.loc 1 66 31 view .LVU185
	call	__asan_report_store8@PLT
.LVL107:
.L106:
	.loc 1 67 26 view .LVU186
	movq	%rbx, %rsi
	leaq	.Lubsan_data65(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL108:
	jmp	.L107
.L108:
	.loc 1 67 19 view .LVU187
	movq	%rbx, %rsi
	leaq	.Lubsan_data66(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL109:
	jmp	.L109
.LVL110:
.L76:
	.loc 1 70 7 is_stmt 1 view .LVU188
	.loc 1 70 10 is_stmt 0 view .LVU189
	testq	%r14, %r14
	je	.L135
.L110:
	.loc 1 72 7 is_stmt 1 view .LVU190
	.loc 1 72 12 is_stmt 0 view .LVU191
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	parse_warning_opt
.LVL111:
	.loc 1 72 10 discriminator 1 view .LVU192
	testb	%al, %al
	je	.L136
	.loc 1 91 10 view .LVU193
	movl	$0, %eax
	jmp	.L71
.L135:
	.loc 1 71 9 is_stmt 1 view .LVU194
	leaq	.LC10(%rip), %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	argp_error@PLT
.LVL112:
	jmp	.L110
.L136:
	.loc 1 73 9 view .LVU195
	movq	%r14, %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
	call	argp_error@PLT
.LVL113:
	.loc 1 91 10 is_stmt 0 view .LVU196
	movl	$0, %eax
	jmp	.L71
.L122:
	.loc 1 77 9 is_stmt 1 view .LVU197
	leaq	.LC12(%rip), %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	argp_error@PLT
.LVL114:
	jmp	.L111
.L123:
	.loc 1 79 9 view .LVU198
	movq	%r14, %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rbx, %rdi
	call	argp_error@PLT
.LVL115:
	.loc 1 91 10 is_stmt 0 view .LVU199
	movl	$0, %eax
	jmp	.L71
.L112:
	.loc 1 82 16 view .LVU200
	movq	%rbx, %rsi
	leaq	.Lubsan_data67(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL116:
	jmp	.L113
.L125:
	.loc 1 82 16 view .LVU201
	call	__asan_report_load4@PLT
.LVL117:
.L126:
	.loc 1 84 9 is_stmt 1 view .LVU202
.LBB29:
.LBI29:
	.file 3 "/usr/include/argp.h"
	.loc 3 526 1 view .LVU203
.LBB30:
	.loc 3 528 3 view .LVU204
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L137
	movl	$262, %edx
	movq	stderr(%rip), %rsi
	movq	%rbx, %rdi
	call	argp_state_help@PLT
.LVL118:
	.loc 3 528 3 is_stmt 0 view .LVU205
.LBE30:
.LBE29:
	.loc 1 85 9 is_stmt 1 view .LVU206
	call	__asan_handle_no_return@PLT
.LVL119:
	movl	$1, %edi
	call	exit@PLT
.LVL120:
.L137:
.LBB32:
.LBB31:
	.loc 3 528 3 is_stmt 0 view .LVU207
	call	__asan_report_load8@PLT
.LVL121:
.LBE31:
.LBE32:
	.cfi_endproc
.LFE60:
	.size	parse_opt, .-parse_opt
	.globl	__asan_stack_malloc_1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"1 32 24 8 args:119"
	.section	.rodata
	.align 32
.LC15:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;34mverbose: \033[0mRead in \033[1;37m%zu\033[0m filename(s):\n"
	.zero	53
	.align 32
.LC16:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;34mverbose: \033[0m%zu. \033[1;37m%s\033[0m\n"
	.zero	38
	.align 32
.LC17:
	.string	"r"
	.zero	62
	.align 32
.LC18:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0mencountered %lu error(s) during lexing, exiting\n"
	.zero	45
	.text
	.globl	main
	.type	main, @function
main:
.LASANPC63:
.LVL122:
.LFB63:
	.loc 1 118 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 118 1 is_stmt 0 view .LVU209
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
	subq	$168, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movl	%edi, %r14d
	movq	%rsi, %r13
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	%rax, -200(%rbp)
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	jne	.L189
.LVL123:
.L138:
	.loc 1 118 1 view .LVU210
	movq	-192(%rbp), %rcx
	leaq	128(%rcx), %rbx
	movq	$1102416563, (%rcx)
	leaq	.LC14(%rip), %rax
	movq	%rax, 8(%rcx)
	leaq	.LASANPC63(%rip), %rax
	movq	%rax, 16(%rcx)
	movq	%rcx, %rax
	shrq	$3, %rax
	movq	%rax, -208(%rbp)
	movl	$-235802127, 2147450880(%rax)
	movl	$-218103808, 2147450884(%rax)
	movl	$-202116109, 2147450888(%rax)
	.loc 1 118 1 view .LVU211
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 1 119 3 is_stmt 1 view .LVU212
	.loc 1 119 27 is_stmt 0 discriminator 1 view .LVU213
	leaq	32(%rcx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %edx
	leaq	55(%rcx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movzbl	2147450880(%rcx), %ecx
	andl	$7, %eax
	cmpb	%al, %cl
	setle	%sil
	testb	%cl, %cl
	setne	%al
	testb	%al, %sil
	jne	.L188
	testb	%dl, %dl
	setne	%cl
	setle	%al
	testb	%al, %cl
	jne	.L188
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbx)
	movq	$0, -80(%rbx)
	.loc 1 120 3 is_stmt 1 view .LVU214
	leaq	-96(%rbx), %r12
	movq	%r12, %rdi
	call	set_default_flags
.LVL124:
	.loc 1 121 3 view .LVU215
	movq	%r12, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%r13, %rdx
	movl	%r14d, %esi
	leaq	argp(%rip), %rdi
	call	argp_parse@PLT
.LVL125:
	.loc 1 123 3 view .LVU216
	movq	%r12, %rdi
	call	dbg_dump_comp_args
.LVL126:
	.loc 1 125 3 view .LVU217
	leaq	-80(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L190
	movq	-80(%rbx), %r13
.LVL127:
	.loc 1 125 3 is_stmt 0 view .LVU218
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L191
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L192
.L146:
.LVL128:
.LBB33:
.LBI33:
	.loc 2 77 1 is_stmt 1 view .LVU219
.LBB34:
	.loc 2 79 3 view .LVU220
	.loc 2 79 10 is_stmt 0 view .LVU221
	movq	%r13, %r9
	movl	$125, %r8d
	leaq	.LC2(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL129:
	.loc 2 79 10 view .LVU222
.LBE34:
.LBE33:
	.loc 1 127 3 is_stmt 1 view .LVU223
.LBB35:
	.loc 1 127 8 view .LVU224
	.loc 1 127 15 is_stmt 0 view .LVU225
	movl	$0, %r13d
	.loc 1 127 3 view .LVU226
	jmp	.L147
.LVL130:
.L189:
	.loc 1 127 3 view .LVU227
.LBE35:
	.loc 1 118 1 view .LVU228
	movl	$96, %edi
.LVL131:
	.loc 1 118 1 view .LVU229
	call	__asan_stack_malloc_1@PLT
.LVL132:
	.loc 1 118 1 view .LVU230
	testq	%rax, %rax
	je	.L138
	movq	%rax, -192(%rbp)
	jmp	.L138
.L188:
	.loc 1 119 27 discriminator 1 view .LVU231
	movl	$24, %esi
	call	__asan_report_store_n@PLT
.LVL133:
.L190:
	.loc 1 125 3 view .LVU232
	call	__asan_report_load8@PLT
.LVL134:
.L191:
	.loc 1 125 3 view .LVU233
	call	__asan_report_load8@PLT
.LVL135:
.L192:
	leaq	.Lubsan_data27(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL136:
	jmp	.L146
.LVL137:
.L198:
.LBB38:
	.loc 1 128 128 view .LVU234
	call	__asan_report_load8@PLT
.LVL138:
.L149:
	.loc 1 128 138 view .LVU235
	cmpq	%rdx, %r12
	jb	.L151
.L150:
	.loc 1 128 5 view .LVU236
	addq	%r14, %r12
	je	.L152
	testb	$7, %r12b
	jne	.L152
.L153:
	movq	%r12, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L193
	movq	(%r12), %r14
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L194
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L195
.L156:
.LVL139:
.LBB36:
.LBI36:
	.loc 2 77 1 is_stmt 1 view .LVU237
.LBB37:
	.loc 2 79 3 view .LVU238
	.loc 2 79 10 is_stmt 0 view .LVU239
	subq	$8, %rsp
	pushq	%r14
	movq	%r13, %r9
	movl	$128, %r8d
	leaq	.LC2(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL140:
	.loc 2 79 10 view .LVU240
.LBE37:
.LBE36:
	.loc 1 127 45 is_stmt 1 discriminator 3 view .LVU241
	addq	$1, %r13
.LVL141:
	.loc 1 127 45 is_stmt 0 discriminator 3 view .LVU242
	addq	$16, %rsp
.LVL142:
.L147:
	.loc 1 127 24 is_stmt 1 discriminator 1 view .LVU243
	.loc 1 127 30 is_stmt 0 discriminator 1 view .LVU244
	leaq	-80(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L196
	.loc 1 127 24 discriminator 1 view .LVU245
	cmpq	-80(%rbx), %r13
	jnb	.L197
	.loc 1 128 5 is_stmt 1 view .LVU246
	.loc 1 128 128 is_stmt 0 view .LVU247
	leaq	-88(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L198
	movq	-88(%rbx), %r12
	.loc 1 128 138 view .LVU248
	leaq	0(,%r13,8), %r14
	leaq	(%r12,%r14), %rdx
	testq	%r14, %r14
	js	.L149
	cmpq	%r12, %rdx
	jnb	.L150
.L151:
	movq	%r12, %rsi
	leaq	.Lubsan_data69(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL143:
	jmp	.L150
.L152:
	.loc 1 128 5 view .LVU249
	movq	%r12, %rsi
	leaq	.Lubsan_data70(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL144:
	jmp	.L153
.L193:
	movq	%r12, %rdi
	call	__asan_report_load8@PLT
.LVL145:
.L194:
	call	__asan_report_load8@PLT
.LVL146:
.L195:
	leaq	.Lubsan_data29(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL147:
	jmp	.L156
.L196:
	.loc 1 127 30 discriminator 1 view .LVU250
	call	__asan_report_load8@PLT
.LVL148:
.L197:
.LBE38:
	.loc 1 129 17 is_stmt 1 view .LVU251
	.loc 1 129 37 is_stmt 0 view .LVU252
	leaq	-96(%rbx), %rdi
	call	lex_ctx_new@PLT
.LVL149:
	movq	%rax, -184(%rbp)
.LVL150:
	.loc 1 130 3 is_stmt 1 view .LVU253
.LBB39:
	.loc 1 130 8 view .LVU254
	.loc 1 130 15 is_stmt 0 view .LVU255
	movl	$0, %r15d
	.loc 1 130 3 view .LVU256
	jmp	.L159
.LVL151:
.L207:
.LBB40:
	.loc 1 132 56 view .LVU257
	call	__asan_report_load8@PLT
.LVL152:
.L161:
	.loc 1 132 66 view .LVU258
	cmpq	%rdx, %r13
	jb	.L163
.L162:
	.loc 1 132 38 view .LVU259
	addq	%r12, %r13
	je	.L164
	testb	$7, %r13b
	jne	.L164
.L165:
	movq	%r13, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L199
	movq	0(%r13), %r13
	testq	%r13, %r13
	je	.L200
.L167:
	leaq	.LC17(%rip), %rsi
	movq	%r13, %rdi
	call	io_open_file@PLT
.LVL153:
	movq	%rax, %r14
.LVL154:
	.loc 1 133 5 is_stmt 1 view .LVU260
	.loc 1 133 8 is_stmt 0 view .LVU261
	testq	%rax, %rax
	je	.L168
	.loc 1 135 9 is_stmt 1 view .LVU262
	.loc 1 135 45 is_stmt 0 view .LVU263
	leaq	-88(%rbx), %rdi
	movq	%rdi, %rax
.LVL155:
	.loc 1 135 45 view .LVU264
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L201
	movq	-88(%rbx), %r13
	.loc 1 135 55 view .LVU265
	leaq	0(%r13,%r12), %rdx
	testq	%r12, %r12
	js	.L170
	cmpq	%r13, %rdx
	jnb	.L171
.L172:
	movq	%r13, %rsi
	leaq	.Lubsan_data73(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL156:
	jmp	.L171
.LVL157:
.L164:
	.loc 1 132 38 view .LVU266
	movq	%r13, %rsi
	leaq	.Lubsan_data72(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL158:
	jmp	.L165
.L199:
	movq	%r13, %rdi
	call	__asan_report_load8@PLT
.LVL159:
.L200:
	leaq	.Lubsan_data31(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL160:
	jmp	.L167
.LVL161:
.L201:
	.loc 1 135 45 view .LVU267
	call	__asan_report_load8@PLT
.LVL162:
.L170:
	.loc 1 135 55 view .LVU268
	cmpq	%rdx, %r13
	jb	.L172
.L171:
	.loc 1 135 9 view .LVU269
	addq	%r12, %r13
	je	.L173
	testb	$7, %r13b
	jne	.L173
.L174:
	movq	%r13, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L202
	movq	0(%r13), %r12
	cmpq	$0, -184(%rbp)
	je	.L203
.L176:
	testq	%r12, %r12
	je	.L204
.L177:
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	-184(%rbp), %rdi
	call	lex_ctx_load_file@PLT
.LVL163:
	.loc 1 136 9 is_stmt 1 view .LVU270
	movq	%r14, %rdi
	call	io_close_file@PLT
.LVL164:
.L168:
	.loc 1 136 9 is_stmt 0 view .LVU271
.LBE40:
	.loc 1 130 45 is_stmt 1 discriminator 2 view .LVU272
	addq	$1, %r15
.LVL165:
.L159:
	.loc 1 130 24 discriminator 1 view .LVU273
	.loc 1 130 30 is_stmt 0 discriminator 1 view .LVU274
	leaq	-80(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L205
	.loc 1 130 24 discriminator 1 view .LVU275
	cmpq	-80(%rbx), %r15
	jnb	.L206
.LBB41:
	.loc 1 132 19 is_stmt 1 view .LVU276
	.loc 1 132 56 is_stmt 0 view .LVU277
	leaq	-88(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L207
	movq	-88(%rbx), %r13
	.loc 1 132 66 view .LVU278
	leaq	0(,%r15,8), %r12
	leaq	0(%r13,%r12), %rdx
	testq	%r12, %r12
	js	.L161
	cmpq	%r13, %rdx
	jnb	.L162
.L163:
	movq	%r13, %rsi
	leaq	.Lubsan_data71(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL166:
	jmp	.L162
.LVL167:
.L173:
	.loc 1 135 9 view .LVU279
	movq	%r13, %rsi
	leaq	.Lubsan_data74(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL168:
	jmp	.L174
.L202:
	movq	%r13, %rdi
	call	__asan_report_load8@PLT
.LVL169:
.L203:
	leaq	.Lubsan_data33(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL170:
	jmp	.L176
.L204:
	leaq	.Lubsan_data35(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL171:
	jmp	.L177
.LVL172:
.L205:
	.loc 1 135 9 view .LVU280
.LBE41:
	.loc 1 130 30 discriminator 1 view .LVU281
	call	__asan_report_load8@PLT
.LVL173:
.L206:
.LBE39:
	.loc 1 139 17 is_stmt 1 view .LVU282
	.loc 1 139 41 is_stmt 0 view .LVU283
	cmpq	$0, -184(%rbp)
	je	.L208
.L180:
	movq	-184(%rbp), %rbx
	movq	%rbx, %rdi
	call	lex_ctx_process@PLT
.LVL174:
	movq	%rax, %r12
.LVL175:
	.loc 1 140 17 is_stmt 1 view .LVU284
	.loc 1 140 41 is_stmt 0 view .LVU285
	testq	%rbx, %rbx
	je	.L209
.LVL176:
.L181:
	.loc 1 140 41 view .LVU286
	movq	-184(%rbp), %rdi
	call	tkn_new@PLT
.LVL177:
	movq	%rax, %rbx
.LVL178:
	.loc 1 141 3 is_stmt 1 view .LVU287
	.loc 1 141 6 is_stmt 0 view .LVU288
	testq	%r12, %r12
	jne	.L210
.LVL179:
.L182:
	.loc 1 149 3 is_stmt 1 view .LVU289
	testq	%rbx, %rbx
	je	.L211
.L185:
	movq	%rbx, %rdi
	call	tkn_free@PLT
.LVL180:
	.loc 1 150 3 view .LVU290
	cmpq	$0, -184(%rbp)
	je	.L212
.L186:
	movq	-184(%rbp), %rdi
	call	lex_ctx_free@PLT
.LVL181:
	.loc 1 152 3 view .LVU291
	call	dbg_mem_dump_stats@PLT
.LVL182:
	.loc 1 154 3 view .LVU292
	.loc 1 118 1 is_stmt 0 view .LVU293
	movq	-192(%rbp), %rsi
	cmpq	%rsi, -200(%rbp)
	jne	.L213
	movq	-208(%rbp), %rax
	movq	$0, 2147450880(%rax)
	movl	$0, 2147450888(%rax)
.LVL183:
.L140:
	.loc 1 155 1 view .LVU294
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L214
	movl	$0, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
.LVL184:
	.loc 1 155 1 view .LVU295
	popq	%r12
.LVL185:
	.loc 1 155 1 view .LVU296
	popq	%r13
	popq	%r14
	popq	%r15
.LVL186:
	.loc 1 155 1 view .LVU297
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL187:
.L208:
	.cfi_restore_state
	.loc 1 139 41 view .LVU298
	leaq	.Lubsan_data37(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL188:
	jmp	.L180
.LVL189:
.L209:
	.loc 1 140 41 view .LVU299
	leaq	.Lubsan_data38(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL190:
	.loc 1 140 41 view .LVU300
	jmp	.L181
.LVL191:
.L210:
	.loc 1 143 7 is_stmt 1 view .LVU301
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
.LVL192:
	.loc 1 143 7 is_stmt 0 view .LVU302
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L215
	movq	stdout(%rip), %r13
	testq	%r13, %r13
	je	.L216
.L184:
.LVL193:
.LBB42:
.LBI42:
	.loc 2 77 1 is_stmt 1 view .LVU303
.LBB43:
	.loc 2 79 3 view .LVU304
	.loc 2 79 10 is_stmt 0 view .LVU305
	movq	%r12, %r9
	movl	$143, %r8d
	leaq	.LC2(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL194:
	.loc 2 79 10 view .LVU306
.LBE43:
.LBE42:
	.loc 1 145 7 is_stmt 1 view .LVU307
	jmp	.L182
.L215:
	.loc 1 143 7 is_stmt 0 view .LVU308
	call	__asan_report_load8@PLT
.LVL195:
.L216:
	leaq	.Lubsan_data39(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL196:
	jmp	.L184
.L211:
	.loc 1 149 3 view .LVU309
	leaq	.Lubsan_data41(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL197:
	jmp	.L185
.L212:
	.loc 1 150 3 view .LVU310
	leaq	.Lubsan_data42(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL198:
	jmp	.L186
.L213:
	.loc 1 118 1 view .LVU311
	movq	%rsi, %rax
	movq	$1172321806, (%rsi)
.LVL199:
	.loc 1 118 1 view .LVU312
	movq	-208(%rbp), %rsi
	movabsq	$-723401728380766731, %rcx
	movq	%rcx, 2147450880(%rsi)
	movl	$-168430091, 2147450888(%rsi)
	movq	120(%rax), %rax
	movb	$0, (%rax)
	jmp	.L140
.L214:
	.loc 1 155 1 view .LVU313
	call	__stack_chk_fail@PLT
.LVL200:
	.cfi_endproc
.LFE63:
	.size	main, .-main
	.section	.data.rel.local,"aw"
	.align 32
	.type	.Lubsan_data74, @object
	.size	.Lubsan_data74, 32
.Lubsan_data74:
	.quad	.LC2
	.long	135
	.long	9
	.quad	.Lubsan_type4
	.byte	3
	.byte	0
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data73, @object
	.size	.Lubsan_data73, 16
.Lubsan_data73:
	.quad	.LC2
	.long	135
	.long	55
	.zero	48
	.align 32
	.type	.Lubsan_data72, @object
	.size	.Lubsan_data72, 32
.Lubsan_data72:
	.quad	.LC2
	.long	132
	.long	38
	.quad	.Lubsan_type4
	.byte	3
	.byte	0
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data71, @object
	.size	.Lubsan_data71, 16
.Lubsan_data71:
	.quad	.LC2
	.long	132
	.long	66
	.zero	48
	.align 32
	.type	.Lubsan_data70, @object
	.size	.Lubsan_data70, 32
.Lubsan_data70:
	.quad	.LC2
	.long	128
	.long	5
	.quad	.Lubsan_type4
	.byte	3
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type4, @object
	.size	.Lubsan_type4, 13
.Lubsan_type4:
	.value	-1
	.value	0
	.string	"'char *'"
	.zero	51
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data69, @object
	.size	.Lubsan_data69, 16
.Lubsan_data69:
	.quad	.LC2
	.long	128
	.long	138
	.zero	48
	.align 32
	.type	.Lubsan_data68, @object
	.size	.Lubsan_data68, 24
.Lubsan_data68:
	.quad	.LC2
	.long	66
	.long	56
	.quad	.Lubsan_type3
	.zero	40
	.data
	.align 32
	.type	.Lubsan_type3, @object
	.size	.Lubsan_type3, 10
.Lubsan_type3:
	.value	0
	.value	11
	.string	"'int'"
	.zero	54
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data67, @object
	.size	.Lubsan_data67, 32
.Lubsan_data67:
	.quad	.LC2
	.long	82
	.long	16
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data66, @object
	.size	.Lubsan_data66, 32
.Lubsan_data66:
	.quad	.LC2
	.long	67
	.long	19
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data65, @object
	.size	.Lubsan_data65, 32
.Lubsan_data65:
	.quad	.LC2
	.long	67
	.long	26
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data64, @object
	.size	.Lubsan_data64, 16
.Lubsan_data64:
	.quad	.LC2
	.long	66
	.long	31
	.zero	48
	.align 32
	.type	.Lubsan_data63, @object
	.size	.Lubsan_data63, 32
.Lubsan_data63:
	.quad	.LC2
	.long	66
	.long	31
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data62, @object
	.size	.Lubsan_data62, 32
.Lubsan_data62:
	.quad	.LC2
	.long	66
	.long	63
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data61, @object
	.size	.Lubsan_data61, 32
.Lubsan_data61:
	.quad	.LC2
	.long	66
	.long	49
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data60, @object
	.size	.Lubsan_data60, 16
.Lubsan_data60:
	.quad	.LC2
	.long	65
	.long	28
	.zero	48
	.align 32
	.type	.Lubsan_data59, @object
	.size	.Lubsan_data59, 32
.Lubsan_data59:
	.quad	.LC2
	.long	65
	.long	28
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data58, @object
	.size	.Lubsan_data58, 16
.Lubsan_data58:
	.quad	.LC2
	.long	65
	.long	30
	.zero	48
	.align 32
	.type	.Lubsan_data57, @object
	.size	.Lubsan_data57, 32
.Lubsan_data57:
	.quad	.LC2
	.long	65
	.long	48
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data56, @object
	.size	.Lubsan_data56, 32
.Lubsan_data56:
	.quad	.LC2
	.long	65
	.long	36
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data55, @object
	.size	.Lubsan_data55, 16
.Lubsan_data55:
	.quad	.LC2
	.long	61
	.long	28
	.zero	48
	.align 32
	.type	.Lubsan_data54, @object
	.size	.Lubsan_data54, 32
.Lubsan_data54:
	.quad	.LC2
	.long	61
	.long	28
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
	.string	"'struct argp_state'"
	.zero	40
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data53, @object
	.size	.Lubsan_data53, 16
.Lubsan_data53:
	.quad	.LC2
	.long	52
	.long	43
	.zero	48
	.align 32
	.type	.Lubsan_data52, @object
	.size	.Lubsan_data52, 32
.Lubsan_data52:
	.quad	.LC2
	.long	52
	.long	43
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data51, @object
	.size	.Lubsan_data51, 16
.Lubsan_data51:
	.quad	.LC2
	.long	48
	.long	11
	.zero	48
	.align 32
	.type	.Lubsan_data50, @object
	.size	.Lubsan_data50, 32
.Lubsan_data50:
	.quad	.LC2
	.long	34
	.long	39
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data49, @object
	.size	.Lubsan_data49, 16
.Lubsan_data49:
	.quad	.LC2
	.long	30
	.long	11
	.zero	48
	.align 32
	.type	.Lubsan_data48, @object
	.size	.Lubsan_data48, 32
.Lubsan_data48:
	.quad	.LC2
	.long	102
	.long	35
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data47, @object
	.size	.Lubsan_data47, 16
.Lubsan_data47:
	.quad	.LC2
	.long	101
	.long	39
	.zero	48
	.align 32
	.type	.Lubsan_data46, @object
	.size	.Lubsan_data46, 32
.Lubsan_data46:
	.quad	.LC2
	.long	101
	.long	39
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data45, @object
	.size	.Lubsan_data45, 32
.Lubsan_data45:
	.quad	.LC2
	.long	112
	.long	154
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data44, @object
	.size	.Lubsan_data44, 16
.Lubsan_data44:
	.quad	.LC2
	.long	110
	.long	137
	.zero	48
	.align 32
	.type	.Lubsan_data43, @object
	.size	.Lubsan_data43, 32
.Lubsan_data43:
	.quad	.LC2
	.long	110
	.long	137
	.quad	.Lubsan_type1
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type1, @object
	.size	.Lubsan_type1, 30
.Lubsan_type1:
	.value	-1
	.value	0
	.string	"'struct compilation_args'"
	.zero	34
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data42, @object
	.size	.Lubsan_data42, 40
.Lubsan_data42:
	.quad	.LC2
	.long	150
	.long	3
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
	.quad	.LC2
	.long	149
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data39, @object
	.size	.Lubsan_data39, 40
.Lubsan_data39:
	.quad	.LC2
	.long	143
	.long	7
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
	.quad	.LC2
	.long	140
	.long	41
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data37, @object
	.size	.Lubsan_data37, 40
.Lubsan_data37:
	.quad	.LC2
	.long	139
	.long	41
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data35, @object
	.size	.Lubsan_data35, 40
.Lubsan_data35:
	.quad	.LC2
	.long	135
	.long	9
	.quad	0
	.long	0
	.long	0
	.long	3
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data33, @object
	.size	.Lubsan_data33, 40
.Lubsan_data33:
	.quad	.LC2
	.long	135
	.long	9
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data31, @object
	.size	.Lubsan_data31, 40
.Lubsan_data31:
	.quad	.LC2
	.long	132
	.long	38
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
	.quad	.LC2
	.long	128
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
	.quad	.LC2
	.long	125
	.long	3
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
	.quad	.LC2
	.long	50
	.long	8
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
	.quad	.LC2
	.long	45
	.long	8
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
	.quad	.LC2
	.long	32
	.long	8
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
	.quad	.LC2
	.long	27
	.long	8
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
	.quad	.LC2
	.long	112
	.long	3
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
	.quad	.LC2
	.long	111
	.long	3
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
	.quad	.LC2
	.long	110
	.long	3
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
	.quad	.LC2
	.long	109
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	argp, @object
	.size	argp, 56
argp:
	.quad	options
	.quad	parse_opt
	.quad	args_doc
	.quad	doc
	.quad	0
	.quad	0
	.quad	0
	.zero	40
	.section	.rodata
	.align 32
.LC19:
	.string	"warn"
	.zero	59
	.align 32
.LC20:
	.string	"WARNING"
	.zero	56
	.align 32
.LC21:
	.string	"Toggle specific warning conditions"
	.zero	61
	.align 32
.LC22:
	.string	"compiler"
	.zero	55
	.align 32
.LC23:
	.string	"COMPILER"
	.zero	55
	.align 32
.LC24:
	.string	"Toggle specific compilation flags"
	.zero	62
	.section	.data.rel.local
	.align 32
	.type	options, @object
	.size	options, 144
options:
	.quad	.LC19
	.long	87
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	.LC22
	.long	67
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.zero	40
	.zero	48
	.data
	.align 32
	.type	args_doc, @object
	.size	args_doc, 15
args_doc:
	.string	"[FILENAMES...]"
	.zero	49
	.align 32
	.type	doc, @object
	.size	doc, 24
doc:
	.string	"C compiler written in C"
	.zero	40
	.globl	argp_program_bug_address
	.section	.rodata
	.align 32
.LC25:
	.string	"<unazedv4@protonmail.com>"
	.zero	38
	.section	.data.rel.local
	.align 32
	.type	argp_program_bug_address, @object
	.size	argp_program_bug_address, 8
argp_program_bug_address:
	.quad	.LC25
	.zero	56
	.globl	arg_program_version
	.section	.rodata
	.align 32
.LC26:
	.string	"0.2.0"
	.zero	58
	.section	.data.rel.local
	.align 32
	.type	arg_program_version, @object
	.size	arg_program_version, 8
arg_program_version:
	.quad	.LC26
	.zero	56
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC2
	.long	94
	.long	20
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC2
	.long	16
	.long	27
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC2
	.long	14
	.long	13
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC2
	.long	13
	.long	13
	.globl	__odr_asan.argp_program_bug_address
	.bss
	.type	__odr_asan.argp_program_bug_address, @object
	.size	__odr_asan.argp_program_bug_address, 1
__odr_asan.argp_program_bug_address:
	.zero	1
	.section	.rodata.str1.1
.LC27:
	.string	"/usr/include/argp.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC5, @object
	.size	.LASANLOC5, 16
.LASANLOC5:
	.quad	.LC27
	.long	401
	.long	20
	.globl	__odr_asan.arg_program_version
	.bss
	.type	__odr_asan.arg_program_version, @object
	.size	__odr_asan.arg_program_version, 1
__odr_asan.arg_program_version:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC6, @object
	.size	.LASANLOC6, 16
.LASANLOC6:
	.quad	.LC2
	.long	11
	.long	13
	.section	.rodata.str1.1
.LC28:
	.string	"*.Lubsan_data74"
.LC29:
	.string	"*.Lubsan_data73"
.LC30:
	.string	"*.Lubsan_data72"
.LC31:
	.string	"*.Lubsan_data71"
.LC32:
	.string	"*.Lubsan_data70"
.LC33:
	.string	"*.Lubsan_type4"
.LC34:
	.string	"*.Lubsan_data69"
.LC35:
	.string	"*.Lubsan_data68"
.LC36:
	.string	"*.Lubsan_type3"
.LC37:
	.string	"*.Lubsan_data67"
.LC38:
	.string	"*.Lubsan_data66"
.LC39:
	.string	"*.Lubsan_data65"
.LC40:
	.string	"*.Lubsan_data64"
.LC41:
	.string	"*.Lubsan_data63"
.LC42:
	.string	"*.Lubsan_data62"
.LC43:
	.string	"*.Lubsan_data61"
.LC44:
	.string	"*.Lubsan_data60"
.LC45:
	.string	"*.Lubsan_data59"
.LC46:
	.string	"*.Lubsan_data58"
.LC47:
	.string	"*.Lubsan_data57"
.LC48:
	.string	"*.Lubsan_data56"
.LC49:
	.string	"*.Lubsan_data55"
.LC50:
	.string	"*.Lubsan_data54"
.LC51:
	.string	"*.Lubsan_type2"
.LC52:
	.string	"*.Lubsan_data53"
.LC53:
	.string	"*.Lubsan_data52"
.LC54:
	.string	"*.Lubsan_data51"
.LC55:
	.string	"*.Lubsan_data50"
.LC56:
	.string	"*.Lubsan_data49"
.LC57:
	.string	"*.Lubsan_data48"
.LC58:
	.string	"*.Lubsan_data47"
.LC59:
	.string	"*.Lubsan_data46"
.LC60:
	.string	"*.Lubsan_data45"
.LC61:
	.string	"*.Lubsan_data44"
.LC62:
	.string	"*.Lubsan_data43"
.LC63:
	.string	"*.Lubsan_type1"
.LC64:
	.string	"*.Lubsan_data42"
.LC65:
	.string	"*.Lubsan_data41"
.LC66:
	.string	"*.Lubsan_data39"
.LC67:
	.string	"*.Lubsan_data38"
.LC68:
	.string	"*.Lubsan_data37"
.LC69:
	.string	"*.Lubsan_data35"
.LC70:
	.string	"*.Lubsan_data33"
.LC71:
	.string	"*.Lubsan_data31"
.LC72:
	.string	"*.Lubsan_data29"
.LC73:
	.string	"*.Lubsan_data27"
.LC74:
	.string	"*.Lubsan_data25"
.LC75:
	.string	"*.Lubsan_data23"
.LC76:
	.string	"*.Lubsan_data21"
.LC77:
	.string	"*.Lubsan_data19"
.LC78:
	.string	"*.Lubsan_data17"
.LC79:
	.string	"*.Lubsan_data15"
.LC80:
	.string	"*.Lubsan_data13"
.LC81:
	.string	"*.Lubsan_data11"
.LC82:
	.string	"argp"
.LC83:
	.string	"options"
.LC84:
	.string	"args_doc"
.LC85:
	.string	"doc"
.LC86:
	.string	"argp_program_bug_address"
.LC87:
	.string	"arg_program_version"
.LC88:
	.string	"*.LC15"
.LC89:
	.string	"*.LC21"
.LC90:
	.string	"*.LC12"
.LC91:
	.string	"*.LC0"
.LC92:
	.string	"*.LC13"
.LC93:
	.string	"*.LC24"
.LC94:
	.string	"*.LC3"
.LC95:
	.string	"*.LC1"
.LC96:
	.string	"*.LC10"
.LC97:
	.string	"*.LC6"
.LC98:
	.string	"*.LC9"
.LC99:
	.string	"*.LC25"
.LC100:
	.string	"*.LC19"
.LC101:
	.string	"*.LC7"
.LC102:
	.string	"*.LC23"
.LC103:
	.string	"*.LC4"
.LC104:
	.string	"*.LC20"
.LC105:
	.string	"*.LC5"
.LC106:
	.string	"*.LC11"
.LC107:
	.string	"*.LC8"
.LC108:
	.string	"*.LC16"
.LC109:
	.string	"*.LC18"
.LC110:
	.string	"*.LC17"
.LC111:
	.string	"*.LC2"
.LC112:
	.string	"*.LC22"
.LC113:
	.string	"*.LC26"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 5504
.LASAN0:
	.quad	.Lubsan_data74
	.quad	32
	.quad	64
	.quad	.LC28
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data73
	.quad	16
	.quad	64
	.quad	.LC29
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data72
	.quad	32
	.quad	64
	.quad	.LC30
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data71
	.quad	16
	.quad	64
	.quad	.LC31
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data70
	.quad	32
	.quad	64
	.quad	.LC32
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type4
	.quad	13
	.quad	64
	.quad	.LC33
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data69
	.quad	16
	.quad	64
	.quad	.LC34
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data68
	.quad	24
	.quad	64
	.quad	.LC35
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type3
	.quad	10
	.quad	64
	.quad	.LC36
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data67
	.quad	32
	.quad	64
	.quad	.LC37
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data66
	.quad	32
	.quad	64
	.quad	.LC38
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data65
	.quad	32
	.quad	64
	.quad	.LC39
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data64
	.quad	16
	.quad	64
	.quad	.LC40
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data63
	.quad	32
	.quad	64
	.quad	.LC41
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data62
	.quad	32
	.quad	64
	.quad	.LC42
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data61
	.quad	32
	.quad	64
	.quad	.LC43
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data60
	.quad	16
	.quad	64
	.quad	.LC44
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data59
	.quad	32
	.quad	64
	.quad	.LC45
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data58
	.quad	16
	.quad	64
	.quad	.LC46
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data57
	.quad	32
	.quad	64
	.quad	.LC47
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data56
	.quad	32
	.quad	64
	.quad	.LC48
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data55
	.quad	16
	.quad	64
	.quad	.LC49
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data54
	.quad	32
	.quad	64
	.quad	.LC50
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type2
	.quad	24
	.quad	64
	.quad	.LC51
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data53
	.quad	16
	.quad	64
	.quad	.LC52
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data52
	.quad	32
	.quad	64
	.quad	.LC53
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data51
	.quad	16
	.quad	64
	.quad	.LC54
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data50
	.quad	32
	.quad	64
	.quad	.LC55
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data49
	.quad	16
	.quad	64
	.quad	.LC56
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data48
	.quad	32
	.quad	64
	.quad	.LC57
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data47
	.quad	16
	.quad	64
	.quad	.LC58
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data46
	.quad	32
	.quad	64
	.quad	.LC59
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data45
	.quad	32
	.quad	64
	.quad	.LC60
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data44
	.quad	16
	.quad	64
	.quad	.LC61
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data43
	.quad	32
	.quad	64
	.quad	.LC62
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type1
	.quad	30
	.quad	64
	.quad	.LC63
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data42
	.quad	40
	.quad	96
	.quad	.LC64
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data41
	.quad	40
	.quad	96
	.quad	.LC65
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data39
	.quad	40
	.quad	96
	.quad	.LC66
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data38
	.quad	40
	.quad	96
	.quad	.LC67
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data37
	.quad	40
	.quad	96
	.quad	.LC68
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data35
	.quad	40
	.quad	96
	.quad	.LC69
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data33
	.quad	40
	.quad	96
	.quad	.LC70
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data31
	.quad	40
	.quad	96
	.quad	.LC71
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data29
	.quad	40
	.quad	96
	.quad	.LC72
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data27
	.quad	40
	.quad	96
	.quad	.LC73
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data25
	.quad	40
	.quad	96
	.quad	.LC74
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data23
	.quad	40
	.quad	96
	.quad	.LC75
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data21
	.quad	40
	.quad	96
	.quad	.LC76
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data19
	.quad	40
	.quad	96
	.quad	.LC77
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data17
	.quad	40
	.quad	96
	.quad	.LC78
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data15
	.quad	40
	.quad	96
	.quad	.LC79
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data13
	.quad	40
	.quad	96
	.quad	.LC80
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data11
	.quad	40
	.quad	96
	.quad	.LC81
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	argp
	.quad	56
	.quad	96
	.quad	.LC82
	.quad	.LC2
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	options
	.quad	144
	.quad	192
	.quad	.LC83
	.quad	.LC2
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	args_doc
	.quad	15
	.quad	64
	.quad	.LC84
	.quad	.LC2
	.quad	0
	.quad	.LASANLOC3
	.quad	0
	.quad	doc
	.quad	24
	.quad	64
	.quad	.LC85
	.quad	.LC2
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	argp_program_bug_address
	.quad	8
	.quad	64
	.quad	.LC86
	.quad	.LC2
	.quad	0
	.quad	.LASANLOC5
	.quad	__odr_asan.argp_program_bug_address
	.quad	arg_program_version
	.quad	8
	.quad	64
	.quad	.LC87
	.quad	.LC2
	.quad	0
	.quad	.LASANLOC6
	.quad	__odr_asan.arg_program_version
	.quad	.LC15
	.quad	75
	.quad	128
	.quad	.LC88
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	35
	.quad	96
	.quad	.LC89
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	56
	.quad	96
	.quad	.LC90
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	4
	.quad	64
	.quad	.LC91
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	30
	.quad	64
	.quad	.LC92
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	34
	.quad	96
	.quad	.LC93
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	54
	.quad	96
	.quad	.LC94
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	3
	.quad	64
	.quad	.LC95
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	47
	.quad	96
	.quad	.LC96
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	79
	.quad	128
	.quad	.LC97
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	18
	.quad	64
	.quad	.LC98
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	26
	.quad	64
	.quad	.LC99
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	5
	.quad	64
	.quad	.LC100
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	4
	.quad	64
	.quad	.LC101
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC23
	.quad	9
	.quad	64
	.quad	.LC102
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	58
	.quad	96
	.quad	.LC103
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	8
	.quad	64
	.quad	.LC104
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	45
	.quad	96
	.quad	.LC105
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	31
	.quad	64
	.quad	.LC106
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	10
	.quad	64
	.quad	.LC107
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	58
	.quad	96
	.quad	.LC108
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	83
	.quad	128
	.quad	.LC109
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	2
	.quad	64
	.quad	.LC110
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	11
	.quad	64
	.quad	.LC111
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	9
	.quad	64
	.quad	.LC112
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	6
	.quad	64
	.quad	.LC113
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB64:
	.cfi_startproc
	.loc 1 155 1 is_stmt 1 view .LVU314
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$86, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB65:
	.cfi_startproc
	.loc 1 155 1 view .LVU315
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$86, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/include/bits/stdint-uintn.h"
	.file 6 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h"
	.file 7 "/usr/include/bits/types/struct_FILE.h"
	.file 8 "/usr/include/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "include/io.h"
	.file 11 "include/array.h"
	.file 12 "include/lexer.h"
	.file 13 "include/tokenizer.h"
	.file 14 "include/diagnostics.h"
	.file 15 "/usr/include/bits/stdio2-decl.h"
	.file 16 "/usr/include/string.h"
	.file 17 "/usr/include/stdlib.h"
	.file 18 "<built-in>"
	.file 19 "include/generic.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b0d
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x27
	.long	.LASF157
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.long	.LASF9
	.byte	0x4
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.long	.LASF10
	.byte	0x4
	.byte	0x2d
	.byte	0x1b
	.long	0x43
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0x98
	.byte	0x12
	.long	0x6b
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0x99
	.byte	0x12
	.long	0x6b
	.uleb128 0x29
	.byte	0x8
	.uleb128 0xe
	.long	0x96
	.uleb128 0x6
	.long	0xa2
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x12
	.long	0xa2
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0x1a
	.byte	0x14
	.long	0x5f
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0x1b
	.byte	0x14
	.long	0x72
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x13
	.long	.LASF57
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x259
	.uleb128 0x3
	.long	.LASF17
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x9d
	.byte	0x8
	.uleb128 0x3
	.long	.LASF19
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x9d
	.byte	0x10
	.uleb128 0x3
	.long	.LASF20
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x9d
	.byte	0x18
	.uleb128 0x3
	.long	.LASF21
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x9d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF22
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x9d
	.byte	0x28
	.uleb128 0x3
	.long	.LASF23
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x9d
	.byte	0x30
	.uleb128 0x3
	.long	.LASF24
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x9d
	.byte	0x38
	.uleb128 0x3
	.long	.LASF25
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x9d
	.byte	0x40
	.uleb128 0x3
	.long	.LASF26
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x9d
	.byte	0x48
	.uleb128 0x3
	.long	.LASF27
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x9d
	.byte	0x50
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x9d
	.byte	0x58
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x272
	.byte	0x60
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x277
	.byte	0x68
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x7e
	.byte	0x78
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x27c
	.byte	0x83
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x28c
	.byte	0x88
	.uleb128 0x3
	.long	.LASF38
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x8a
	.byte	0x90
	.uleb128 0x3
	.long	.LASF39
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x296
	.byte	0x98
	.uleb128 0x3
	.long	.LASF40
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x2a0
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x277
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF42
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x96
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF43
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xc6
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF44
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF45
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x2a5
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xd2
	.uleb128 0x2a
	.long	.LASF158
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x14
	.long	.LASF47
	.uleb128 0x6
	.long	0x26d
	.uleb128 0x6
	.long	0xd2
	.uleb128 0x15
	.long	0xa2
	.long	0x28c
	.uleb128 0x16
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x265
	.uleb128 0x14
	.long	.LASF48
	.uleb128 0x6
	.long	0x291
	.uleb128 0x14
	.long	.LASF49
	.uleb128 0x6
	.long	0x29b
	.uleb128 0x15
	.long	0xa2
	.long	0x2b5
	.uleb128 0x16
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0xa9
	.uleb128 0xe
	.long	0x2b5
	.uleb128 0x12
	.long	0x2b5
	.uleb128 0x6
	.long	0x259
	.uleb128 0xe
	.long	0x2c4
	.uleb128 0x1d
	.long	.LASF50
	.byte	0x96
	.long	0x2c4
	.uleb128 0x1d
	.long	.LASF51
	.byte	0x97
	.long	0x2c4
	.uleb128 0x9
	.long	.LASF52
	.byte	0xa
	.byte	0x6
	.byte	0xf
	.long	0x2c4
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x9
	.long	.LASF55
	.byte	0xb
	.byte	0xb
	.byte	0x1c
	.long	0x308
	.uleb128 0x6
	.long	0x30d
	.uleb128 0x14
	.long	.LASF56
	.uleb128 0x13
	.long	.LASF58
	.byte	0x10
	.byte	0xc
	.byte	0x9
	.byte	0x10
	.long	0x33a
	.uleb128 0x3
	.long	.LASF59
	.byte	0xc
	.byte	0xb
	.byte	0xb
	.long	0x2fc
	.byte	0
	.uleb128 0x3
	.long	.LASF60
	.byte	0xc
	.byte	0xc
	.byte	0xb
	.long	0x2fc
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0xc
	.byte	0xd
	.byte	0x4
	.long	0x346
	.uleb128 0x6
	.long	0x312
	.uleb128 0x9
	.long	.LASF62
	.byte	0xd
	.byte	0x5
	.byte	0x1a
	.long	0x357
	.uleb128 0x6
	.long	0x35c
	.uleb128 0x14
	.long	.LASF63
	.uleb128 0x1e
	.byte	0xa
	.long	0x372
	.uleb128 0x1f
	.long	.LASF65
	.byte	0xc
	.long	0x372
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF64
	.uleb128 0x1e
	.byte	0xe
	.long	0x38a
	.uleb128 0x1f
	.long	.LASF66
	.byte	0x10
	.long	0x372
	.byte	0
	.uleb128 0x13
	.long	.LASF67
	.byte	0x18
	.byte	0xe
	.byte	0x8
	.byte	0x8
	.long	0x3cc
	.uleb128 0x3
	.long	.LASF68
	.byte	0xe
	.byte	0xd
	.byte	0x5
	.long	0x361
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0xe
	.byte	0x11
	.byte	0x5
	.long	0x379
	.byte	0x1
	.uleb128 0x3
	.long	.LASF70
	.byte	0xe
	.byte	0x12
	.byte	0xa
	.long	0x3cc
	.byte	0x8
	.uleb128 0x3
	.long	.LASF71
	.byte	0xe
	.byte	0x13
	.byte	0xa
	.long	0xc6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x9d
	.uleb128 0xe
	.long	0x3cc
	.uleb128 0x6
	.long	0x58
	.uleb128 0xe
	.long	0x3d6
	.uleb128 0x9
	.long	.LASF72
	.byte	0x3
	.byte	0x23
	.byte	0xd
	.long	0x58
	.uleb128 0x13
	.long	.LASF73
	.byte	0x30
	.byte	0x3
	.byte	0x2b
	.byte	0x8
	.long	0x445
	.uleb128 0x3
	.long	.LASF74
	.byte	0x3
	.byte	0x2f
	.byte	0xf
	.long	0x2b5
	.byte	0
	.uleb128 0x17
	.string	"key"
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0x8
	.uleb128 0x17
	.string	"arg"
	.byte	0x37
	.byte	0xf
	.long	0x2b5
	.byte	0x10
	.uleb128 0x3
	.long	.LASF75
	.byte	0x3
	.byte	0x3a
	.byte	0x7
	.long	0x58
	.byte	0x18
	.uleb128 0x17
	.string	"doc"
	.byte	0x40
	.byte	0xf
	.long	0x2b5
	.byte	0x20
	.uleb128 0x3
	.long	.LASF76
	.byte	0x3
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	0x3ec
	.uleb128 0x9
	.long	.LASF77
	.byte	0x3
	.byte	0x71
	.byte	0x13
	.long	0x456
	.uleb128 0x6
	.long	0x45b
	.uleb128 0x20
	.long	0x3e0
	.long	0x474
	.uleb128 0x4
	.long	0x58
	.uleb128 0x4
	.long	0x9d
	.uleb128 0x4
	.long	0x474
	.byte	0
	.uleb128 0x6
	.long	0x479
	.uleb128 0x2b
	.long	.LASF78
	.byte	0x60
	.byte	0x3
	.value	0x111
	.byte	0x8
	.long	0x53e
	.uleb128 0x7
	.long	.LASF79
	.value	0x114
	.byte	0x16
	.long	0x61f
	.byte	0
	.uleb128 0x7
	.long	.LASF80
	.value	0x117
	.byte	0x7
	.long	0x58
	.byte	0x8
	.uleb128 0x7
	.long	.LASF81
	.value	0x118
	.byte	0xa
	.long	0x3cc
	.byte	0x10
	.uleb128 0x7
	.long	.LASF82
	.value	0x11b
	.byte	0x7
	.long	0x58
	.byte	0x18
	.uleb128 0x7
	.long	.LASF75
	.value	0x11e
	.byte	0xc
	.long	0x3c
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF83
	.value	0x124
	.byte	0xc
	.long	0x3c
	.byte	0x20
	.uleb128 0x7
	.long	.LASF84
	.value	0x129
	.byte	0x7
	.long	0x58
	.byte	0x24
	.uleb128 0x7
	.long	.LASF85
	.value	0x12c
	.byte	0x9
	.long	0x96
	.byte	0x28
	.uleb128 0x7
	.long	.LASF86
	.value	0x12f
	.byte	0xa
	.long	0x629
	.byte	0x30
	.uleb128 0x7
	.long	.LASF87
	.value	0x132
	.byte	0x9
	.long	0x96
	.byte	0x38
	.uleb128 0x7
	.long	.LASF74
	.value	0x136
	.byte	0x9
	.long	0x9d
	.byte	0x40
	.uleb128 0x7
	.long	.LASF88
	.value	0x139
	.byte	0x9
	.long	0x2c4
	.byte	0x48
	.uleb128 0x7
	.long	.LASF89
	.value	0x13a
	.byte	0x9
	.long	0x2c4
	.byte	0x50
	.uleb128 0x7
	.long	.LASF90
	.value	0x13c
	.byte	0x9
	.long	0x96
	.byte	0x58
	.byte	0
	.uleb128 0x12
	.long	0x479
	.uleb128 0x13
	.long	.LASF91
	.byte	0x38
	.byte	0x3
	.byte	0xb6
	.byte	0x8
	.long	0x5ab
	.uleb128 0x3
	.long	.LASF92
	.byte	0x3
	.byte	0xba
	.byte	0x1d
	.long	0x5b0
	.byte	0
	.uleb128 0x3
	.long	.LASF93
	.byte	0x3
	.byte	0xc3
	.byte	0x11
	.long	0x44a
	.byte	0x8
	.uleb128 0x3
	.long	.LASF94
	.byte	0x3
	.byte	0xca
	.byte	0xf
	.long	0x2b5
	.byte	0x10
	.uleb128 0x17
	.string	"doc"
	.byte	0xcf
	.byte	0xf
	.long	0x2b5
	.byte	0x18
	.uleb128 0x3
	.long	.LASF95
	.byte	0x3
	.byte	0xd7
	.byte	0x1c
	.long	0x5fc
	.byte	0x20
	.uleb128 0x3
	.long	.LASF96
	.byte	0x3
	.byte	0xe3
	.byte	0xb
	.long	0x61a
	.byte	0x28
	.uleb128 0x3
	.long	.LASF97
	.byte	0x3
	.byte	0xe8
	.byte	0xf
	.long	0x2b5
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	0x543
	.uleb128 0x6
	.long	0x445
	.uleb128 0x13
	.long	.LASF98
	.byte	0x20
	.byte	0x3
	.byte	0xf8
	.byte	0x8
	.long	0x5f7
	.uleb128 0x3
	.long	.LASF91
	.byte	0x3
	.byte	0xfb
	.byte	0x16
	.long	0x61f
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0x3
	.byte	0xfe
	.byte	0x7
	.long	0x58
	.byte	0x8
	.uleb128 0x7
	.long	.LASF99
	.value	0x104
	.byte	0xf
	.long	0x2b5
	.byte	0x10
	.uleb128 0x7
	.long	.LASF76
	.value	0x10c
	.byte	0x7
	.long	0x58
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	0x5b5
	.uleb128 0x6
	.long	0x5f7
	.uleb128 0x20
	.long	0x9d
	.long	0x61a
	.uleb128 0x4
	.long	0x58
	.uleb128 0x4
	.long	0x2b5
	.uleb128 0x4
	.long	0x96
	.byte	0
	.uleb128 0x6
	.long	0x601
	.uleb128 0x6
	.long	0x5ab
	.uleb128 0xe
	.long	0x61f
	.uleb128 0x6
	.long	0x96
	.uleb128 0x2c
	.long	.LASF100
	.byte	0x3
	.value	0x191
	.byte	0x14
	.long	0x2b5
	.uleb128 0x2d
	.long	.LASF101
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.long	0x2b5
	.uleb128 0x9
	.byte	0x3
	.quad	arg_program_version
	.uleb128 0x2e
	.long	0x62e
	.uleb128 0x9
	.byte	0x3
	.quad	argp_program_bug_address
	.uleb128 0x15
	.long	0xa2
	.long	0x670
	.uleb128 0x16
	.long	0x43
	.byte	0x17
	.byte	0
	.uleb128 0x2f
	.string	"doc"
	.byte	0x1
	.byte	0xd
	.byte	0xd
	.long	0x660
	.uleb128 0x9
	.byte	0x3
	.quad	doc
	.uleb128 0x15
	.long	0xa2
	.long	0x696
	.uleb128 0x16
	.long	0x43
	.byte	0xe
	.byte	0
	.uleb128 0x1a
	.long	.LASF94
	.byte	0xe
	.byte	0xd
	.long	0x686
	.uleb128 0x9
	.byte	0x3
	.quad	args_doc
	.uleb128 0x15
	.long	0x3ec
	.long	0x6bb
	.uleb128 0x16
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x10
	.byte	0x1b
	.long	0x6ab
	.uleb128 0x9
	.byte	0x3
	.quad	options
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x5e
	.byte	0x14
	.long	0x543
	.uleb128 0x9
	.byte	0x3
	.quad	argp
	.uleb128 0xf
	.long	.LASF102
	.byte	0xf
	.byte	0x31
	.byte	0xc
	.long	0x58
	.long	0x706
	.uleb128 0x4
	.long	0x2c9
	.uleb128 0x4
	.long	0x58
	.uleb128 0x4
	.long	0x2ba
	.uleb128 0x1b
	.byte	0
	.uleb128 0x21
	.long	.LASF106
	.value	0x1c8
	.long	0x721
	.uleb128 0x4
	.long	0x726
	.uleb128 0x4
	.long	0x2c9
	.uleb128 0x4
	.long	0x3c
	.byte	0
	.uleb128 0x6
	.long	0x53e
	.uleb128 0xe
	.long	0x721
	.uleb128 0xf
	.long	.LASF103
	.byte	0x10
	.byte	0x9c
	.byte	0xc
	.long	0x58
	.long	0x746
	.uleb128 0x4
	.long	0x2b5
	.uleb128 0x4
	.long	0x2b5
	.byte	0
	.uleb128 0xf
	.long	.LASF104
	.byte	0x10
	.byte	0x9f
	.byte	0xc
	.long	0x58
	.long	0x766
	.uleb128 0x4
	.long	0x2b5
	.uleb128 0x4
	.long	0x2b5
	.uleb128 0x4
	.long	0xc6
	.byte	0
	.uleb128 0x30
	.long	.LASF105
	.byte	0x11
	.value	0x2f4
	.byte	0xd
	.long	0x779
	.uleb128 0x4
	.long	0x58
	.byte	0
	.uleb128 0x21
	.long	.LASF107
	.value	0x1d6
	.long	0x790
	.uleb128 0x4
	.long	0x726
	.uleb128 0x4
	.long	0x2ba
	.uleb128 0x1b
	.byte	0
	.uleb128 0x31
	.long	.LASF159
	.byte	0x13
	.byte	0x56
	.byte	0x6
	.uleb128 0x18
	.long	.LASF108
	.byte	0xc
	.byte	0x1b
	.long	0x7a9
	.uleb128 0x4
	.long	0x33a
	.byte	0
	.uleb128 0x18
	.long	.LASF109
	.byte	0xd
	.byte	0x8
	.long	0x7ba
	.uleb128 0x4
	.long	0x34b
	.byte	0
	.uleb128 0xf
	.long	.LASF110
	.byte	0xd
	.byte	0xd
	.byte	0x7
	.long	0x34b
	.long	0x7d0
	.uleb128 0x4
	.long	0x33a
	.byte	0
	.uleb128 0xf
	.long	.LASF111
	.byte	0xc
	.byte	0x18
	.byte	0xa
	.long	0xba
	.long	0x7e6
	.uleb128 0x4
	.long	0x33a
	.byte	0
	.uleb128 0x18
	.long	.LASF112
	.byte	0xa
	.byte	0x20
	.long	0x7f7
	.uleb128 0x4
	.long	0x2e2
	.byte	0
	.uleb128 0x18
	.long	.LASF113
	.byte	0xc
	.byte	0x15
	.long	0x812
	.uleb128 0x4
	.long	0x33a
	.uleb128 0x4
	.long	0x2e2
	.uleb128 0x4
	.long	0x2bf
	.byte	0
	.uleb128 0xf
	.long	.LASF114
	.byte	0xa
	.byte	0x11
	.byte	0x8
	.long	0x2e2
	.long	0x82d
	.uleb128 0x4
	.long	0x2b5
	.uleb128 0x4
	.long	0x2b5
	.byte	0
	.uleb128 0xf
	.long	.LASF115
	.byte	0xc
	.byte	0x12
	.byte	0x9
	.long	0x33a
	.long	0x843
	.uleb128 0x4
	.long	0x843
	.byte	0
	.uleb128 0x6
	.long	0x38a
	.uleb128 0x32
	.long	.LASF116
	.byte	0x3
	.value	0x172
	.byte	0x10
	.long	0x3e0
	.long	0x878
	.uleb128 0x4
	.long	0x624
	.uleb128 0x4
	.long	0x58
	.uleb128 0x4
	.long	0x3d1
	.uleb128 0x4
	.long	0x3c
	.uleb128 0x4
	.long	0x3db
	.uleb128 0x4
	.long	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF160
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0x58
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xf43
	.uleb128 0x10
	.long	.LASF80
	.byte	0x75
	.byte	0xb
	.long	0x58
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x10
	.long	.LASF81
	.byte	0x75
	.byte	0x18
	.long	0x3cc
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x34
	.long	.LASF121
	.byte	0x1
	.byte	0x77
	.byte	0x1b
	.long	0x38a
	.uleb128 0xd
	.long	.LASF117
	.byte	0x81
	.byte	0x1d
	.long	0x33a
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0xd
	.long	.LASF118
	.byte	0x8b
	.byte	0x1d
	.long	0xba
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0xd
	.long	.LASF119
	.byte	0x8c
	.byte	0x1d
	.long	0x34b
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x35
	.long	.LASF161
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.quad	.L182
	.uleb128 0x22
	.long	.LLRL31
	.long	0xa55
	.uleb128 0x23
	.string	"i"
	.byte	0x7f
	.long	0xc6
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x11
	.long	0x1a7b
	.quad	.LBI36
	.byte	.LVU237
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x80
	.byte	0x5
	.long	0x9ac
	.uleb128 0x8
	.long	0x1a97
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x8
	.long	0x1a8c
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0xa
	.quad	.LVL140
	.long	0x6e5
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
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL138
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL143
	.long	0x1aad
	.long	0x9de
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL144
	.long	0x1ab6
	.long	0xa03
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL145
	.long	0x1aa4
	.long	0xa1b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL146
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL147
	.long	0x1abf
	.long	0xa47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data29
	.byte	0
	.uleb128 0x5
	.quad	.LVL148
	.long	0x1aa4
	.byte	0
	.uleb128 0x36
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0xc3f
	.uleb128 0x23
	.string	"i"
	.byte	0x82
	.long	0xc6
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x22
	.long	.LLRL36
	.long	0xc31
	.uleb128 0xd
	.long	.LASF120
	.byte	0x84
	.byte	0x1f
	.long	0x2e2
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x5
	.quad	.LVL152
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL153
	.long	0x812
	.long	0xac8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x2
	.quad	.LVL156
	.long	0x1aad
	.long	0xaed
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL158
	.long	0x1ab6
	.long	0xb12
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL159
	.long	0x1aa4
	.long	0xb2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL160
	.long	0x1abf
	.long	0xb49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data31
	.byte	0
	.uleb128 0x5
	.quad	.LVL162
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL163
	.long	0x7f7
	.long	0xb7c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL164
	.long	0x7e6
	.long	0xb94
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL166
	.long	0x1aad
	.long	0xbb9
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
	.quad	.LVL168
	.long	0x1ab6
	.long	0xbde
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
	.quad	.LVL169
	.long	0x1aa4
	.long	0xbf6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL170
	.long	0x1abf
	.long	0xc15
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data33
	.byte	0
	.uleb128 0xa
	.quad	.LVL171
	.long	0x1abf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data35
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL173
	.long	0x1aa4
	.byte	0
	.uleb128 0x11
	.long	0x1a7b
	.quad	.LBI33
	.byte	.LVU219
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x7d
	.byte	0x3
	.long	0xcbd
	.uleb128 0x8
	.long	0x1a97
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x8
	.long	0x1a8c
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0xa
	.quad	.LVL129
	.long	0x6e5
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
	.quad	.LC15
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1a7b
	.quad	.LBI42
	.byte	.LVU303
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x8f
	.byte	0x7
	.long	0xd3b
	.uleb128 0x8
	.long	0x1a97
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x8
	.long	0x1a8c
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0xa
	.quad	.LVL194
	.long	0x6e5
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
	.quad	.LC18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x8f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL124
	.long	0x127a
	.long	0xd53
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL125
	.long	0x848
	.long	0xd8e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	argp
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL126
	.long	0xf43
	.long	0xda6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL132
	.long	0x1ac8
	.uleb128 0x2
	.quad	.LVL133
	.long	0x1ad1
	.long	0xdca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.quad	.LVL134
	.long	0x1aa4
	.uleb128 0x5
	.quad	.LVL135
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL136
	.long	0x1abf
	.long	0xe03
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data27
	.byte	0
	.uleb128 0x2
	.quad	.LVL149
	.long	0x82d
	.long	0xe1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x73
	.sleb128 -96
	.byte	0
	.uleb128 0x2
	.quad	.LVL174
	.long	0x7d0
	.long	0xe34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL177
	.long	0x7ba
	.long	0xe4e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL180
	.long	0x7a9
	.long	0xe66
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL181
	.long	0x798
	.long	0xe80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.quad	.LVL182
	.long	0x790
	.uleb128 0x2
	.quad	.LVL188
	.long	0x1abf
	.long	0xeac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data37
	.byte	0
	.uleb128 0x2
	.quad	.LVL190
	.long	0x1abf
	.long	0xecb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data38
	.byte	0
	.uleb128 0x5
	.quad	.LVL195
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL196
	.long	0x1abf
	.long	0xef7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data39
	.byte	0
	.uleb128 0x2
	.quad	.LVL197
	.long	0x1abf
	.long	0xf16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data41
	.byte	0
	.uleb128 0x2
	.quad	.LVL198
	.long	0x1abf
	.long	0xf35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data42
	.byte	0
	.uleb128 0x5
	.quad	.LVL200
	.long	0x1ada
	.byte	0
	.uleb128 0x24
	.long	.LASF122
	.byte	0x6b
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x127a
	.uleb128 0x10
	.long	.LASF121
	.byte	0x6b
	.byte	0x2e
	.long	0x843
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x11
	.long	0x1a7b
	.quad	.LBI21
	.byte	.LVU4
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0x6d
	.byte	0x3
	.long	0xfea
	.uleb128 0x8
	.long	0x1a97
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x8
	.long	0x1a8c
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xa
	.quad	.LVL3
	.long	0x6e5
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
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1a7b
	.quad	.LBI23
	.byte	.LVU13
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0x6e
	.byte	0x3
	.long	0x1068
	.uleb128 0x8
	.long	0x1a97
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x8
	.long	0x1a8c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0xa
	.quad	.LVL5
	.long	0x6e5
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
	.quad	.LC4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x6e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1a7b
	.quad	.LBI25
	.byte	.LVU18
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0x6f
	.byte	0x3
	.long	0x10e0
	.uleb128 0x8
	.long	0x1a97
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x8
	.long	0x1a8c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xa
	.quad	.LVL7
	.long	0x6e5
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
	.quad	.LC5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1a7b
	.quad	.LBI27
	.byte	.LVU28
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0x70
	.byte	0x3
	.long	0x115e
	.uleb128 0x8
	.long	0x1a97
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x8
	.long	0x1a8c
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xa
	.quad	.LVL10
	.long	0x6e5
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
	.quad	.LC6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL12
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL13
	.long	0x1abf
	.long	0x118a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data11
	.byte	0
	.uleb128 0x2
	.quad	.LVL14
	.long	0x1ab6
	.long	0x11af
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL15
	.long	0x1aad
	.long	0x11d4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL16
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL17
	.long	0x1abf
	.long	0x1200
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data13
	.byte	0
	.uleb128 0x5
	.quad	.LVL18
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL19
	.long	0x1abf
	.long	0x122c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data15
	.byte	0
	.uleb128 0x2
	.quad	.LVL20
	.long	0x1ab6
	.long	0x1251
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL21
	.long	0x1aa4
	.uleb128 0xa
	.quad	.LVL22
	.long	0x1abf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data17
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF123
	.byte	0x63
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x133a
	.uleb128 0x10
	.long	.LASF121
	.byte	0x63
	.byte	0x2d
	.long	0x843
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x2
	.quad	.LVL27
	.long	0x1ab6
	.long	0x12ce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data46
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL28
	.long	0x1aad
	.long	0x12f3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL29
	.long	0x1ae3
	.uleb128 0x2
	.quad	.LVL30
	.long	0x1ab6
	.long	0x1325
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.quad	.LVL31
	.long	0x1ae3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF126
	.byte	0x3b
	.long	0x3e0
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1791
	.uleb128 0x19
	.string	"key"
	.byte	0x3b
	.byte	0x10
	.long	0x58
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x19
	.string	"arg"
	.byte	0x3b
	.byte	0x1b
	.long	0x9d
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x10
	.long	.LASF124
	.byte	0x3b
	.byte	0x33
	.long	0x474
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0xd
	.long	.LASF125
	.byte	0x3d
	.byte	0x1c
	.long	0x843
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x37
	.long	0x1a5f
	.quad	.LBI29
	.byte	.LVU203
	.long	.LLRL22
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.long	0x13f9
	.uleb128 0x8
	.long	0x1a6d
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x2
	.quad	.LVL118
	.long	0x706
	.long	0x13eb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x106
	.byte	0
	.uleb128 0x5
	.quad	.LVL121
	.long	0x1aa4
	.byte	0
	.uleb128 0x2
	.quad	.LVL80
	.long	0x1791
	.long	0x1417
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
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL84
	.long	0x1ab6
	.long	0x143c
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL85
	.long	0x1aad
	.long	0x1461
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL86
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL88
	.long	0x1aad
	.long	0x1493
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL90
	.long	0x1ab6
	.long	0x14b8
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
	.uleb128 0x5
	.quad	.LVL91
	.long	0x1aa4
	.uleb128 0x2
	.quad	.LVL92
	.long	0x1ab6
	.long	0x14ea
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL93
	.long	0x1aec
	.uleb128 0x2
	.quad	.LVL98
	.long	0x1ab6
	.long	0x151c
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL99
	.long	0x1aad
	.long	0x1541
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL100
	.long	0x1af5
	.uleb128 0x2
	.quad	.LVL101
	.long	0x1ab6
	.long	0x1573
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL102
	.long	0x1aec
	.uleb128 0x2
	.quad	.LVL103
	.long	0x1ab6
	.long	0x15a5
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
	.quad	.LVL104
	.long	0x1afe
	.long	0x15df
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0x2
	.quad	.LVL105
	.long	0x1ab6
	.long	0x1604
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL106
	.long	0x1aad
	.long	0x1629
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL107
	.long	0x1af5
	.uleb128 0x2
	.quad	.LVL108
	.long	0x1ab6
	.long	0x165b
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL109
	.long	0x1ab6
	.long	0x1680
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
	.quad	.LVL111
	.long	0x1907
	.long	0x169e
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
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL112
	.long	0x779
	.long	0x16c3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x2
	.quad	.LVL113
	.long	0x779
	.long	0x16ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL114
	.long	0x779
	.long	0x1713
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x2
	.quad	.LVL115
	.long	0x779
	.long	0x173e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL116
	.long	0x1ab6
	.long	0x1763
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL117
	.long	0x1aec
	.uleb128 0x5
	.quad	.LVL119
	.long	0x1b07
	.uleb128 0xa
	.quad	.LVL120
	.long	0x766
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x29
	.long	0x372
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1907
	.uleb128 0x10
	.long	.LASF121
	.byte	0x29
	.byte	0x2e
	.long	0x843
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x19
	.string	"arg"
	.byte	0x29
	.byte	0x3a
	.long	0x9d
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0xd
	.long	.LASF128
	.byte	0x2b
	.byte	0x7
	.long	0x372
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0xd
	.long	.LASF129
	.byte	0x2c
	.byte	0x7
	.long	0x372
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x2
	.quad	.LVL57
	.long	0x746
	.long	0x1827
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2
	.quad	.LVL61
	.long	0x72b
	.long	0x184c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x2
	.quad	.LVL68
	.long	0x1abf
	.long	0x186b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data23
	.byte	0
	.uleb128 0x2
	.quad	.LVL70
	.long	0x1aad
	.long	0x1890
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
	.quad	.LVL72
	.long	0x1abf
	.long	0x18af
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data25
	.byte	0
	.uleb128 0x2
	.quad	.LVL74
	.long	0x1ab6
	.long	0x18d4
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL75
	.long	0x1aad
	.long	0x18f9
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL76
	.long	0x1ae3
	.byte	0
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x17
	.long	0x372
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5f
	.uleb128 0x10
	.long	.LASF121
	.byte	0x17
	.byte	0x2d
	.long	0x843
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x19
	.string	"arg"
	.byte	0x17
	.byte	0x39
	.long	0x9d
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xd
	.long	.LASF128
	.byte	0x19
	.byte	0x7
	.long	0x372
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0xd
	.long	.LASF129
	.byte	0x1a
	.byte	0x7
	.long	0x372
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x2
	.quad	.LVL35
	.long	0x746
	.long	0x199d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2
	.quad	.LVL39
	.long	0x72b
	.long	0x19c2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x2
	.quad	.LVL46
	.long	0x1abf
	.long	0x19e1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data19
	.byte	0
	.uleb128 0x2
	.quad	.LVL48
	.long	0x1aad
	.long	0x1a06
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL50
	.long	0x1abf
	.long	0x1a25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data21
	.byte	0
	.uleb128 0x2
	.quad	.LVL52
	.long	0x1ab6
	.long	0x1a4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data50
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.quad	.LVL53
	.long	0x1ae3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF131
	.byte	0x3
	.value	0x20e
	.byte	0x1
	.byte	0x3
	.long	0x1a7b
	.uleb128 0x39
	.long	.LASF132
	.byte	0x3
	.value	0x20e
	.byte	0x26
	.long	0x721
	.byte	0
	.uleb128 0x3a
	.long	.LASF162
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.long	0x58
	.byte	0x3
	.long	0x1aa4
	.uleb128 0x25
	.long	.LASF133
	.byte	0x4d
	.byte	0x1b
	.long	0x2c9
	.uleb128 0x25
	.long	.LASF134
	.byte	0x4d
	.byte	0x3c
	.long	0x2ba
	.uleb128 0x1b
	.byte	0
	.uleb128 0xc
	.long	.LASF135
	.long	.LASF137
	.uleb128 0xc
	.long	.LASF136
	.long	.LASF138
	.uleb128 0xc
	.long	.LASF139
	.long	.LASF140
	.uleb128 0xc
	.long	.LASF141
	.long	.LASF142
	.uleb128 0x26
	.long	.LASF145
	.long	.LASF145
	.uleb128 0xc
	.long	.LASF143
	.long	.LASF144
	.uleb128 0x26
	.long	.LASF146
	.long	.LASF146
	.uleb128 0xc
	.long	.LASF147
	.long	.LASF148
	.uleb128 0xc
	.long	.LASF149
	.long	.LASF150
	.uleb128 0xc
	.long	.LASF151
	.long	.LASF152
	.uleb128 0xc
	.long	.LASF153
	.long	.LASF154
	.uleb128 0xc
	.long	.LASF155
	.long	.LASF156
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.sleb128 18
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
.LVUS24:
	.uleb128 0
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL122-.Ltext0
	.uleb128 .LVL123-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL130-.Ltext0
	.uleb128 .LVL131-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL131-.Ltext0
	.uleb128 .LVL137-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL137-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL122-.Ltext0
	.uleb128 .LVL123-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LVL127-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL127-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL130-.Ltext0
	.uleb128 .LVL132-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL132-1-.Ltext0
	.uleb128 .LVL134-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL134-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU253
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU294
	.uleb128 .LVU298
	.uleb128 .LVU312
.LLST26:
	.byte	0x4
	.uleb128 .LVL150-.Ltext0
	.uleb128 .LVL151-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL151-.Ltext0
	.uleb128 .LVL183-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0x4
	.uleb128 .LVL187-.Ltext0
	.uleb128 .LVL199-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
.LVUS27:
	.uleb128 .LVU284
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU296
	.uleb128 .LVU299
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL175-.Ltext0
	.uleb128 .LVL176-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL176-.Ltext0
	.uleb128 .LVL185-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL189-.Ltext0
	.uleb128 .LVL190-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL190-1-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS28:
	.uleb128 .LVU287
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU295
	.uleb128 .LVU301
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 0
.LLST28:
	.byte	0x4
	.uleb128 .LVL178-.Ltext0
	.uleb128 .LVL179-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL179-.Ltext0
	.uleb128 .LVL184-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL191-.Ltext0
	.uleb128 .LVL192-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL192-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS32:
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU234
	.uleb128 .LVU257
.LLST32:
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL137-.Ltext0
	.uleb128 .LVL151-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS33:
	.uleb128 .LVU237
	.uleb128 .LVU240
.LLST33:
	.byte	0x4
	.uleb128 .LVL139-.Ltext0
	.uleb128 .LVL140-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC16
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU237
	.uleb128 .LVU240
.LLST34:
	.byte	0x4
	.uleb128 .LVL139-.Ltext0
	.uleb128 .LVL140-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS35:
	.uleb128 .LVU255
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU297
	.uleb128 .LVU298
	.uleb128 0
.LLST35:
	.byte	0x4
	.uleb128 .LVL150-.Ltext0
	.uleb128 .LVL151-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL151-.Ltext0
	.uleb128 .LVL186-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL187-.Ltext0
	.uleb128 .LFE63-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS37:
	.uleb128 .LVU260
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 .LVU266
	.uleb128 .LVU267
	.uleb128 .LVU273
	.uleb128 .LVU279
	.uleb128 .LVU280
.LLST37:
	.byte	0x4
	.uleb128 .LVL154-.Ltext0
	.uleb128 .LVL155-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL155-.Ltext0
	.uleb128 .LVL157-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL161-.Ltext0
	.uleb128 .LVL165-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL167-.Ltext0
	.uleb128 .LVL172-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS29:
	.uleb128 .LVU219
	.uleb128 .LVU222
.LLST29:
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU219
	.uleb128 .LVU222
.LLST30:
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS38:
	.uleb128 .LVU303
	.uleb128 .LVU306
.LLST38:
	.byte	0x4
	.uleb128 .LVL193-.Ltext0
	.uleb128 .LVL194-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC18
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 .LVU303
	.uleb128 .LVU306
.LLST39:
	.byte	0x4
	.uleb128 .LVL193-.Ltext0
	.uleb128 .LVL194-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LFE62-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU4
	.uleb128 .LVU7
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU7
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST3:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST4:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS5:
	.uleb128 .LVU18
	.uleb128 .LVU21
.LLST5:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU18
	.uleb128 .LVU21
.LLST6:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS7:
	.uleb128 .LVU28
	.uleb128 .LVU31
.LLST7:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU28
	.uleb128 .LVU31
.LLST8:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LFE61-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 0
.LLST18:
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL93-.Ltext0
	.uleb128 .LVL110-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL84-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL84-1-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS21:
	.uleb128 .LVU129
	.uleb128 .LVU136
	.uleb128 .LVU142
	.uleb128 .LVU175
	.uleb128 .LVU176
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS23:
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 .LVU207
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL117-.Ltext0
	.uleb128 .LVL118-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LFE60-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LFE59-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 0
.LLST15:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LFE59-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS16:
	.uleb128 .LVU93
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU103
	.uleb128 .LVU113
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU118
.LLST16:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU94
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LFE59-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LFE58-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU78
	.uleb128 .LVU80
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LFE58-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS12:
	.uleb128 .LVU60
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU70
	.uleb128 .LVU80
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU85
.LLST12:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU61
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LFE58-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
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
.LLRL22:
	.byte	0x4
	.uleb128 .LBB29-.Ltext0
	.uleb128 .LBE29-.Ltext0
	.byte	0x4
	.uleb128 .LBB32-.Ltext0
	.uleb128 .LBE32-.Ltext0
	.byte	0
.LLRL31:
	.byte	0x4
	.uleb128 .LBB35-.Ltext0
	.uleb128 .LBE35-.Ltext0
	.byte	0x4
	.uleb128 .LBB38-.Ltext0
	.uleb128 .LBE38-.Ltext0
	.byte	0
.LLRL36:
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF137:
	.string	"__builtin___asan_report_load8"
.LASF130:
	.string	"parse_warning_opt"
.LASF36:
	.string	"_shortbuf"
.LASF158:
	.string	"_IO_lock_t"
.LASF85:
	.string	"input"
.LASF51:
	.string	"stderr"
.LASF63:
	.string	"tkn_impl"
.LASF104:
	.string	"strncmp"
.LASF25:
	.string	"_IO_buf_end"
.LASF96:
	.string	"help_filter"
.LASF86:
	.string	"child_inputs"
.LASF75:
	.string	"flags"
.LASF139:
	.string	"__ubsan_handle_type_mismatch_v1"
.LASF136:
	.string	"__ubsan_handle_pointer_overflow"
.LASF23:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF82:
	.string	"next"
.LASF148:
	.string	"__builtin___asan_report_store1"
.LASF41:
	.string	"_freeres_list"
.LASF152:
	.string	"__builtin___asan_report_store8"
.LASF17:
	.string	"_flags"
.LASF79:
	.string	"root_argp"
.LASF116:
	.string	"argp_parse"
.LASF29:
	.string	"_markers"
.LASF143:
	.string	"__asan_report_store_n"
.LASF62:
	.string	"tkn_t"
.LASF55:
	.string	"array_t"
.LASF65:
	.string	"warn_multichar"
.LASF125:
	.string	"arguments"
.LASF101:
	.string	"arg_program_version"
.LASF14:
	.string	"uint32_t"
.LASF50:
	.string	"stdout"
.LASF28:
	.string	"_IO_save_end"
.LASF131:
	.string	"argp_usage"
.LASF48:
	.string	"_IO_codecvt"
.LASF108:
	.string	"lex_ctx_free"
.LASF54:
	.string	"long long unsigned int"
.LASF145:
	.string	"__asan_stack_malloc_1"
.LASF27:
	.string	"_IO_backup_base"
.LASF111:
	.string	"lex_ctx_process"
.LASF38:
	.string	"_offset"
.LASF142:
	.string	"__builtin___ubsan_handle_nonnull_arg"
.LASF129:
	.string	"is_valid_flag"
.LASF162:
	.string	"fprintf"
.LASF31:
	.string	"_fileno"
.LASF122:
	.string	"dbg_dump_comp_args"
.LASF59:
	.string	"memstreams"
.LASF73:
	.string	"argp_option"
.LASF16:
	.string	"size_t"
.LASF112:
	.string	"io_close_file"
.LASF94:
	.string	"args_doc"
.LASF154:
	.string	"__builtin___ubsan_handle_sub_overflow"
.LASF123:
	.string	"set_default_flags"
.LASF20:
	.string	"_IO_read_base"
.LASF64:
	.string	"_Bool"
.LASF114:
	.string	"io_open_file"
.LASF80:
	.string	"argc"
.LASF78:
	.string	"argp_state"
.LASF151:
	.string	"__asan_report_store8"
.LASF127:
	.string	"parse_compiler_opt"
.LASF10:
	.string	"__uint64_t"
.LASF134:
	.string	"__fmt"
.LASF159:
	.string	"dbg_mem_dump_stats"
.LASF156:
	.string	"__builtin___asan_handle_no_return"
.LASF133:
	.string	"__stream"
.LASF13:
	.string	"char"
.LASF141:
	.string	"__ubsan_handle_nonnull_arg"
.LASF102:
	.string	"__fprintf_chk"
.LASF44:
	.string	"_mode"
.LASF47:
	.string	"_IO_marker"
.LASF18:
	.string	"_IO_read_ptr"
.LASF70:
	.string	"filenames"
.LASF105:
	.string	"exit"
.LASF128:
	.string	"invert"
.LASF103:
	.string	"strcmp"
.LASF67:
	.string	"compilation_args"
.LASF97:
	.string	"argp_domain"
.LASF56:
	.string	"array_impl"
.LASF21:
	.string	"_IO_write_base"
.LASF53:
	.string	"long long int"
.LASF60:
	.string	"lexeme_arrays"
.LASF84:
	.string	"quoted"
.LASF107:
	.string	"argp_error"
.LASF26:
	.string	"_IO_save_base"
.LASF99:
	.string	"header"
.LASF113:
	.string	"lex_ctx_load_file"
.LASF71:
	.string	"nr_filenames"
.LASF42:
	.string	"_freeres_buf"
.LASF120:
	.string	"fptr"
.LASF109:
	.string	"tkn_free"
.LASF43:
	.string	"__pad5"
.LASF140:
	.string	"__builtin___ubsan_handle_type_mismatch_v1"
.LASF138:
	.string	"__builtin___ubsan_handle_pointer_overflow"
.LASF35:
	.string	"_vtable_offset"
.LASF157:
	.ascii	"GNU C17 13.3.1 202"
	.string	"40614 -mtune=generic -march=x86-64 -ggdb -Os -Og -std=gnu17 -p -fanalyzer -fsanitize=address,undefined,leak -fstack-protector-strong -fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero -fno-omit-frame-pointer -fno-common -fcf-protection"
.LASF91:
	.string	"argp"
.LASF121:
	.string	"args"
.LASF81:
	.string	"argv"
.LASF93:
	.string	"parser"
.LASF115:
	.string	"lex_ctx_new"
.LASF76:
	.string	"group"
.LASF68:
	.string	"warn_flags"
.LASF98:
	.string	"argp_child"
.LASF117:
	.string	"lexer"
.LASF89:
	.string	"out_stream"
.LASF19:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF100:
	.string	"argp_program_bug_address"
.LASF8:
	.string	"long int"
.LASF92:
	.string	"options"
.LASF72:
	.string	"error_t"
.LASF52:
	.string	"fptr_t"
.LASF146:
	.string	"__stack_chk_fail"
.LASF126:
	.string	"parse_opt"
.LASF49:
	.string	"_IO_wide_data"
.LASF15:
	.string	"uint64_t"
.LASF118:
	.string	"nr_errors"
.LASF90:
	.string	"pstate"
.LASF106:
	.string	"argp_state_help"
.LASF74:
	.string	"name"
.LASF77:
	.string	"argp_parser_t"
.LASF110:
	.string	"tkn_new"
.LASF40:
	.string	"_wide_data"
.LASF88:
	.string	"err_stream"
.LASF37:
	.string	"_lock"
.LASF5:
	.string	"long unsigned int"
.LASF33:
	.string	"_old_offset"
.LASF57:
	.string	"_IO_FILE"
.LASF119:
	.string	"tokenizer"
.LASF144:
	.string	"__builtin___asan_report_store_n"
.LASF149:
	.string	"__asan_report_load4"
.LASF147:
	.string	"__asan_report_store1"
.LASF135:
	.string	"__asan_report_load8"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF66:
	.string	"tokenize_comments"
.LASF22:
	.string	"_IO_write_ptr"
.LASF161:
	.string	"finalize"
.LASF69:
	.string	"parse_flags"
.LASF124:
	.string	"state"
.LASF39:
	.string	"_codecvt"
.LASF83:
	.string	"arg_num"
.LASF61:
	.string	"lexer_t"
.LASF11:
	.string	"__off_t"
.LASF6:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF58:
	.string	"lexer_impl"
.LASF160:
	.string	"main"
.LASF95:
	.string	"children"
.LASF30:
	.string	"_chain"
.LASF46:
	.string	"FILE"
.LASF132:
	.string	"__state"
.LASF32:
	.string	"_flags2"
.LASF34:
	.string	"_cur_column"
.LASF87:
	.string	"hook"
.LASF153:
	.string	"__ubsan_handle_sub_overflow"
.LASF12:
	.string	"__off64_t"
.LASF155:
	.string	"__asan_handle_no_return"
.LASF45:
	.string	"_unused2"
.LASF24:
	.string	"_IO_buf_base"
.LASF150:
	.string	"__builtin___asan_report_load4"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/unazed/Programming/c/ucc-0.2.0"
.LASF0:
	.string	"src/main.c"
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
