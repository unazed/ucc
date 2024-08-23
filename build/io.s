	.file	"io.c"
	.text
.Ltext0:
	.file 0 "/home/unazed/Programming/c/ucc-0.2.0" "src/io.c"
	.section	.rodata
	.align 32
.LC0:
	.string	"src/io.c"
	.zero	55
	.align 32
.LC1:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;31merror: \033[0m%s: failed to open filename (%s)\n"
	.zero	58
	.text
	.globl	io_open_file
	.type	io_open_file, @function
io_open_file:
.LASANPC53:
.LVL0:
.LFB53:
	.file 1 "src/io.c"
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
	movq	%rdi, %r12
	.loc 1 9 17 is_stmt 1 view .LVU2
	.loc 1 9 36 is_stmt 0 view .LVU3
	call	fopen@PLT
.LVL1:
	.loc 1 9 36 view .LVU4
	movq	%rax, %rbx
.LVL2:
	.loc 1 10 3 is_stmt 1 view .LVU5
	.loc 1 10 6 is_stmt 0 view .LVU6
	testq	%rax, %rax
	je	.L8
.LVL3:
.L1:
	.loc 1 16 1 view .LVU7
	movq	%rbx, %rax
	leaq	-32(%rbp), %rsp
	popq	%rbx
.LVL4:
	.loc 1 16 1 view .LVU8
	popq	%r12
.LVL5:
	.loc 1 16 1 view .LVU9
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL6:
.L8:
	.cfi_restore_state
	.loc 1 12 7 is_stmt 1 view .LVU10
	.loc 1 12 8 is_stmt 0 view .LVU11
	call	__errno_location@PLT
.LVL7:
	.loc 1 12 8 view .LVU12
	movq	%rax, %r13
	.loc 1 12 7 discriminator 1 view .LVU13
	testq	%rax, %rax
	je	.L3
	testb	$3, %al
	jne	.L3
.L4:
	movq	%r13, %rax
	shrq	$3, %rax
	movzbl	2147450880(%rax), %edx
	movq	%r13, %rax
	andl	$7, %eax
	addl	$3, %eax
	cmpb	%dl, %al
	jl	.L5
	testb	%dl, %dl
	jne	.L9
.L5:
	movl	0(%r13), %edi
	call	strerror@PLT
.LVL8:
	movq	%rax, %r13
	.loc 1 12 7 discriminator 2 view .LVU14
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L10
	movq	stderr(%rip), %r14
	testq	%r14, %r14
	je	.L11
.L7:
.LVL9:
.LBB16:
.LBI16:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 77 1 is_stmt 1 view .LVU15
.LBB17:
	.loc 2 79 3 view .LVU16
	.loc 2 79 10 is_stmt 0 view .LVU17
	subq	$8, %rsp
	pushq	%r13
	movq	%r12, %r9
	movl	$12, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL10:
	.loc 2 79 10 view .LVU18
.LBE17:
.LBE16:
	.loc 1 13 7 is_stmt 1 view .LVU19
	.loc 1 13 13 is_stmt 0 view .LVU20
	addq	$16, %rsp
	jmp	.L1
.L3:
	.loc 1 12 7 discriminator 1 view .LVU21
	movq	%r13, %rsi
	leaq	.Lubsan_data33(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL11:
	jmp	.L4
.L9:
	movq	%r13, %rdi
	call	__asan_report_load4@PLT
.LVL12:
.L10:
	.loc 1 12 7 discriminator 2 view .LVU22
	call	__asan_report_load8@PLT
.LVL13:
.L11:
	leaq	.Lubsan_data12(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL14:
	jmp	.L7
	.cfi_endproc
.LFE53:
	.size	io_open_file, .-io_open_file
	.globl	io_get_filesize
	.type	io_get_filesize, @function
io_get_filesize:
.LASANPC54:
.LVL15:
.LFB54:
	.loc 1 20 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 20 1 is_stmt 0 view .LVU24
	endbr64
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
	.loc 1 21 3 is_stmt 1 view .LVU25
	testq	%rdi, %rdi
	je	.L16
.LVL16:
.L13:
	.loc 1 21 3 is_stmt 0 view .LVU26
	movl	$2, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
	call	fseek@PLT
.LVL17:
	.loc 1 22 17 is_stmt 1 view .LVU27
	.loc 1 22 40 is_stmt 0 view .LVU28
	testq	%rbx, %rbx
	je	.L17
.L14:
	movq	%rbx, %rdi
	call	ftell@PLT
.LVL18:
	movq	%rax, %r12
.LVL19:
	.loc 1 23 3 is_stmt 1 view .LVU29
	testq	%rbx, %rbx
	je	.L18
.LVL20:
.L15:
	.loc 1 23 3 is_stmt 0 view .LVU30
	movl	$0, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
	call	fseek@PLT
.LVL21:
	.loc 1 24 3 is_stmt 1 view .LVU31
	.loc 1 25 1 is_stmt 0 view .LVU32
	movq	%r12, %rax
	popq	%rbx
.LVL22:
	.loc 1 25 1 view .LVU33
	popq	%r12
.LVL23:
	.loc 1 25 1 view .LVU34
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL24:
.L16:
	.cfi_restore_state
	.loc 1 21 3 view .LVU35
	leaq	.Lubsan_data14(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL25:
	jmp	.L13
.L17:
	.loc 1 22 40 view .LVU36
	leaq	.Lubsan_data15(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL26:
	jmp	.L14
.LVL27:
.L18:
	.loc 1 23 3 view .LVU37
	leaq	.Lubsan_data16(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL28:
	.loc 1 23 3 view .LVU38
	jmp	.L15
	.cfi_endproc
.LFE54:
	.size	io_get_filesize, .-io_get_filesize
	.globl	io_alloc_file_buffer
	.type	io_alloc_file_buffer, @function
io_alloc_file_buffer:
.LASANPC55:
.LVL29:
.LFB55:
	.loc 1 29 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 29 1 is_stmt 0 view .LVU40
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
1:	call	*mcount@GOTPCREL(%rip)
	.loc 1 30 3 is_stmt 1 view .LVU41
	.loc 1 30 10 is_stmt 0 view .LVU42
	call	io_get_filesize
.LVL30:
	.loc 1 30 10 view .LVU43
	movq	%rax, %rsi
	.loc 1 30 10 discriminator 1 view .LVU44
	movl	$1, %edx
	leaq	__func__.2(%rip), %rdi
	call	__chk_calloc_impl@PLT
.LVL31:
	.loc 1 31 1 view .LVU45
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	io_alloc_file_buffer, .-io_alloc_file_buffer
	.section	.rodata
	.align 32
.LC2:
	.string	"buffer_size <= io_get_filesize (file)"
	.zero	58
	.align 32
.LC3:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;31merror: \033[0m\033[1;37mAssertion failed: \033[0m%s\n"
	.zero	59
	.align 32
.LC4:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;31merror: \033[0mWriting to the specified buffer would cause an overrun file size is %zu bytes, buffer size is %zu bytes\n"
	.zero	51
	.align 32
.LC5:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0mread less than expected (expected: %zu, read: %zu)\n"
	.zero	42
	.text
	.globl	io_read_file_into_buffer
	.type	io_read_file_into_buffer, @function
io_read_file_into_buffer:
.LASANPC56:
.LVL32:
.LFB56:
	.loc 1 35 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 35 1 is_stmt 0 view .LVU47
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
	movq	%rsi, %r13
	movq	%rdx, %rbx
	.loc 1 36 3 is_stmt 1 view .LVU48
	.loc 1 36 24 is_stmt 0 view .LVU49
	call	io_get_filesize
.LVL33:
	.loc 1 36 6 discriminator 1 view .LVU50
	cmpq	%rbx, %rax
	jb	.L29
	.loc 1 36 6 is_stmt 1 discriminator 2 view .LVU51
	.loc 1 39 51 view .LVU52
	.loc 1 40 17 view .LVU53
.LVL34:
.LBB18:
.LBI18:
	.loc 2 207 1 view .LVU54
.LBB19:
	.loc 2 210 3 view .LVU55
	.loc 2 211 3 view .LVU56
	.loc 2 212 5 view .LVU57
	.loc 2 212 12 is_stmt 0 view .LVU58
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	fread@PLT
.LVL35:
	movq	%rax, %r12
.LVL36:
	.loc 2 212 12 view .LVU59
.LBE19:
.LBE18:
	.loc 1 41 3 is_stmt 1 view .LVU60
	.loc 1 41 6 is_stmt 0 view .LVU61
	cmpq	%rbx, %rax
	jnb	.L20
	.loc 1 42 5 is_stmt 1 view .LVU62
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
.LVL37:
	.loc 1 42 5 is_stmt 0 view .LVU63
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L30
	movq	stdout(%rip), %r13
.LVL38:
	.loc 1 42 5 view .LVU64
	testq	%r13, %r13
	je	.L31
.L28:
.LVL39:
.LBB20:
.LBI20:
	.loc 2 77 1 is_stmt 1 view .LVU65
.LBB21:
	.loc 2 79 3 view .LVU66
	.loc 2 79 10 is_stmt 0 view .LVU67
	subq	$8, %rsp
	pushq	%r12
	movq	%rbx, %r9
	movl	$42, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL40:
	.loc 2 79 10 view .LVU68
	addq	$16, %rsp
.LBE21:
.LBE20:
	.loc 1 44 3 is_stmt 1 view .LVU69
.L20:
	.loc 1 45 1 is_stmt 0 view .LVU70
	movq	%r12, %rax
	leaq	-24(%rbp), %rsp
	popq	%rbx
.LVL41:
	.loc 1 45 1 view .LVU71
	popq	%r12
.LVL42:
	.loc 1 45 1 view .LVU72
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL43:
.L29:
	.cfi_restore_state
	.loc 1 36 51 is_stmt 1 discriminator 1 view .LVU73
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L32
	movq	stderr(%rip), %r13
.LVL44:
	.loc 1 36 51 is_stmt 0 discriminator 1 view .LVU74
	testq	%r13, %r13
	je	.L33
.L23:
.LVL45:
.LBB22:
.LBI22:
	.loc 2 77 1 is_stmt 1 view .LVU75
.LBB23:
	.loc 2 79 3 view .LVU76
	.loc 2 79 10 is_stmt 0 view .LVU77
	leaq	.LC2(%rip), %r9
	movl	$36, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL46:
	.loc 2 79 10 view .LVU78
.LBE23:
.LBE22:
	.loc 1 36 171 is_stmt 1 discriminator 1 view .LVU79
	movq	%r12, %rdi
	call	io_get_filesize
.LVL47:
	movq	%rax, %r12
.LVL48:
	.loc 1 36 171 is_stmt 0 discriminator 2 view .LVU80
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L34
	movq	stderr(%rip), %r13
	testq	%r13, %r13
	je	.L35
.L25:
.LVL49:
.LBB24:
.LBI24:
	.loc 2 77 1 is_stmt 1 view .LVU81
.LBB25:
	.loc 2 79 3 view .LVU82
	.loc 2 79 10 is_stmt 0 view .LVU83
	subq	$8, %rsp
	pushq	%rbx
	movq	%r12, %r9
	movl	$36, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL50:
	.loc 2 79 10 view .LVU84
.LBE25:
.LBE24:
	.loc 1 36 222 is_stmt 1 discriminator 3 view .LVU85
	call	__asan_handle_no_return@PLT
.LVL51:
	movl	$1, %edi
	call	exit@PLT
.LVL52:
.L32:
	.loc 1 36 51 is_stmt 0 discriminator 1 view .LVU86
	call	__asan_report_load8@PLT
.LVL53:
.L33:
	.loc 1 36 51 discriminator 1 view .LVU87
	leaq	.Lubsan_data17(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL54:
	jmp	.L23
.LVL55:
.L34:
	.loc 1 36 171 discriminator 2 view .LVU88
	call	__asan_report_load8@PLT
.LVL56:
.L35:
	leaq	.Lubsan_data19(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL57:
	jmp	.L25
.LVL58:
.L30:
	.loc 1 42 5 view .LVU89
	call	__asan_report_load8@PLT
.LVL59:
.L31:
	.loc 1 42 5 view .LVU90
	leaq	.Lubsan_data22(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL60:
	jmp	.L28
	.cfi_endproc
.LFE56:
	.size	io_read_file_into_buffer, .-io_read_file_into_buffer
	.section	.rodata
	.align 32
.LC6:
	.string	"r"
	.zero	62
	.text
	.globl	io_read_file_into_memstream
	.type	io_read_file_into_memstream, @function
io_read_file_into_memstream:
.LASANPC57:
.LVL61:
.LFB57:
	.loc 1 49 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 49 1 is_stmt 0 view .LVU92
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
	movq	%rsi, %r14
	.loc 1 50 3 is_stmt 1 view .LVU93
	.loc 1 50 26 is_stmt 0 view .LVU94
	call	io_alloc_file_buffer
.LVL62:
	.loc 1 50 26 view .LVU95
	movq	%rax, %r12
.LVL63:
	.loc 1 51 3 is_stmt 1 view .LVU96
	.loc 1 51 21 is_stmt 0 view .LVU97
	movq	%rbx, %rdi
	call	io_get_filesize
.LVL64:
	.loc 1 51 21 view .LVU98
	movq	%rax, %r13
.LVL65:
	.loc 1 52 3 is_stmt 1 view .LVU99
	testq	%r12, %r12
	je	.L52
.LVL66:
.L37:
	.loc 1 52 3 is_stmt 0 view .LVU100
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	io_read_file_into_buffer
.LVL67:
	.loc 1 53 3 is_stmt 1 view .LVU101
	.loc 1 53 24 is_stmt 0 view .LVU102
	movl	$32, %edx
	movl	$1, %esi
	leaq	__func__.1(%rip), %rdi
	call	__chk_calloc_impl@PLT
.LVL68:
	movq	%rax, %rbx
.LVL69:
	.loc 1 54 3 is_stmt 1 view .LVU103
	.loc 1 54 18 is_stmt 0 view .LVU104
	testq	%rax, %rax
	je	.L38
	testb	$7, %al
	jne	.L38
.LVL70:
.L39:
	.loc 1 54 18 view .LVU105
	leaq	8(%rbx), %rdx
	cmpq	$-8, %rbx
	jnb	.L53
.L40:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L54
	movq	%r12, 8(%rbx)
	.loc 1 55 3 is_stmt 1 view .LVU106
	.loc 1 55 16 is_stmt 0 view .LVU107
	testq	%rbx, %rbx
	je	.L42
	.loc 1 55 16 view .LVU108
	testb	$7, %bl
	jne	.L42
.L43:
	.loc 1 55 16 view .LVU109
	leaq	24(%rbx), %rdx
	cmpq	$-24, %rbx
	jnb	.L55
.L44:
	leaq	24(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L56
	movq	%r13, 24(%rbx)
	.loc 1 56 3 is_stmt 1 view .LVU110
	.loc 1 56 16 is_stmt 0 view .LVU111
	testq	%rbx, %rbx
	je	.L46
	.loc 1 56 16 view .LVU112
	testb	$7, %bl
	jne	.L46
.L47:
	.loc 1 56 16 view .LVU113
	leaq	16(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L57
	movq	%r14, 16(%rbx)
	.loc 1 57 3 is_stmt 1 view .LVU114
	.loc 1 57 17 is_stmt 0 view .LVU115
	leaq	.LC6(%rip), %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	fmemopen@PLT
.LVL71:
	movq	%rax, %r12
.LVL72:
	.loc 1 57 15 discriminator 1 view .LVU116
	testq	%rbx, %rbx
	je	.L49
	testb	$7, %bl
	jne	.L49
.L50:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L58
	movq	%r12, (%rbx)
	.loc 1 58 3 is_stmt 1 view .LVU117
	.loc 1 59 1 is_stmt 0 view .LVU118
	movq	%rbx, %rax
	popq	%rbx
.LVL73:
	.loc 1 59 1 view .LVU119
	popq	%r12
	popq	%r13
.LVL74:
	.loc 1 59 1 view .LVU120
	popq	%r14
.LVL75:
	.loc 1 59 1 view .LVU121
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL76:
.L52:
	.cfi_restore_state
	.loc 1 52 3 view .LVU122
	leaq	.Lubsan_data26(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL77:
	.loc 1 52 3 view .LVU123
	jmp	.L37
.LVL78:
.L38:
	.loc 1 54 18 view .LVU124
	movq	%rbx, %rsi
	leaq	.Lubsan_data34(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL79:
	.loc 1 54 18 view .LVU125
	jmp	.L39
.L53:
	.loc 1 54 18 view .LVU126
	movq	%rbx, %rsi
	leaq	.Lubsan_data35(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL80:
	jmp	.L40
.L54:
	.loc 1 54 18 view .LVU127
	call	__asan_report_store8@PLT
.LVL81:
.L42:
	.loc 1 55 16 view .LVU128
	movq	%rbx, %rsi
	leaq	.Lubsan_data36(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL82:
	jmp	.L43
.L55:
	.loc 1 55 16 view .LVU129
	movq	%rbx, %rsi
	leaq	.Lubsan_data37(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL83:
	jmp	.L44
.L56:
	.loc 1 55 16 view .LVU130
	call	__asan_report_store8@PLT
.LVL84:
.L46:
	.loc 1 56 16 view .LVU131
	movq	%rbx, %rsi
	leaq	.Lubsan_data38(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL85:
	jmp	.L47
.L57:
	.loc 1 56 16 view .LVU132
	call	__asan_report_store8@PLT
.LVL86:
.L49:
	.loc 1 57 15 discriminator 1 view .LVU133
	movq	%rbx, %rsi
	leaq	.Lubsan_data39(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL87:
	jmp	.L50
.L58:
	.loc 1 57 15 discriminator 1 view .LVU134
	movq	%rbx, %rdi
	call	__asan_report_store8@PLT
.LVL88:
	.cfi_endproc
.LFE57:
	.size	io_read_file_into_memstream, .-io_read_file_into_memstream
	.section	.rodata
	.align 32
.LC7:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0mclosing file object %p\n"
	.zero	33
	.text
	.globl	io_close_file
	.type	io_close_file, @function
io_close_file:
.LASANPC59:
.LVL89:
.LFB59:
	.loc 1 72 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 72 1 is_stmt 0 view .LVU136
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
	.loc 1 73 3 is_stmt 1 view .LVU137
	.loc 1 73 129 is_stmt 0 view .LVU138
	movl	%edi, %r13d
	.loc 1 73 3 view .LVU139
	leaq	stdout(%rip), %rdi
.LVL90:
	.loc 1 73 3 view .LVU140
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L62
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L63
.L61:
.LVL91:
.LBB26:
.LBI26:
	.loc 2 77 1 is_stmt 1 view .LVU141
.LBB27:
	.loc 2 79 3 view .LVU142
	.loc 2 79 10 is_stmt 0 view .LVU143
	movq	%r13, %r9
	movl	$73, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL92:
	.loc 2 79 10 view .LVU144
.LBE27:
.LBE26:
	.loc 1 74 3 is_stmt 1 view .LVU145
	movq	%rbx, %rdi
	call	fclose@PLT
.LVL93:
	.loc 1 75 1 is_stmt 0 view .LVU146
	addq	$8, %rsp
	popq	%rbx
.LVL94:
	.loc 1 75 1 view .LVU147
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL95:
.L62:
	.cfi_restore_state
	.loc 1 73 3 view .LVU148
	call	__asan_report_load8@PLT
.LVL96:
.L63:
	leaq	.Lubsan_data27(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL97:
	jmp	.L61
	.cfi_endproc
.LFE59:
	.size	io_close_file, .-io_close_file
	.section	.rodata
	.align 32
.LC8:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0mfreeing memory stream %p\n"
	.zero	63
	.text
	.globl	io_free_memstream
	.type	io_free_memstream, @function
io_free_memstream:
.LASANPC58:
.LVL98:
.LFB58:
	.loc 1 63 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 63 1 is_stmt 0 view .LVU150
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
	.loc 1 64 3 is_stmt 1 view .LVU151
	.loc 1 64 133 is_stmt 0 view .LVU152
	movl	%edi, %r13d
	.loc 1 64 3 view .LVU153
	leaq	stdout(%rip), %rdi
.LVL99:
	.loc 1 64 3 view .LVU154
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L75
	movq	stdout(%rip), %r12
	testq	%r12, %r12
	je	.L76
.L66:
.LVL100:
.LBB28:
.LBI28:
	.loc 2 77 1 is_stmt 1 view .LVU155
.LBB29:
	.loc 2 79 3 view .LVU156
	.loc 2 79 10 is_stmt 0 view .LVU157
	movq	%r13, %r9
	movl	$64, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL101:
	.loc 2 79 10 view .LVU158
.LBE29:
.LBE28:
	.loc 1 65 3 is_stmt 1 view .LVU159
	testq	%rbx, %rbx
	je	.L67
	testb	$7, %bl
	jne	.L67
.L68:
	movq	%rbx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L77
	movq	(%rbx), %r12
	testq	%r12, %r12
	je	.L78
.L70:
	movq	%r12, %rdi
	call	io_close_file
.LVL102:
	.loc 1 66 3 view .LVU160
	.loc 1 66 36 is_stmt 0 view .LVU161
	testq	%rbx, %rbx
	je	.L71
	testb	$7, %bl
	jne	.L71
.L72:
	leaq	8(%rbx), %rdx
	cmpq	$-8, %rbx
	jnb	.L79
.L73:
	leaq	8(%rbx), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L80
	movq	8(%rbx), %rsi
	.loc 1 66 3 view .LVU162
	leaq	__func__.0(%rip), %r12
	movq	%r12, %rdi
	call	__chk_free_impl@PLT
.LVL103:
	.loc 1 67 3 is_stmt 1 view .LVU163
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	__chk_free_impl@PLT
.LVL104:
	.loc 1 68 1 is_stmt 0 view .LVU164
	addq	$8, %rsp
	popq	%rbx
.LVL105:
	.loc 1 68 1 view .LVU165
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL106:
.L75:
	.cfi_restore_state
	.loc 1 64 3 view .LVU166
	call	__asan_report_load8@PLT
.LVL107:
.L76:
	leaq	.Lubsan_data30(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL108:
	jmp	.L66
.L67:
	.loc 1 65 3 view .LVU167
	movq	%rbx, %rsi
	leaq	.Lubsan_data40(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL109:
	jmp	.L68
.L77:
	.loc 1 65 3 view .LVU168
	movq	%rbx, %rdi
	call	__asan_report_load8@PLT
.LVL110:
.L78:
	.loc 1 65 3 view .LVU169
	leaq	.Lubsan_data32(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL111:
	jmp	.L70
.L71:
	.loc 1 66 36 view .LVU170
	movq	%rbx, %rsi
	leaq	.Lubsan_data41(%rip), %rdi
	call	__ubsan_handle_type_mismatch_v1@PLT
.LVL112:
	jmp	.L72
.L79:
	.loc 1 66 36 view .LVU171
	movq	%rbx, %rsi
	leaq	.Lubsan_data42(%rip), %rdi
	call	__ubsan_handle_pointer_overflow@PLT
.LVL113:
	jmp	.L73
.L80:
	.loc 1 66 36 view .LVU172
	call	__asan_report_load8@PLT
.LVL114:
	.cfi_endproc
.LFE58:
	.size	io_free_memstream, .-io_free_memstream
	.section	.data.rel.local,"aw"
	.align 32
	.type	.Lubsan_data42, @object
	.size	.Lubsan_data42, 16
.Lubsan_data42:
	.quad	.LC0
	.long	66
	.long	36
	.zero	48
	.align 32
	.type	.Lubsan_data41, @object
	.size	.Lubsan_data41, 32
.Lubsan_data41:
	.quad	.LC0
	.long	66
	.long	36
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data40, @object
	.size	.Lubsan_data40, 32
.Lubsan_data40:
	.quad	.LC0
	.long	65
	.long	3
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data39, @object
	.size	.Lubsan_data39, 32
.Lubsan_data39:
	.quad	.LC0
	.long	57
	.long	15
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data38, @object
	.size	.Lubsan_data38, 32
.Lubsan_data38:
	.quad	.LC0
	.long	56
	.long	16
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data37, @object
	.size	.Lubsan_data37, 16
.Lubsan_data37:
	.quad	.LC0
	.long	55
	.long	16
	.zero	48
	.align 32
	.type	.Lubsan_data36, @object
	.size	.Lubsan_data36, 32
.Lubsan_data36:
	.quad	.LC0
	.long	55
	.long	16
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.align 32
	.type	.Lubsan_data35, @object
	.size	.Lubsan_data35, 16
.Lubsan_data35:
	.quad	.LC0
	.long	54
	.long	18
	.zero	48
	.align 32
	.type	.Lubsan_data34, @object
	.size	.Lubsan_data34, 32
.Lubsan_data34:
	.quad	.LC0
	.long	54
	.long	18
	.quad	.Lubsan_type2
	.byte	3
	.byte	3
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type2, @object
	.size	.Lubsan_type2, 23
.Lubsan_type2:
	.value	-1
	.value	0
	.string	"'struct <unknown>'"
	.zero	41
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data33, @object
	.size	.Lubsan_data33, 32
.Lubsan_data33:
	.quad	.LC0
	.long	12
	.long	7
	.quad	.Lubsan_type1
	.byte	2
	.byte	0
	.zero	6
	.zero	32
	.data
	.align 32
	.type	.Lubsan_type1, @object
	.size	.Lubsan_type1, 10
.Lubsan_type1:
	.value	-1
	.value	0
	.string	"'int'"
	.zero	54
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data32, @object
	.size	.Lubsan_data32, 40
.Lubsan_data32:
	.quad	.LC0
	.long	65
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
	.quad	.LC0
	.long	64
	.long	3
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
	.quad	.LC0
	.long	73
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data26, @object
	.size	.Lubsan_data26, 40
.Lubsan_data26:
	.quad	.LC0
	.long	52
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	2
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data22, @object
	.size	.Lubsan_data22, 40
.Lubsan_data22:
	.quad	.LC0
	.long	42
	.long	5
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
	.quad	.LC0
	.long	36
	.long	171
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
	.quad	.LC0
	.long	36
	.long	51
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
	.quad	.LC0
	.long	23
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
	.quad	.LC0
	.long	22
	.long	40
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
	.long	21
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data12, @object
	.size	.Lubsan_data12, 40
.Lubsan_data12:
	.quad	.LC0
	.long	12
	.long	7
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.section	.rodata
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"io_free_memstream"
	.zero	46
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"io_read_file_into_memstream"
	.zero	36
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"io_alloc_file_buffer"
	.zero	43
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC0
	.long	66
	.long	20
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC0
	.long	53
	.long	43
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC0
	.long	30
	.long	29
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"*.Lubsan_data42"
.LC10:
	.string	"*.Lubsan_data41"
.LC11:
	.string	"*.Lubsan_data40"
.LC12:
	.string	"*.Lubsan_data39"
.LC13:
	.string	"*.Lubsan_data38"
.LC14:
	.string	"*.Lubsan_data37"
.LC15:
	.string	"*.Lubsan_data36"
.LC16:
	.string	"*.Lubsan_data35"
.LC17:
	.string	"*.Lubsan_data34"
.LC18:
	.string	"*.Lubsan_type2"
.LC19:
	.string	"*.Lubsan_data33"
.LC20:
	.string	"*.Lubsan_type1"
.LC21:
	.string	"*.Lubsan_data32"
.LC22:
	.string	"*.Lubsan_data30"
.LC23:
	.string	"*.Lubsan_data27"
.LC24:
	.string	"*.Lubsan_data26"
.LC25:
	.string	"*.Lubsan_data22"
.LC26:
	.string	"*.Lubsan_data19"
.LC27:
	.string	"*.Lubsan_data17"
.LC28:
	.string	"*.Lubsan_data16"
.LC29:
	.string	"*.Lubsan_data15"
.LC30:
	.string	"*.Lubsan_data14"
.LC31:
	.string	"*.Lubsan_data12"
.LC32:
	.string	"__func__"
.LC33:
	.string	"*.LC3"
.LC34:
	.string	"*.LC2"
.LC35:
	.string	"*.LC8"
.LC36:
	.string	"*.LC4"
.LC37:
	.string	"*.LC1"
.LC38:
	.string	"*.LC6"
.LC39:
	.string	"*.LC7"
.LC40:
	.string	"*.LC5"
.LC41:
	.string	"*.LC0"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 2240
.LASAN0:
	.quad	.Lubsan_data42
	.quad	16
	.quad	64
	.quad	.LC9
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data41
	.quad	32
	.quad	64
	.quad	.LC10
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data40
	.quad	32
	.quad	64
	.quad	.LC11
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data39
	.quad	32
	.quad	64
	.quad	.LC12
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data38
	.quad	32
	.quad	64
	.quad	.LC13
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data37
	.quad	16
	.quad	64
	.quad	.LC14
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data36
	.quad	32
	.quad	64
	.quad	.LC15
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data35
	.quad	16
	.quad	64
	.quad	.LC16
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data34
	.quad	32
	.quad	64
	.quad	.LC17
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type2
	.quad	23
	.quad	64
	.quad	.LC18
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data33
	.quad	32
	.quad	64
	.quad	.LC19
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type1
	.quad	10
	.quad	64
	.quad	.LC20
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data32
	.quad	40
	.quad	96
	.quad	.LC21
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data30
	.quad	40
	.quad	96
	.quad	.LC22
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data27
	.quad	40
	.quad	96
	.quad	.LC23
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data26
	.quad	40
	.quad	96
	.quad	.LC24
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data22
	.quad	40
	.quad	96
	.quad	.LC25
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data19
	.quad	40
	.quad	96
	.quad	.LC26
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data17
	.quad	40
	.quad	96
	.quad	.LC27
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data16
	.quad	40
	.quad	96
	.quad	.LC28
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data15
	.quad	40
	.quad	96
	.quad	.LC29
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data14
	.quad	40
	.quad	96
	.quad	.LC30
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data12
	.quad	40
	.quad	96
	.quad	.LC31
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	__func__.0
	.quad	18
	.quad	64
	.quad	.LC32
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	__func__.1
	.quad	28
	.quad	64
	.quad	.LC32
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	__func__.2
	.quad	21
	.quad	64
	.quad	.LC32
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC3
	.quad	0
	.quad	.LC3
	.quad	69
	.quad	128
	.quad	.LC33
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	38
	.quad	96
	.quad	.LC34
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	65
	.quad	128
	.quad	.LC35
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	141
	.quad	192
	.quad	.LC36
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	70
	.quad	128
	.quad	.LC37
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	2
	.quad	64
	.quad	.LC38
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	63
	.quad	96
	.quad	.LC39
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	86
	.quad	128
	.quad	.LC40
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	9
	.quad	64
	.quad	.LC41
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB60:
	.cfi_startproc
	.loc 1 75 1 is_stmt 1 view .LVU173
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$35, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB61:
	.cfi_startproc
	.loc 1 75 1 view .LVU174
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$35, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/stdint-uintn.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h"
	.file 7 "/usr/include/bits/types/struct_FILE.h"
	.file 8 "/usr/include/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "include/io.h"
	.file 11 "/usr/include/bits/stdio2-decl.h"
	.file 12 "/usr/include/stdlib.h"
	.file 13 "include/generic.h"
	.file 14 "/usr/include/string.h"
	.file 15 "<built-in>"
	.file 16 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1130
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1d
	.long	.LASF105
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0xb
	.long	.LASF9
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x2e
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xb
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x6b
	.uleb128 0xb
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x6b
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0x16
	.long	0x8a
	.uleb128 0x8
	.long	0x96
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xe
	.long	0x96
	.uleb128 0xb
	.long	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x51
	.uleb128 0xb
	.long	.LASF14
	.byte	0x5
	.byte	0x4f
	.byte	0x1b
	.long	0x43
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x20
	.long	.LASF106
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x24d
	.uleb128 0x3
	.long	.LASF16
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x64
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x3
	.long	.LASF18
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0x3
	.long	.LASF19
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x91
	.byte	0x18
	.uleb128 0x3
	.long	.LASF20
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0x3
	.long	.LASF21
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x91
	.byte	0x28
	.uleb128 0x3
	.long	.LASF22
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x91
	.byte	0x30
	.uleb128 0x3
	.long	.LASF23
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x91
	.byte	0x38
	.uleb128 0x3
	.long	.LASF24
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x91
	.byte	0x40
	.uleb128 0x3
	.long	.LASF25
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x91
	.byte	0x48
	.uleb128 0x3
	.long	.LASF26
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x91
	.byte	0x50
	.uleb128 0x3
	.long	.LASF27
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x91
	.byte	0x58
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x266
	.byte	0x60
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x26b
	.byte	0x68
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x64
	.byte	0x70
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x64
	.byte	0x74
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x72
	.byte	0x78
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x270
	.byte	0x83
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x280
	.byte	0x88
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x7e
	.byte	0x90
	.uleb128 0x3
	.long	.LASF38
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x28a
	.byte	0x98
	.uleb128 0x3
	.long	.LASF39
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x294
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF40
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x26b
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF41
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x8a
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xba
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF43
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x64
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x299
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xc6
	.uleb128 0x21
	.long	.LASF107
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x17
	.long	.LASF46
	.uleb128 0x8
	.long	0x261
	.uleb128 0x8
	.long	0xc6
	.uleb128 0x10
	.long	0x96
	.long	0x280
	.uleb128 0x11
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x259
	.uleb128 0x17
	.long	.LASF47
	.uleb128 0x8
	.long	0x285
	.uleb128 0x17
	.long	.LASF48
	.uleb128 0x8
	.long	0x28f
	.uleb128 0x10
	.long	0x96
	.long	0x2a9
	.uleb128 0x11
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0x9d
	.uleb128 0x16
	.long	0x2a9
	.uleb128 0xe
	.long	0x2a9
	.uleb128 0x8
	.long	0x24d
	.uleb128 0x16
	.long	0x2b8
	.uleb128 0x19
	.long	.LASF49
	.byte	0x96
	.long	0x2b8
	.uleb128 0x19
	.long	.LASF50
	.byte	0x97
	.long	0x2b8
	.uleb128 0xb
	.long	.LASF51
	.byte	0xa
	.byte	0x6
	.byte	0xf
	.long	0x2b8
	.uleb128 0x22
	.byte	0x20
	.byte	0xa
	.byte	0x8
	.byte	0x9
	.long	0x320
	.uleb128 0x23
	.string	"ptr"
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.long	0x2d6
	.byte	0
	.uleb128 0x3
	.long	.LASF52
	.byte	0xa
	.byte	0xb
	.byte	0xc
	.long	0x320
	.byte	0x8
	.uleb128 0x3
	.long	.LASF53
	.byte	0xa
	.byte	0xc
	.byte	0xf
	.long	0x2a9
	.byte	0x10
	.uleb128 0x3
	.long	.LASF54
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.long	0xba
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0xa2
	.uleb128 0xe
	.long	0x320
	.uleb128 0xb
	.long	.LASF55
	.byte	0xa
	.byte	0xe
	.byte	0x4
	.long	0x336
	.uleb128 0x8
	.long	0x2e2
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF56
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0x15
	.long	.LASF58
	.byte	0x9
	.byte	0xb8
	.byte	0xc
	.long	0x64
	.long	0x35f
	.uleb128 0x4
	.long	0x2b8
	.byte	0
	.uleb128 0x24
	.long	.LASF108
	.byte	0xd
	.byte	0x50
	.byte	0x6
	.long	0x376
	.uleb128 0x4
	.long	0x2a9
	.uleb128 0x4
	.long	0x8a
	.byte	0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x9
	.value	0x13a
	.byte	0xe
	.long	0x2b8
	.long	0x397
	.uleb128 0x4
	.long	0x8a
	.uleb128 0x4
	.long	0xba
	.uleb128 0x4
	.long	0x2a9
	.byte	0
	.uleb128 0x15
	.long	.LASF60
	.byte	0xb
	.byte	0x7a
	.byte	0xf
	.long	0xba
	.long	0x3c1
	.uleb128 0x4
	.long	0x8c
	.uleb128 0x4
	.long	0xba
	.uleb128 0x4
	.long	0xba
	.uleb128 0x4
	.long	0xba
	.uleb128 0x4
	.long	0x2bd
	.byte	0
	.uleb128 0x25
	.long	.LASF84
	.byte	0xb
	.byte	0x6e
	.byte	0xf
	.long	.LASF85
	.long	0xba
	.long	0x3ea
	.uleb128 0x4
	.long	0x8c
	.uleb128 0x4
	.long	0xba
	.uleb128 0x4
	.long	0xba
	.uleb128 0x4
	.long	0x2bd
	.byte	0
	.uleb128 0x26
	.long	.LASF61
	.byte	0xc
	.value	0x2f4
	.byte	0xd
	.long	0x3fd
	.uleb128 0x4
	.long	0x64
	.byte	0
	.uleb128 0x15
	.long	.LASF62
	.byte	0xd
	.byte	0x52
	.byte	0x7
	.long	0x8a
	.long	0x41d
	.uleb128 0x4
	.long	0x2a9
	.uleb128 0x4
	.long	0xba
	.uleb128 0x4
	.long	0xba
	.byte	0
	.uleb128 0x12
	.long	.LASF63
	.byte	0x9
	.value	0x311
	.byte	0x11
	.long	0x6b
	.long	0x434
	.uleb128 0x4
	.long	0x2b8
	.byte	0
	.uleb128 0x12
	.long	.LASF64
	.byte	0x9
	.value	0x30b
	.byte	0xc
	.long	0x64
	.long	0x455
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x64
	.byte	0
	.uleb128 0x15
	.long	.LASF65
	.byte	0xb
	.byte	0x31
	.byte	0xc
	.long	0x64
	.long	0x476
	.uleb128 0x4
	.long	0x2bd
	.uleb128 0x4
	.long	0x64
	.uleb128 0x4
	.long	0x2ae
	.uleb128 0x1a
	.byte	0
	.uleb128 0x12
	.long	.LASF66
	.byte	0xe
	.value	0x1a3
	.byte	0xe
	.long	0x91
	.long	0x48d
	.uleb128 0x4
	.long	0x64
	.byte	0
	.uleb128 0x27
	.long	.LASF109
	.byte	0x10
	.byte	0x25
	.byte	0xd
	.long	0x499
	.uleb128 0x8
	.long	0x64
	.uleb128 0x12
	.long	.LASF67
	.byte	0x9
	.value	0x108
	.byte	0xe
	.long	0x2b8
	.long	0x4ba
	.uleb128 0x4
	.long	0x2ae
	.uleb128 0x4
	.long	0x2ae
	.byte	0
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x47
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a8
	.uleb128 0x9
	.long	.LASF70
	.byte	0x47
	.byte	0x17
	.long	0x2d6
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0xc
	.long	0x10ce
	.quad	.LBI26
	.byte	.LVU141
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x49
	.byte	0x3
	.long	0x567
	.uleb128 0x5
	.long	0x10e7
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x5
	.long	0x10dc
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x6
	.quad	.LVL92
	.long	0x455
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
	.quad	.LC7
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
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL93
	.long	0x349
	.long	0x57f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL96
	.long	0x10f4
	.uleb128 0x6
	.quad	.LVL97
	.long	0x10fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data27
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x3e
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x796
	.uleb128 0x9
	.long	.LASF71
	.byte	0x3e
	.byte	0x20
	.long	0x32a
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x18
	.long	.LASF74
	.long	0x7a6
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0xc
	.long	0x10ce
	.quad	.LBI28
	.byte	.LVU155
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x40
	.byte	0x3
	.long	0x668
	.uleb128 0x5
	.long	0x10e7
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x5
	.long	0x10dc
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x6
	.quad	.LVL101
	.long	0x455
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
	.quad	.LC8
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
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL102
	.long	0x4ba
	.long	0x680
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL103
	.long	0x35f
	.long	0x698
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL104
	.long	0x35f
	.long	0x6b6
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
	.uleb128 0x7
	.quad	.LVL107
	.long	0x10f4
	.uleb128 0x2
	.quad	.LVL108
	.long	0x10fd
	.long	0x6e2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data30
	.byte	0
	.uleb128 0x2
	.quad	.LVL109
	.long	0x1106
	.long	0x707
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL110
	.long	0x10f4
	.long	0x71f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL111
	.long	0x10fd
	.long	0x73e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data32
	.byte	0
	.uleb128 0x2
	.quad	.LVL112
	.long	0x1106
	.long	0x763
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL113
	.long	0x110f
	.long	0x788
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL114
	.long	0x10f4
	.byte	0
	.uleb128 0x10
	.long	0x9d
	.long	0x7a6
	.uleb128 0x11
	.long	0x43
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.long	0x796
	.uleb128 0x13
	.long	.LASF75
	.byte	0x30
	.long	0x32a
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1f
	.uleb128 0x9
	.long	.LASF70
	.byte	0x30
	.byte	0x25
	.long	0x2d6
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x9
	.long	.LASF53
	.byte	0x30
	.byte	0x3d
	.long	0x2b3
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0xf
	.long	.LASF72
	.byte	0x32
	.byte	0xc
	.long	0x320
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0xf
	.long	.LASF73
	.byte	0x33
	.byte	0xa
	.long	0xba
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0xf
	.long	.LASF71
	.byte	0x35
	.byte	0xf
	.long	0x32a
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x18
	.long	.LASF74
	.long	0xa2f
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x2
	.quad	.LVL62
	.long	0xd81
	.long	0x855
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL64
	.long	0xe16
	.long	0x86d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL67
	.long	0xa34
	.long	0x891
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
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL68
	.long	0x3fd
	.long	0x8bb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.1
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
	.uleb128 0x2
	.quad	.LVL71
	.long	0x376
	.long	0x8e6
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
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x2
	.quad	.LVL77
	.long	0x10fd
	.long	0x905
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data26
	.byte	0
	.uleb128 0x2
	.quad	.LVL79
	.long	0x1106
	.long	0x92a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL80
	.long	0x110f
	.long	0x94f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL81
	.long	0x1118
	.uleb128 0x2
	.quad	.LVL82
	.long	0x1106
	.long	0x981
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL83
	.long	0x110f
	.long	0x9a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL84
	.long	0x1118
	.uleb128 0x2
	.quad	.LVL85
	.long	0x1106
	.long	0x9d8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data38
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL86
	.long	0x1118
	.uleb128 0x2
	.quad	.LVL87
	.long	0x1106
	.long	0xa0a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL88
	.long	0x1118
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x9d
	.long	0xa2f
	.uleb128 0x11
	.long	0x43
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.long	0xa1f
	.uleb128 0x13
	.long	.LASF76
	.byte	0x22
	.long	0xba
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xd81
	.uleb128 0x9
	.long	.LASF70
	.byte	0x22
	.byte	0x22
	.long	0x2d6
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x9
	.long	.LASF52
	.byte	0x22
	.byte	0x37
	.long	0x325
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x9
	.long	.LASF77
	.byte	0x22
	.byte	0x46
	.long	0xba
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xf
	.long	.LASF78
	.byte	0x28
	.byte	0x1d
	.long	0xba
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xc
	.long	0x1087
	.quad	.LBI18
	.byte	.LVU54
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x28
	.byte	0x2e
	.long	0xb2b
	.uleb128 0x5
	.long	0x10b7
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x5
	.long	0x10ab
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x5
	.long	0x10a0
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x5
	.long	0x1095
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x28
	.long	0x10c2
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x6
	.quad	.LVL35
	.long	0x3c1
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
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x10ce
	.quad	.LBI20
	.byte	.LVU65
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x2a
	.byte	0x5
	.long	0xba9
	.uleb128 0x5
	.long	0x10e7
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x5
	.long	0x10dc
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x6
	.quad	.LVL40
	.long	0x455
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
	.quad	.LC5
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
	.byte	0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x10ce
	.quad	.LBI22
	.byte	.LVU75
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x24
	.byte	0x33
	.long	0xc2e
	.uleb128 0x5
	.long	0x10e7
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x5
	.long	0x10dc
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x6
	.quad	.LVL46
	.long	0x455
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
	.quad	.LC3
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
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x10ce
	.quad	.LBI24
	.byte	.LVU81
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x24
	.byte	0xab
	.long	0xcac
	.uleb128 0x5
	.long	0x10e7
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x5
	.long	0x10dc
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x6
	.quad	.LVL50
	.long	0x455
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
	.quad	.LC4
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
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL33
	.long	0xe16
	.long	0xcc4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL47
	.long	0xe16
	.long	0xcdc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL51
	.long	0x1121
	.uleb128 0x2
	.quad	.LVL52
	.long	0x3ea
	.long	0xd00
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x7
	.quad	.LVL53
	.long	0x10f4
	.uleb128 0x2
	.quad	.LVL54
	.long	0x10fd
	.long	0xd2c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data17
	.byte	0
	.uleb128 0x7
	.quad	.LVL56
	.long	0x10f4
	.uleb128 0x2
	.quad	.LVL57
	.long	0x10fd
	.long	0xd58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data19
	.byte	0
	.uleb128 0x7
	.quad	.LVL59
	.long	0x10f4
	.uleb128 0x6
	.quad	.LVL60
	.long	0x10fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data22
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1c
	.long	0x320
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xe01
	.uleb128 0x9
	.long	.LASF70
	.byte	0x1c
	.byte	0x1e
	.long	0x2d6
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x18
	.long	.LASF74
	.long	0xe11
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x2
	.quad	.LVL30
	.long	0xe16
	.long	0xde0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x6
	.quad	.LVL31
	.long	0x3fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x9d
	.long	0xe11
	.uleb128 0x11
	.long	0x43
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.long	0xe01
	.uleb128 0x13
	.long	.LASF80
	.byte	0x13
	.long	0xba
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xf12
	.uleb128 0x9
	.long	.LASF70
	.byte	0x13
	.byte	0x19
	.long	0x2d6
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xf
	.long	.LASF73
	.byte	0x16
	.byte	0x1d
	.long	0x6b
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2
	.quad	.LVL17
	.long	0x434
	.long	0xe7e
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
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2
	.quad	.LVL18
	.long	0x41d
	.long	0xe96
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL21
	.long	0x434
	.long	0xeb8
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
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL25
	.long	0x10fd
	.long	0xed7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data14
	.byte	0
	.uleb128 0x2
	.quad	.LVL26
	.long	0x10fd
	.long	0xef6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data15
	.byte	0
	.uleb128 0x6
	.quad	.LVL28
	.long	0x10fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data16
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF81
	.byte	0x7
	.long	0x2d6
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1087
	.uleb128 0x9
	.long	.LASF82
	.byte	0x7
	.byte	0x1b
	.long	0x2a9
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x7
	.byte	0x31
	.long	0x2a9
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xf
	.long	.LASF70
	.byte	0x9
	.byte	0x1d
	.long	0x2b8
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xc
	.long	0x10ce
	.quad	.LBI16
	.byte	.LVU15
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0xc
	.byte	0x7
	.long	0xfe8
	.uleb128 0x5
	.long	0x10e7
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x5
	.long	0x10dc
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x6
	.quad	.LVL10
	.long	0x455
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
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
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL1
	.long	0x49e
	.long	0x1007
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x7
	.quad	.LVL7
	.long	0x48d
	.uleb128 0x7
	.quad	.LVL8
	.long	0x476
	.uleb128 0x2
	.quad	.LVL11
	.long	0x1106
	.long	0x1046
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL12
	.long	0x112a
	.long	0x105e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL13
	.long	0x10f4
	.uleb128 0x6
	.quad	.LVL14
	.long	0x10fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data12
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF85
	.byte	0xcf
	.long	0xba
	.long	0x10ce
	.uleb128 0x14
	.long	.LASF86
	.byte	0xcf
	.byte	0x19
	.long	0x8c
	.uleb128 0x14
	.long	.LASF87
	.byte	0xcf
	.byte	0x27
	.long	0xba
	.uleb128 0x29
	.string	"__n"
	.byte	0x2
	.byte	0xcf
	.byte	0x36
	.long	0xba
	.uleb128 0x14
	.long	.LASF88
	.byte	0xd0
	.byte	0x19
	.long	0x2bd
	.uleb128 0x2a
	.string	"sz"
	.byte	0x2
	.byte	0xd2
	.byte	0xa
	.long	0xba
	.byte	0
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x4d
	.long	0x64
	.long	0x10f4
	.uleb128 0x14
	.long	.LASF88
	.byte	0x4d
	.byte	0x1b
	.long	0x2bd
	.uleb128 0x14
	.long	.LASF90
	.byte	0x4d
	.byte	0x3c
	.long	0x2ae
	.uleb128 0x1a
	.byte	0
	.uleb128 0xd
	.long	.LASF91
	.long	.LASF93
	.uleb128 0xd
	.long	.LASF92
	.long	.LASF94
	.uleb128 0xd
	.long	.LASF95
	.long	.LASF96
	.uleb128 0xd
	.long	.LASF97
	.long	.LASF98
	.uleb128 0xd
	.long	.LASF99
	.long	.LASF100
	.uleb128 0xd
	.long	.LASF101
	.long	.LASF102
	.uleb128 0xd
	.long	.LASF103
	.long	.LASF104
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
	.uleb128 0x6
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xd
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
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
.LVUS28:
	.uleb128 0
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST28:
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LFE59-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS29:
	.uleb128 .LVU141
	.uleb128 .LVU144
.LLST29:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU141
	.uleb128 .LVU144
.LLST30:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 0
.LLST31:
	.byte	0x4
	.uleb128 .LVL98-.Ltext0
	.uleb128 .LVL99-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL105-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL105-.Ltext0
	.uleb128 .LVL106-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL106-.Ltext0
	.uleb128 .LFE58-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS32:
	.uleb128 .LVU155
	.uleb128 .LVU158
.LLST32:
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU155
	.uleb128 .LVU158
.LLST33:
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS25:
	.uleb128 .LVU96
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU116
	.uleb128 .LVU122
	.uleb128 .LVU133
.LLST25:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS26:
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU120
	.uleb128 .LVU122
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL77-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL77-1-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS27:
	.uleb128 .LVU103
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 .LFE57-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS11:
	.uleb128 .LVU59
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU89
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS12:
	.uleb128 .LVU54
	.uleb128 .LVU59
.LLST12:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS13:
	.uleb128 .LVU54
	.uleb128 .LVU59
.LLST13:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS14:
	.uleb128 .LVU54
	.uleb128 .LVU59
.LLST14:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU54
	.uleb128 .LVU59
.LLST15:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS16:
	.uleb128 .LVU56
	.uleb128 .LVU59
.LLST16:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU65
	.uleb128 .LVU68
.LLST17:
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU65
	.uleb128 .LVU68
.LLST18:
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS19:
	.uleb128 .LVU75
	.uleb128 .LVU78
.LLST19:
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU75
	.uleb128 .LVU78
.LLST20:
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS21:
	.uleb128 .LVU81
	.uleb128 .LVU84
.LLST21:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU81
	.uleb128 .LVU84
.LLST22:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LFE54-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS6:
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU37
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-1-.Ltext0
	.uleb128 .LFE54-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x5c
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
	.byte	0x5c
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS3:
	.uleb128 .LVU15
	.uleb128 .LVU18
.LLST3:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU15
	.uleb128 .LVU18
.LLST4:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
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
.LASF10:
	.string	"__off_t"
.LASF103:
	.string	"__asan_report_load4"
.LASF17:
	.string	"_IO_read_ptr"
.LASF29:
	.string	"_chain"
.LASF15:
	.string	"size_t"
.LASF14:
	.string	"uintptr_t"
.LASF35:
	.string	"_shortbuf"
.LASF9:
	.string	"__uint8_t"
.LASF79:
	.string	"io_alloc_file_buffer"
.LASF87:
	.string	"__size"
.LASF94:
	.string	"__builtin___ubsan_handle_nonnull_arg"
.LASF71:
	.string	"stream"
.LASF53:
	.string	"path"
.LASF23:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF74:
	.string	"__func__"
.LASF38:
	.string	"_codecvt"
.LASF64:
	.string	"fseek"
.LASF56:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF102:
	.string	"__builtin___asan_handle_no_return"
.LASF30:
	.string	"_fileno"
.LASF18:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF55:
	.string	"memstream_t"
.LASF16:
	.string	"_flags"
.LASF24:
	.string	"_IO_buf_end"
.LASF33:
	.string	"_cur_column"
.LASF47:
	.string	"_IO_codecvt"
.LASF108:
	.string	"__chk_free_impl"
.LASF73:
	.string	"filesize"
.LASF32:
	.string	"_old_offset"
.LASF37:
	.string	"_offset"
.LASF69:
	.string	"io_free_memstream"
.LASF59:
	.string	"fmemopen"
.LASF46:
	.string	"_IO_marker"
.LASF4:
	.string	"unsigned int"
.LASF41:
	.string	"_freeres_buf"
.LASF89:
	.string	"fprintf"
.LASF80:
	.string	"io_get_filesize"
.LASF5:
	.string	"long unsigned int"
.LASF101:
	.string	"__asan_handle_no_return"
.LASF21:
	.string	"_IO_write_ptr"
.LASF54:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF25:
	.string	"_IO_save_base"
.LASF76:
	.string	"io_read_file_into_buffer"
.LASF36:
	.string	"_lock"
.LASF75:
	.string	"io_read_file_into_memstream"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF49:
	.string	"stdout"
.LASF84:
	.string	"__fread_alias"
.LASF82:
	.string	"filename"
.LASF22:
	.string	"_IO_write_end"
.LASF99:
	.string	"__asan_report_store8"
.LASF70:
	.string	"file"
.LASF107:
	.string	"_IO_lock_t"
.LASF106:
	.string	"_IO_FILE"
.LASF104:
	.string	"__builtin___asan_report_load4"
.LASF93:
	.string	"__builtin___asan_report_load8"
.LASF67:
	.string	"fopen"
.LASF28:
	.string	"_markers"
.LASF62:
	.string	"__chk_calloc_impl"
.LASF78:
	.string	"nbytes_written"
.LASF2:
	.string	"unsigned char"
.LASF109:
	.string	"__errno_location"
.LASF7:
	.string	"short int"
.LASF105:
	.ascii	"GNU C17 13.3.1 202"
	.string	"40614 -mtune=generic -march=x86-64 -ggdb -Os -Og -std=gnu17 -p -fanalyzer -fsanitize=address,undefined,leak -fstack-protector-strong -fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero -fno-omit-frame-pointer -fno-common -fcf-protection"
.LASF48:
	.string	"_IO_wide_data"
.LASF34:
	.string	"_vtable_offset"
.LASF45:
	.string	"FILE"
.LASF61:
	.string	"exit"
.LASF65:
	.string	"__fprintf_chk"
.LASF85:
	.string	"fread"
.LASF12:
	.string	"char"
.LASF83:
	.string	"mode"
.LASF92:
	.string	"__ubsan_handle_nonnull_arg"
.LASF98:
	.string	"__builtin___ubsan_handle_pointer_overflow"
.LASF88:
	.string	"__stream"
.LASF81:
	.string	"io_open_file"
.LASF52:
	.string	"buffer"
.LASF58:
	.string	"fclose"
.LASF100:
	.string	"__builtin___asan_report_store8"
.LASF96:
	.string	"__builtin___ubsan_handle_type_mismatch_v1"
.LASF11:
	.string	"__off64_t"
.LASF19:
	.string	"_IO_read_base"
.LASF27:
	.string	"_IO_save_end"
.LASF90:
	.string	"__fmt"
.LASF97:
	.string	"__ubsan_handle_pointer_overflow"
.LASF42:
	.string	"__pad5"
.LASF44:
	.string	"_unused2"
.LASF50:
	.string	"stderr"
.LASF77:
	.string	"buffer_size"
.LASF13:
	.string	"uint8_t"
.LASF26:
	.string	"_IO_backup_base"
.LASF60:
	.string	"__fread_chk"
.LASF68:
	.string	"io_close_file"
.LASF40:
	.string	"_freeres_list"
.LASF72:
	.string	"file_buffer"
.LASF51:
	.string	"fptr_t"
.LASF39:
	.string	"_wide_data"
.LASF63:
	.string	"ftell"
.LASF66:
	.string	"strerror"
.LASF20:
	.string	"_IO_write_base"
.LASF86:
	.string	"__ptr"
.LASF95:
	.string	"__ubsan_handle_type_mismatch_v1"
.LASF91:
	.string	"__asan_report_load8"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/unazed/Programming/c/ucc-0.2.0"
.LASF0:
	.string	"src/io.c"
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
