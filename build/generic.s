	.file	"generic.c"
	.text
.Ltext0:
	.file 0 "/home/unazed/Programming/c/ucc-0.2.0" "src/generic.c"
	.section	.rodata
	.align 32
.LC0:
	.string	"src/generic.c"
	.zero	50
	.align 32
.LC1:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0m%s: freeing pointer (size: %zu): %p\n"
	.zero	52
	.text
	.globl	__chk_free_impl
	.type	__chk_free_impl, @function
__chk_free_impl:
.LASANPC53:
.LVL0:
.LFB53:
	.file 1 "src/generic.c"
	.loc 1 18 1 view -0
	.cfi_startproc
	.loc 1 18 1 is_stmt 0 view .LVU1
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
	subq	$8, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %r13
	movq	%rsi, %r12
	.loc 1 20 17 is_stmt 1 view .LVU2
	.loc 1 20 40 is_stmt 0 view .LVU3
	movq	%rsi, %rdi
.LVL1:
	.loc 1 20 40 view .LVU4
	call	malloc_usable_size@PLT
.LVL2:
	.loc 1 20 40 view .LVU5
	movq	%rax, %rbx
.LVL3:
	.loc 1 21 3 is_stmt 1 view .LVU6
	.loc 1 21 160 is_stmt 0 view .LVU7
	movl	%r12d, %r15d
	.loc 1 21 3 view .LVU8
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
.LVL4:
	.loc 1 21 3 view .LVU9
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L6
	movq	stdout(%rip), %r14
	testq	%r14, %r14
	je	.L7
.L3:
.LVL5:
.LBB24:
.LBI24:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 77 1 is_stmt 1 view .LVU10
.LBB25:
	.loc 2 79 3 view .LVU11
	.loc 2 79 10 is_stmt 0 view .LVU12
	pushq	%r15
	pushq	%rbx
	movq	%r13, %r9
	movl	$21, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL6:
	.loc 2 79 10 view .LVU13
.LBE25:
.LBE24:
	.loc 1 23 3 is_stmt 1 view .LVU14
	.loc 1 23 19 is_stmt 0 view .LVU15
	movslq	%ebx, %rsi
	.loc 1 23 16 view .LVU16
	addq	$16, %rsp
	movq	%rsi, %rbx
.LVL7:
	.loc 1 23 16 view .LVU17
	addq	nr_mem_freed(%rip), %rbx
	jo	.L8
.L4:
	movq	%rbx, nr_mem_freed(%rip)
	.loc 1 24 3 is_stmt 1 view .LVU18
	.loc 1 24 11 is_stmt 0 view .LVU19
	addq	$1, nr_frees(%rip)
	.loc 1 28 3 is_stmt 1 view .LVU20
	movq	%r12, %rdi
	call	free@PLT
.LVL8:
	.loc 1 29 1 is_stmt 0 view .LVU21
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
.LVL9:
	.loc 1 29 1 view .LVU22
	popq	%r13
.LVL10:
	.loc 1 29 1 view .LVU23
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL11:
.L6:
	.cfi_restore_state
	.loc 1 21 3 view .LVU24
	call	__asan_report_load8@PLT
.LVL12:
.L7:
	leaq	.Lubsan_data13(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL13:
	jmp	.L3
.LVL14:
.L8:
	.loc 1 23 16 view .LVU25
	movq	nr_mem_freed(%rip), %rdx
	leaq	.Lubsan_data35(%rip), %rdi
	call	__ubsan_handle_add_overflow@PLT
.LVL15:
	jmp	.L4
	.cfi_endproc
.LFE53:
	.size	__chk_free_impl, .-__chk_free_impl
	.section	.rodata
	.align 32
.LC2:
	.string	"<unknown>"
	.zero	54
	.text
	.globl	__chk_free_impl_nofn
	.type	__chk_free_impl_nofn, @function
__chk_free_impl_nofn:
.LASANPC54:
.LVL16:
.LFB54:
	.loc 1 33 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 33 1 is_stmt 0 view .LVU27
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, %rsi
	.loc 1 34 3 is_stmt 1 view .LVU28
	leaq	.LC2(%rip), %rdi
.LVL17:
	.loc 1 34 3 is_stmt 0 view .LVU29
	call	__chk_free_impl
.LVL18:
	.loc 1 35 1 view .LVU30
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	__chk_free_impl_nofn, .-__chk_free_impl_nofn
	.section	.rodata
	.align 32
.LC3:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;31merror: \033[0mcritical allocation failure\n"
	.zero	63
	.align 32
.LC4:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0m%s: realloc(ptr: %p, size: %zu) returned %p\n"
	.zero	44
	.align 32
.LC5:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0m\treallocation size went from %zu to %zu byte(s)\n"
	.zero	40
	.text
	.globl	__chk_realloc_impl
	.type	__chk_realloc_impl, @function
__chk_realloc_impl:
.LASANPC55:
.LVL19:
.LFB55:
	.loc 1 39 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 39 1 is_stmt 0 view .LVU32
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
	movq	%rdi, -64(%rbp)
	movq	%rsi, %r12
	movq	%rdx, %r13
	.loc 1 41 17 is_stmt 1 view .LVU33
	.loc 1 41 45 is_stmt 0 view .LVU34
	movq	%rsi, %rdi
.LVL20:
	.loc 1 41 45 view .LVU35
	call	malloc_usable_size@PLT
.LVL21:
	.loc 1 41 45 view .LVU36
	movq	%rax, -56(%rbp)
.LVL22:
	.loc 1 43 17 is_stmt 1 view .LVU37
	.loc 1 43 35 is_stmt 0 view .LVU38
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	realloc@PLT
.LVL23:
	.loc 1 43 35 view .LVU39
	movq	%rax, %rbx
.LVL24:
	.loc 1 44 3 is_stmt 1 view .LVU40
	.loc 1 44 6 is_stmt 0 view .LVU41
	testq	%rax, %rax
	je	.L23
	.loc 1 45 8 is_stmt 1 view .LVU42
	.loc 1 48 3 view .LVU43
	.loc 1 48 205 is_stmt 0 view .LVU44
	movl	%eax, %r15d
	.loc 1 48 158 view .LVU45
	movl	%r12d, %r12d
.LVL25:
	.loc 1 48 3 view .LVU46
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
.LVL26:
	.loc 1 48 3 view .LVU47
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L24
	movq	stdout(%rip), %r14
	testq	%r14, %r14
	je	.L25
.L15:
.LVL27:
.LBB26:
.LBI26:
	.loc 2 77 1 is_stmt 1 view .LVU48
.LBB27:
	.loc 2 79 3 view .LVU49
	.loc 2 79 10 is_stmt 0 view .LVU50
	subq	$8, %rsp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	movq	-64(%rbp), %r9
	movl	$48, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL28:
	.loc 2 79 10 view .LVU51
.LBE27:
.LBE26:
	.loc 1 52 17 is_stmt 1 view .LVU52
	.loc 1 52 44 is_stmt 0 view .LVU53
	addq	$32, %rsp
	movq	%rbx, %rdi
	call	malloc_usable_size@PLT
.LVL29:
	movq	%rax, %r13
.LVL30:
	.loc 1 53 17 is_stmt 1 view .LVU54
	.loc 1 53 29 is_stmt 0 view .LVU55
	movl	%eax, %r14d
	subl	-56(%rbp), %r14d
	jo	.L26
.LVL31:
.L16:
	.loc 1 54 3 is_stmt 1 view .LVU56
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L27
	movq	stdout(%rip), %r15
	testq	%r15, %r15
	je	.L28
.L19:
.LVL32:
.LBB28:
.LBI28:
	.loc 2 77 1 view .LVU57
.LBB29:
	.loc 2 79 3 view .LVU58
	.loc 2 79 10 is_stmt 0 view .LVU59
	subq	$8, %rsp
	pushq	%r13
	movq	-56(%rbp), %r9
	movl	$54, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	movl	$2, %esi
	movq	%r15, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL33:
	.loc 2 79 10 view .LVU60
.LBE29:
.LBE28:
	.loc 1 56 3 is_stmt 1 view .LVU61
	.loc 1 56 22 is_stmt 0 view .LVU62
	addq	$16, %rsp
	movslq	%r14d, %rax
	addq	nr_mem_reallocated(%rip), %rax
	movq	%rax, %r12
	jo	.L29
.L20:
	movq	%r12, nr_mem_reallocated(%rip)
	.loc 1 57 3 is_stmt 1 view .LVU63
	.loc 1 57 41 is_stmt 0 view .LVU64
	movq	avg_reallocation(%rip), %r12
	movq	nr_reallocations(%rip), %r13
.LVL34:
	.loc 1 57 41 view .LVU65
	movq	%r12, %rax
	imulq	%r13, %rax
	.loc 1 57 62 view .LVU66
	movl	%r14d, %r14d
	.loc 1 57 60 view .LVU67
	addq	%r14, %rax
	.loc 1 57 20 view .LVU68
	addq	%rax, %r12
	movq	%r12, avg_reallocation(%rip)
	.loc 1 58 3 is_stmt 1 view .LVU69
	.loc 1 58 23 is_stmt 0 view .LVU70
	addq	$1, %r13
	movq	%r13, nr_reallocations(%rip)
	.loc 1 58 20 view .LVU71
	je	.L30
.L22:
	.loc 1 58 20 discriminator 3 view .LVU72
	movq	%r12, %rax
	movl	$0, %edx
	divq	%r13
	movq	%rax, avg_reallocation(%rip)
	.loc 1 60 3 is_stmt 1 view .LVU73
	.loc 1 61 1 is_stmt 0 view .LVU74
	movq	%rbx, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
.LVL35:
	.loc 1 61 1 view .LVU75
	popq	%r12
	popq	%r13
	popq	%r14
.LVL36:
	.loc 1 61 1 view .LVU76
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LVL37:
	.loc 1 61 1 view .LVU77
	ret
.LVL38:
.L23:
	.cfi_restore_state
	.loc 1 45 7 is_stmt 1 view .LVU78
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
.LVL39:
	.loc 1 45 7 is_stmt 0 view .LVU79
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L31
	movq	stderr(%rip), %rbx
.LVL40:
	.loc 1 45 7 view .LVU80
	testq	%rbx, %rbx
	je	.L32
.L13:
.LVL41:
.LBB30:
.LBI30:
	.loc 2 77 1 is_stmt 1 view .LVU81
.LBB31:
	.loc 2 79 3 view .LVU82
	.loc 2 79 10 is_stmt 0 view .LVU83
	movl	$45, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL42:
	.loc 2 79 10 view .LVU84
.LBE31:
.LBE30:
	.loc 1 45 113 is_stmt 1 discriminator 1 view .LVU85
	call	__asan_handle_no_return@PLT
.LVL43:
	movl	$1, %edi
	call	exit@PLT
.LVL44:
.L31:
	.loc 1 45 7 is_stmt 0 view .LVU86
	call	__asan_report_load8@PLT
.LVL45:
.L32:
	.loc 1 45 7 view .LVU87
	leaq	.Lubsan_data15(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL46:
	jmp	.L13
.LVL47:
.L24:
	.loc 1 48 3 view .LVU88
	call	__asan_report_load8@PLT
.LVL48:
.L25:
	leaq	.Lubsan_data17(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL49:
	jmp	.L15
.LVL50:
.L26:
	.loc 1 53 29 view .LVU89
	movslq	-56(%rbp), %rdx
	cltq
.LVL51:
	.loc 1 53 29 view .LVU90
	movq	%rax, %rsi
	leaq	.Lubsan_data36(%rip), %rdi
	call	__ubsan_handle_sub_overflow@PLT
.LVL52:
	jmp	.L16
.LVL53:
.L27:
	.loc 1 54 3 view .LVU91
	call	__asan_report_load8@PLT
.LVL54:
.L28:
	leaq	.Lubsan_data19(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL55:
	jmp	.L19
.L29:
	.loc 1 56 22 view .LVU92
	movslq	%r14d, %rsi
	movq	nr_mem_reallocated(%rip), %rdx
	leaq	.Lubsan_data37(%rip), %rdi
	call	__ubsan_handle_add_overflow@PLT
.LVL56:
	jmp	.L20
.LVL57:
.L30:
	.loc 1 58 20 discriminator 1 view .LVU93
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	.Lubsan_data9(%rip), %rdi
	call	__ubsan_handle_divrem_overflow@PLT
.LVL58:
	jmp	.L22
	.cfi_endproc
.LFE55:
	.size	__chk_realloc_impl, .-__chk_realloc_impl
	.section	.rodata
	.align 32
.LC6:
	.string	"\033[1;37m%s:%u\033[0m: \033[1;36mminutiae: \033[0m%s: calloc(nmemb: %zu, size: %zu) returned %p (actual: %zu bytes)\n"
	.zero	54
	.text
	.globl	__chk_calloc_impl
	.type	__chk_calloc_impl, @function
__chk_calloc_impl:
.LASANPC56:
.LVL59:
.LFB56:
	.loc 1 65 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 65 1 is_stmt 0 view .LVU95
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, %rdi
.LVL60:
	.loc 1 65 1 view .LVU96
	movq	%rsi, -64(%rbp)
	movq	%rdx, %r15
	.loc 1 66 17 is_stmt 1 view .LVU97
	.loc 1 66 35 is_stmt 0 view .LVU98
	movq	%rdx, %rsi
.LVL61:
	.loc 1 66 35 view .LVU99
	call	calloc@PLT
.LVL62:
	.loc 1 66 35 view .LVU100
	movq	%rax, %r13
.LVL63:
	.loc 1 67 3 is_stmt 1 view .LVU101
	.loc 1 67 6 is_stmt 0 view .LVU102
	testq	%rax, %rax
	je	.L42
	.loc 1 68 8 is_stmt 1 view .LVU103
	.loc 1 70 3 view .LVU104
	.loc 1 70 21 is_stmt 0 view .LVU105
	movq	%rax, %rdi
	call	malloc_usable_size@PLT
.LVL64:
	.loc 1 70 21 view .LVU106
	movq	%rax, %r14
.LVL65:
	.loc 1 71 3 is_stmt 1 view .LVU107
	.loc 1 71 37 is_stmt 0 view .LVU108
	movq	avg_allocation(%rip), %rbx
	movq	nr_allocations(%rip), %r12
	movq	%rbx, %rdx
	imulq	%r12, %rdx
	.loc 1 71 54 view .LVU109
	addq	%rax, %rdx
	.loc 1 71 18 view .LVU110
	addq	%rdx, %rbx
	movq	%rbx, avg_allocation(%rip)
	.loc 1 72 3 is_stmt 1 view .LVU111
	.loc 1 72 21 is_stmt 0 view .LVU112
	addq	$1, %r12
	movq	%r12, nr_allocations(%rip)
	.loc 1 72 18 view .LVU113
	je	.L43
.LVL66:
.L37:
	.loc 1 72 18 discriminator 3 view .LVU114
	movq	%rbx, %rax
	movl	$0, %edx
	divq	%r12
	movq	%rax, avg_allocation(%rip)
	.loc 1 73 3 is_stmt 1 view .LVU115
	.loc 1 73 23 is_stmt 0 view .LVU116
	movslq	%r14d, %rsi
	.loc 1 73 20 view .LVU117
	movq	%rsi, %rbx
	addq	nr_mem_allocated(%rip), %rbx
	jo	.L44
.L38:
	movq	%rbx, nr_mem_allocated(%rip)
	.loc 1 74 3 is_stmt 1 view .LVU118
	.loc 1 74 193 is_stmt 0 view .LVU119
	movl	%r13d, %r12d
	.loc 1 74 3 view .LVU120
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L45
	movq	stdout(%rip), %rbx
	testq	%rbx, %rbx
	je	.L46
.L41:
.LVL67:
.LBB32:
.LBI32:
	.loc 2 77 1 is_stmt 1 view .LVU121
.LBB33:
	.loc 2 79 3 view .LVU122
	.loc 2 79 10 is_stmt 0 view .LVU123
	pushq	%r14
	pushq	%r12
	pushq	%r15
	pushq	-64(%rbp)
	movq	-56(%rbp), %r9
	movl	$74, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL68:
	.loc 2 79 10 view .LVU124
.LBE33:
.LBE32:
	.loc 1 80 3 is_stmt 1 view .LVU125
	.loc 1 81 1 is_stmt 0 view .LVU126
	movq	%r13, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
.LVL69:
	.loc 1 81 1 view .LVU127
	popq	%r14
.LVL70:
	.loc 1 81 1 view .LVU128
	popq	%r15
.LVL71:
	.loc 1 81 1 view .LVU129
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LVL72:
	.loc 1 81 1 view .LVU130
	ret
.LVL73:
.L42:
	.cfi_restore_state
	.loc 1 68 7 is_stmt 1 view .LVU131
	leaq	stderr(%rip), %rdi
	movq	%rdi, %rax
.LVL74:
	.loc 1 68 7 is_stmt 0 view .LVU132
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L47
	movq	stderr(%rip), %rbx
	testq	%rbx, %rbx
	je	.L48
.L36:
.LVL75:
.LBB34:
.LBI34:
	.loc 2 77 1 is_stmt 1 view .LVU133
.LBB35:
	.loc 2 79 3 view .LVU134
	.loc 2 79 10 is_stmt 0 view .LVU135
	movl	$68, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL76:
	.loc 2 79 10 view .LVU136
.LBE35:
.LBE34:
	.loc 1 68 113 is_stmt 1 discriminator 1 view .LVU137
	call	__asan_handle_no_return@PLT
.LVL77:
	movl	$1, %edi
	call	exit@PLT
.LVL78:
.L47:
	.loc 1 68 7 is_stmt 0 view .LVU138
	call	__asan_report_load8@PLT
.LVL79:
.L48:
	leaq	.Lubsan_data21(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL80:
	jmp	.L36
.LVL81:
.L43:
	.loc 1 72 18 discriminator 1 view .LVU139
	movq	%r12, %rdx
	movq	%rbx, %rsi
	leaq	.Lubsan_data10(%rip), %rdi
	call	__ubsan_handle_divrem_overflow@PLT
.LVL82:
	.loc 1 72 18 discriminator 1 view .LVU140
	jmp	.L37
.L44:
	.loc 1 73 20 view .LVU141
	movq	nr_mem_allocated(%rip), %rdx
	leaq	.Lubsan_data38(%rip), %rdi
	call	__ubsan_handle_add_overflow@PLT
.LVL83:
	jmp	.L38
.L45:
	.loc 1 74 3 view .LVU142
	call	__asan_report_load8@PLT
.LVL84:
.L46:
	leaq	.Lubsan_data23(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL85:
	jmp	.L41
	.cfi_endproc
.LFE56:
	.size	__chk_calloc_impl, .-__chk_calloc_impl
	.section	.rodata
	.align 32
.LC7:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0mMemory statistics: \n"
	.zero	41
	.align 32
.LC8:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0m\tMemory allocated: %lu counts, %li bytes (avg: %lu)\n"
	.zero	41
	.align 32
.LC9:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0m\tNet reallocated memory: %lu counts, %li bytes (avg: %lu)\n"
	.zero	35
	.align 32
.LC10:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0m\tMemory freed: %lu counts, %li bytes\n"
	.zero	56
	.align 32
.LC11:
	.string	"\033[1;37m%s:%u\033[0m: \033[0;34mlog: \033[0mNote: the freed size will likely not correspond with the allocated size given, due to `malloc_usable_size`\n"
	.zero	50
	.text
	.globl	dbg_mem_dump_stats
	.type	dbg_mem_dump_stats, @function
dbg_mem_dump_stats:
.LASANPC57:
.LFB57:
	.loc 1 86 1 is_stmt 1 view -0
	.cfi_startproc
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
	.loc 1 87 3 view .LVU144
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L60
	movq	stdout(%rip), %rbx
	testq	%rbx, %rbx
	je	.L61
.L51:
.LVL86:
.LBB36:
.LBI36:
	.loc 2 77 1 view .LVU145
.LBB37:
	.loc 2 79 3 view .LVU146
	.loc 2 79 10 is_stmt 0 view .LVU147
	movl	$87, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL87:
	.loc 2 79 10 view .LVU148
.LBE37:
.LBE36:
	.loc 1 88 3 is_stmt 1 view .LVU149
	movq	avg_allocation(%rip), %r14
	movq	nr_mem_allocated(%rip), %r13
	movq	nr_allocations(%rip), %r12
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.L62
	movq	stdout(%rip), %rbx
	testq	%rbx, %rbx
	je	.L63
.L53:
.LVL88:
.LBB38:
.LBI38:
	.loc 2 77 1 view .LVU150
.LBB39:
	.loc 2 79 3 view .LVU151
	.loc 2 79 10 is_stmt 0 view .LVU152
	pushq	%r14
	pushq	%r13
	movq	%r12, %r9
	movl	$88, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL89:
	.loc 2 79 10 view .LVU153
.LBE39:
.LBE38:
	.loc 1 90 3 is_stmt 1 view .LVU154
	movq	avg_reallocation(%rip), %r14
	movq	nr_mem_reallocated(%rip), %r13
	movq	nr_reallocations(%rip), %r12
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	addq	$16, %rsp
	cmpb	$0, 2147450880(%rax)
	jne	.L64
	movq	stdout(%rip), %rbx
	testq	%rbx, %rbx
	je	.L65
.L55:
.LVL90:
.LBB40:
.LBI40:
	.loc 2 77 1 view .LVU155
.LBB41:
	.loc 2 79 3 view .LVU156
	.loc 2 79 10 is_stmt 0 view .LVU157
	pushq	%r14
	pushq	%r13
	movq	%r12, %r9
	movl	$90, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL91:
	.loc 2 79 10 view .LVU158
.LBE41:
.LBE40:
	.loc 1 92 3 is_stmt 1 view .LVU159
	movq	nr_mem_freed(%rip), %r13
	movq	nr_frees(%rip), %r12
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	addq	$16, %rsp
	cmpb	$0, 2147450880(%rax)
	jne	.L66
	movq	stdout(%rip), %rbx
	testq	%rbx, %rbx
	je	.L67
.L57:
.LVL92:
.LBB42:
.LBI42:
	.loc 2 77 1 view .LVU160
.LBB43:
	.loc 2 79 3 view .LVU161
	.loc 2 79 10 is_stmt 0 view .LVU162
	subq	$8, %rsp
	pushq	%r13
	movq	%r12, %r9
	movl	$92, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL93:
	.loc 2 79 10 view .LVU163
.LBE43:
.LBE42:
	.loc 1 94 3 is_stmt 1 view .LVU164
	leaq	stdout(%rip), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	addq	$16, %rsp
	cmpb	$0, 2147450880(%rax)
	jne	.L68
	movq	stdout(%rip), %rbx
	testq	%rbx, %rbx
	je	.L69
.L59:
.LVL94:
.LBB44:
.LBI44:
	.loc 2 77 1 view .LVU165
.LBB45:
	.loc 2 79 3 view .LVU166
	.loc 2 79 10 is_stmt 0 view .LVU167
	movl	$94, %r8d
	leaq	.LC0(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__fprintf_chk@PLT
.LVL95:
	.loc 2 79 10 view .LVU168
.LBE45:
.LBE44:
	.loc 1 95 1 view .LVU169
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L60:
	.cfi_restore_state
	.loc 1 87 3 view .LVU170
	call	__asan_report_load8@PLT
.LVL96:
.L61:
	leaq	.Lubsan_data25(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL97:
	jmp	.L51
.L62:
	.loc 1 88 3 view .LVU171
	call	__asan_report_load8@PLT
.LVL98:
.L63:
	leaq	.Lubsan_data27(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL99:
	jmp	.L53
.L64:
	.loc 1 90 3 view .LVU172
	call	__asan_report_load8@PLT
.LVL100:
.L65:
	leaq	.Lubsan_data29(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL101:
	jmp	.L55
.L66:
	.loc 1 92 3 view .LVU173
	call	__asan_report_load8@PLT
.LVL102:
.L67:
	leaq	.Lubsan_data31(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL103:
	jmp	.L57
.L68:
	.loc 1 94 3 view .LVU174
	call	__asan_report_load8@PLT
.LVL104:
.L69:
	leaq	.Lubsan_data33(%rip), %rdi
	call	__ubsan_handle_nonnull_arg@PLT
.LVL105:
	jmp	.L59
	.cfi_endproc
.LFE57:
	.size	dbg_mem_dump_stats, .-dbg_mem_dump_stats
	.section	.data.rel.local,"aw"
	.align 32
	.type	.Lubsan_data38, @object
	.size	.Lubsan_data38, 24
.Lubsan_data38:
	.quad	.LC0
	.long	73
	.long	20
	.quad	.Lubsan_type1
	.zero	40
	.align 32
	.type	.Lubsan_data37, @object
	.size	.Lubsan_data37, 24
.Lubsan_data37:
	.quad	.LC0
	.long	56
	.long	22
	.quad	.Lubsan_type1
	.zero	40
	.align 32
	.type	.Lubsan_data36, @object
	.size	.Lubsan_data36, 24
.Lubsan_data36:
	.quad	.LC0
	.long	53
	.long	29
	.quad	.Lubsan_type2
	.zero	40
	.data
	.align 32
	.type	.Lubsan_type2, @object
	.size	.Lubsan_type2, 10
.Lubsan_type2:
	.value	0
	.value	11
	.string	"'int'"
	.zero	54
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data35, @object
	.size	.Lubsan_data35, 24
.Lubsan_data35:
	.quad	.LC0
	.long	23
	.long	16
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
	.section	.data.rel.local
	.align 32
	.type	.Lubsan_data33, @object
	.size	.Lubsan_data33, 40
.Lubsan_data33:
	.quad	.LC0
	.long	94
	.long	3
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
	.quad	.LC0
	.long	92
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
	.quad	.LC0
	.long	90
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
	.long	88
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
	.quad	.LC0
	.long	87
	.long	3
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
	.quad	.LC0
	.long	74
	.long	3
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
	.quad	.LC0
	.long	68
	.long	7
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
	.long	54
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
	.quad	.LC0
	.long	48
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
	.long	45
	.long	7
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
	.long	21
	.long	3
	.quad	0
	.long	0
	.long	0
	.long	1
	.zero	4
	.zero	56
	.align 32
	.type	.Lubsan_data10, @object
	.size	.Lubsan_data10, 24
.Lubsan_data10:
	.quad	.LC0
	.long	72
	.long	18
	.quad	.Lubsan_type0
	.zero	40
	.align 32
	.type	.Lubsan_data9, @object
	.size	.Lubsan_data9, 24
.Lubsan_data9:
	.quad	.LC0
	.long	58
	.long	20
	.quad	.Lubsan_type0
	.zero	40
	.globl	avg_reallocation
	.bss
	.align 32
	.type	avg_reallocation, @object
	.size	avg_reallocation, 8
avg_reallocation:
	.zero	64
	.globl	avg_allocation
	.align 32
	.type	avg_allocation, @object
	.size	avg_allocation, 8
avg_allocation:
	.zero	64
	.globl	nr_frees
	.align 32
	.type	nr_frees, @object
	.size	nr_frees, 8
nr_frees:
	.zero	64
	.globl	nr_reallocations
	.align 32
	.type	nr_reallocations, @object
	.size	nr_reallocations, 8
nr_reallocations:
	.zero	64
	.globl	nr_allocations
	.align 32
	.type	nr_allocations, @object
	.size	nr_allocations, 8
nr_allocations:
	.zero	64
	.globl	nr_mem_reallocated
	.align 32
	.type	nr_mem_reallocated, @object
	.size	nr_mem_reallocated, 8
nr_mem_reallocated:
	.zero	64
	.globl	nr_mem_freed
	.align 32
	.type	nr_mem_freed, @object
	.size	nr_mem_freed, 8
nr_mem_freed:
	.zero	64
	.globl	nr_mem_allocated
	.align 32
	.type	nr_mem_allocated, @object
	.size	nr_mem_allocated, 8
nr_mem_allocated:
	.zero	64
	.data
	.align 32
	.type	.Lubsan_type0, @object
	.size	.Lubsan_type0, 24
.Lubsan_type0:
	.value	0
	.value	12
	.string	"'long unsigned int'"
	.zero	40
	.globl	__odr_asan.avg_reallocation
	.bss
	.type	__odr_asan.avg_reallocation, @object
	.size	__odr_asan.avg_reallocation, 1
__odr_asan.avg_reallocation:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC0
	.long	13
	.long	10
	.globl	__odr_asan.avg_allocation
	.bss
	.type	__odr_asan.avg_allocation, @object
	.size	__odr_asan.avg_allocation, 1
__odr_asan.avg_allocation:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC0
	.long	12
	.long	10
	.globl	__odr_asan.nr_frees
	.bss
	.type	__odr_asan.nr_frees, @object
	.size	__odr_asan.nr_frees, 1
__odr_asan.nr_frees:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC0
	.long	11
	.long	10
	.globl	__odr_asan.nr_reallocations
	.bss
	.type	__odr_asan.nr_reallocations, @object
	.size	__odr_asan.nr_reallocations, 1
__odr_asan.nr_reallocations:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC0
	.long	10
	.long	10
	.globl	__odr_asan.nr_allocations
	.bss
	.type	__odr_asan.nr_allocations, @object
	.size	__odr_asan.nr_allocations, 1
__odr_asan.nr_allocations:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC5, @object
	.size	.LASANLOC5, 16
.LASANLOC5:
	.quad	.LC0
	.long	9
	.long	10
	.globl	__odr_asan.nr_mem_reallocated
	.bss
	.type	__odr_asan.nr_mem_reallocated, @object
	.size	__odr_asan.nr_mem_reallocated, 1
__odr_asan.nr_mem_reallocated:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC6, @object
	.size	.LASANLOC6, 16
.LASANLOC6:
	.quad	.LC0
	.long	8
	.long	9
	.globl	__odr_asan.nr_mem_freed
	.bss
	.type	__odr_asan.nr_mem_freed, @object
	.size	__odr_asan.nr_mem_freed, 1
__odr_asan.nr_mem_freed:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC7, @object
	.size	.LASANLOC7, 16
.LASANLOC7:
	.quad	.LC0
	.long	7
	.long	9
	.globl	__odr_asan.nr_mem_allocated
	.bss
	.type	__odr_asan.nr_mem_allocated, @object
	.size	__odr_asan.nr_mem_allocated, 1
__odr_asan.nr_mem_allocated:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC8, @object
	.size	.LASANLOC8, 16
.LASANLOC8:
	.quad	.LC0
	.long	6
	.long	9
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC12:
	.string	"*.Lubsan_data38"
.LC13:
	.string	"*.Lubsan_data37"
.LC14:
	.string	"*.Lubsan_data36"
.LC15:
	.string	"*.Lubsan_type2"
.LC16:
	.string	"*.Lubsan_data35"
.LC17:
	.string	"*.Lubsan_type1"
.LC18:
	.string	"*.Lubsan_data33"
.LC19:
	.string	"*.Lubsan_data31"
.LC20:
	.string	"*.Lubsan_data29"
.LC21:
	.string	"*.Lubsan_data27"
.LC22:
	.string	"*.Lubsan_data25"
.LC23:
	.string	"*.Lubsan_data23"
.LC24:
	.string	"*.Lubsan_data21"
.LC25:
	.string	"*.Lubsan_data19"
.LC26:
	.string	"*.Lubsan_data17"
.LC27:
	.string	"*.Lubsan_data15"
.LC28:
	.string	"*.Lubsan_data13"
.LC29:
	.string	"*.Lubsan_data10"
.LC30:
	.string	"*.Lubsan_data9"
.LC31:
	.string	"avg_reallocation"
.LC32:
	.string	"avg_allocation"
.LC33:
	.string	"nr_frees"
.LC34:
	.string	"nr_reallocations"
.LC35:
	.string	"nr_allocations"
.LC36:
	.string	"nr_mem_reallocated"
.LC37:
	.string	"nr_mem_freed"
.LC38:
	.string	"nr_mem_allocated"
.LC39:
	.string	"*.Lubsan_type0"
.LC40:
	.string	"*.LC9"
.LC41:
	.string	"*.LC8"
.LC42:
	.string	"*.LC1"
.LC43:
	.string	"*.LC4"
.LC44:
	.string	"*.LC11"
.LC45:
	.string	"*.LC6"
.LC46:
	.string	"*.LC2"
.LC47:
	.string	"*.LC5"
.LC48:
	.string	"*.LC10"
.LC49:
	.string	"*.LC7"
.LC50:
	.string	"*.LC0"
.LC51:
	.string	"*.LC3"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 2560
.LASAN0:
	.quad	.Lubsan_data38
	.quad	24
	.quad	64
	.quad	.LC12
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data37
	.quad	24
	.quad	64
	.quad	.LC13
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data36
	.quad	24
	.quad	64
	.quad	.LC14
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type2
	.quad	10
	.quad	64
	.quad	.LC15
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data35
	.quad	24
	.quad	64
	.quad	.LC16
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_type1
	.quad	15
	.quad	64
	.quad	.LC17
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data33
	.quad	40
	.quad	96
	.quad	.LC18
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data31
	.quad	40
	.quad	96
	.quad	.LC19
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data29
	.quad	40
	.quad	96
	.quad	.LC20
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data27
	.quad	40
	.quad	96
	.quad	.LC21
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data25
	.quad	40
	.quad	96
	.quad	.LC22
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data23
	.quad	40
	.quad	96
	.quad	.LC23
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data21
	.quad	40
	.quad	96
	.quad	.LC24
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data19
	.quad	40
	.quad	96
	.quad	.LC25
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data17
	.quad	40
	.quad	96
	.quad	.LC26
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data15
	.quad	40
	.quad	96
	.quad	.LC27
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data13
	.quad	40
	.quad	96
	.quad	.LC28
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data10
	.quad	24
	.quad	64
	.quad	.LC29
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lubsan_data9
	.quad	24
	.quad	64
	.quad	.LC30
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	avg_reallocation
	.quad	8
	.quad	64
	.quad	.LC31
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC1
	.quad	__odr_asan.avg_reallocation
	.quad	avg_allocation
	.quad	8
	.quad	64
	.quad	.LC32
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC2
	.quad	__odr_asan.avg_allocation
	.quad	nr_frees
	.quad	8
	.quad	64
	.quad	.LC33
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC3
	.quad	__odr_asan.nr_frees
	.quad	nr_reallocations
	.quad	8
	.quad	64
	.quad	.LC34
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC4
	.quad	__odr_asan.nr_reallocations
	.quad	nr_allocations
	.quad	8
	.quad	64
	.quad	.LC35
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC5
	.quad	__odr_asan.nr_allocations
	.quad	nr_mem_reallocated
	.quad	8
	.quad	64
	.quad	.LC36
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC6
	.quad	__odr_asan.nr_mem_reallocated
	.quad	nr_mem_freed
	.quad	8
	.quad	64
	.quad	.LC37
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC7
	.quad	__odr_asan.nr_mem_freed
	.quad	nr_mem_allocated
	.quad	8
	.quad	64
	.quad	.LC38
	.quad	.LC0
	.quad	0
	.quad	.LASANLOC8
	.quad	__odr_asan.nr_mem_allocated
	.quad	.Lubsan_type0
	.quad	24
	.quad	64
	.quad	.LC39
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	93
	.quad	128
	.quad	.LC40
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	87
	.quad	128
	.quad	.LC41
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	76
	.quad	128
	.quad	.LC42
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	84
	.quad	128
	.quad	.LC43
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	142
	.quad	192
	.quad	.LC44
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	106
	.quad	160
	.quad	.LC45
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	10
	.quad	64
	.quad	.LC46
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	88
	.quad	128
	.quad	.LC47
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	72
	.quad	128
	.quad	.LC48
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	55
	.quad	96
	.quad	.LC49
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	14
	.quad	64
	.quad	.LC50
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	65
	.quad	128
	.quad	.LC51
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB58:
	.cfi_startproc
	.loc 1 95 1 is_stmt 1 view .LVU175
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$40, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB59:
	.cfi_startproc
	.loc 1 95 1 view .LVU176
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$40, %esi
	leaq	.LASAN0(%rip), %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/stdint-intn.h"
	.file 5 "/usr/include/bits/stdint-uintn.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h"
	.file 8 "/usr/include/bits/types/struct_FILE.h"
	.file 9 "/usr/include/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/malloc.h"
	.file 12 "/usr/include/stdlib.h"
	.file 13 "/usr/include/bits/stdio2-decl.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf6e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.long	.LASF9
	.byte	0x3
	.byte	0x2c
	.byte	0x19
	.long	0x6b
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xa
	.long	.LASF10
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x43
	.uleb128 0xa
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x6b
	.uleb128 0xa
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x6b
	.uleb128 0x1e
	.byte	0x8
	.uleb128 0xb
	.long	0x9d
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x1f
	.long	0x9d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x1b
	.byte	0x13
	.long	0x5f
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x1b
	.byte	0x14
	.long	0x72
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x4f
	.byte	0x1b
	.long	0x43
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0xd6
	.byte	0x1b
	.long	0x43
	.uleb128 0x20
	.long	.LASF95
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x243
	.uleb128 0x2
	.long	.LASF18
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0x2
	.long	.LASF20
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0x2
	.long	.LASF21
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0x2
	.long	.LASF22
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0x2
	.long	.LASF23
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0x2
	.long	.LASF24
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0x2
	.long	.LASF25
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0x2
	.long	.LASF26
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0x2
	.long	.LASF27
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0x2
	.long	.LASF28
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0x2
	.long	.LASF29
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0x2
	.long	.LASF30
	.byte	0x44
	.byte	0x16
	.long	0x25c
	.byte	0x60
	.uleb128 0x2
	.long	.LASF31
	.byte	0x46
	.byte	0x14
	.long	0x261
	.byte	0x68
	.uleb128 0x2
	.long	.LASF32
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x2
	.long	.LASF33
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x2
	.long	.LASF34
	.byte	0x4a
	.byte	0xb
	.long	0x7e
	.byte	0x78
	.uleb128 0x2
	.long	.LASF35
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x2
	.long	.LASF36
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x2
	.long	.LASF37
	.byte	0x4f
	.byte	0x8
	.long	0x266
	.byte	0x83
	.uleb128 0x2
	.long	.LASF38
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0x2
	.long	.LASF39
	.byte	0x59
	.byte	0xd
	.long	0x8a
	.byte	0x90
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5b
	.byte	0x17
	.long	0x280
	.byte	0x98
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5c
	.byte	0x19
	.long	0x28a
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x5d
	.byte	0x14
	.long	0x261
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5e
	.byte	0x9
	.long	0x96
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x5f
	.byte	0xa
	.long	0xcd
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF45
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x62
	.byte	0x8
	.long	0x28f
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0xd9
	.uleb128 0x21
	.long	.LASF96
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF48
	.uleb128 0xb
	.long	0x257
	.uleb128 0xb
	.long	0xd9
	.uleb128 0x14
	.long	0x9d
	.long	0x276
	.uleb128 0x15
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x24f
	.uleb128 0x11
	.long	.LASF49
	.uleb128 0xb
	.long	0x27b
	.uleb128 0x11
	.long	.LASF50
	.uleb128 0xb
	.long	0x285
	.uleb128 0x14
	.long	0x9d
	.long	0x29f
	.uleb128 0x15
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	0xa4
	.uleb128 0x16
	.long	0x29f
	.uleb128 0xb
	.long	0x243
	.uleb128 0x16
	.long	0x2a9
	.uleb128 0x17
	.long	.LASF51
	.byte	0x96
	.long	0x2a9
	.uleb128 0x17
	.long	.LASF52
	.byte	0x97
	.long	0x2a9
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0xc
	.long	.LASF56
	.byte	0x6
	.byte	0x9
	.long	0xa9
	.uleb128 0x9
	.byte	0x3
	.quad	nr_mem_allocated
	.uleb128 0xc
	.long	.LASF57
	.byte	0x7
	.byte	0x9
	.long	0xa9
	.uleb128 0x9
	.byte	0x3
	.quad	nr_mem_freed
	.uleb128 0xc
	.long	.LASF58
	.byte	0x8
	.byte	0x9
	.long	0xa9
	.uleb128 0x9
	.byte	0x3
	.quad	nr_mem_reallocated
	.uleb128 0xc
	.long	.LASF59
	.byte	0x9
	.byte	0xa
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	nr_allocations
	.uleb128 0xc
	.long	.LASF60
	.byte	0xa
	.byte	0xa
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	nr_reallocations
	.uleb128 0xc
	.long	.LASF61
	.byte	0xb
	.byte	0xa
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	nr_frees
	.uleb128 0xc
	.long	.LASF62
	.byte	0xc
	.byte	0xa
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	avg_allocation
	.uleb128 0xc
	.long	.LASF63
	.byte	0xd
	.byte	0xa
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	avg_reallocation
	.uleb128 0x10
	.long	.LASF64
	.byte	0xb
	.byte	0x2b
	.byte	0xe
	.long	0x96
	.long	0x39f
	.uleb128 0x9
	.long	0xcd
	.uleb128 0x9
	.long	0xcd
	.byte	0
	.uleb128 0x22
	.long	.LASF65
	.byte	0xc
	.value	0x2f4
	.byte	0xd
	.long	0x3b2
	.uleb128 0x9
	.long	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF66
	.byte	0xb
	.byte	0x33
	.byte	0xe
	.long	0x96
	.long	0x3cd
	.uleb128 0x9
	.long	0x96
	.uleb128 0x9
	.long	0xcd
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0xd
	.byte	0x31
	.byte	0xc
	.long	0x58
	.long	0x3ee
	.uleb128 0x9
	.long	0x2ae
	.uleb128 0x9
	.long	0x58
	.uleb128 0x9
	.long	0x2a4
	.uleb128 0x18
	.byte	0
	.uleb128 0x23
	.long	.LASF97
	.byte	0xb
	.byte	0x40
	.byte	0xd
	.long	0x400
	.uleb128 0x9
	.long	0x96
	.byte	0
	.uleb128 0x10
	.long	.LASF68
	.byte	0xb
	.byte	0x98
	.byte	0xf
	.long	0xcd
	.long	0x416
	.uleb128 0x9
	.long	0x96
	.byte	0
	.uleb128 0x12
	.long	.LASF77
	.byte	0x55
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x775
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI36
	.byte	.LVU145
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x57
	.byte	0x3
	.long	0x4aa
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x3
	.long	0xf23
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x5
	.quad	.LVL87
	.long	0x3cd
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
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI38
	.byte	.LVU150
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x58
	.byte	0x3
	.long	0x528
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x3
	.long	0xf23
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x5
	.quad	.LVL89
	.long	0x3cd
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
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI40
	.byte	.LVU155
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x5a
	.byte	0x3
	.long	0x5a6
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x3
	.long	0xf23
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x5
	.quad	.LVL91
	.long	0x3cd
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
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x5a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI42
	.byte	.LVU160
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x5c
	.byte	0x3
	.long	0x624
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x3
	.long	0xf23
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x5
	.quad	.LVL93
	.long	0x3cd
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
	.quad	.LC10
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
	.byte	0x5c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI44
	.byte	.LVU165
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x5e
	.byte	0x3
	.long	0x69c
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x3
	.long	0xf23
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x5
	.quad	.LVL95
	.long	0x3cd
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
	.quad	.LC11
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
	.byte	0x5e
	.byte	0
	.byte	0
	.uleb128 0x6
	.quad	.LVL96
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL97
	.long	0xf44
	.long	0x6c8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data25
	.byte	0
	.uleb128 0x6
	.quad	.LVL98
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL99
	.long	0xf44
	.long	0x6f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data27
	.byte	0
	.uleb128 0x6
	.quad	.LVL100
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL101
	.long	0xf44
	.long	0x720
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data29
	.byte	0
	.uleb128 0x6
	.quad	.LVL102
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL103
	.long	0xf44
	.long	0x74c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data31
	.byte	0
	.uleb128 0x6
	.quad	.LVL104
	.long	0xf3b
	.uleb128 0x5
	.quad	.LVL105
	.long	0xf44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data33
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF72
	.byte	0x40
	.long	0x96
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e5
	.uleb128 0xd
	.string	"fn"
	.byte	0x40
	.byte	0x20
	.long	0x29f
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x13
	.long	.LASF69
	.byte	0x40
	.byte	0x2b
	.long	0xcd
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x13
	.long	.LASF70
	.byte	0x40
	.byte	0x39
	.long	0xcd
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x1a
	.string	"ret"
	.byte	0x42
	.long	0x96
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0xf
	.long	.LASF71
	.byte	0x46
	.byte	0xa
	.long	0xcd
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI32
	.byte	.LVU121
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0x4a
	.byte	0x3
	.long	0x872
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x3
	.long	0xf23
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x5
	.quad	.LVL68
	.long	0x3cd
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
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI34
	.byte	.LVU133
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0x44
	.byte	0x7
	.long	0x8ea
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x3
	.long	0xf23
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x5
	.quad	.LVL76
	.long	0x3cd
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
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LVL62
	.long	0x384
	.long	0x90a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.quad	.LVL64
	.long	0x400
	.long	0x922
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL77
	.long	0xf4d
	.uleb128 0x4
	.quad	.LVL78
	.long	0x39f
	.long	0x946
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.quad	.LVL79
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL80
	.long	0xf44
	.long	0x972
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data21
	.byte	0
	.uleb128 0x4
	.quad	.LVL82
	.long	0xf56
	.long	0x99d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data10
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.quad	.LVL83
	.long	0xf5f
	.long	0x9bc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data38
	.byte	0
	.uleb128 0x6
	.quad	.LVL84
	.long	0xf3b
	.uleb128 0x5
	.quad	.LVL85
	.long	0xf44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data23
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF73
	.byte	0x26
	.long	0x96
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xd77
	.uleb128 0xd
	.string	"fn"
	.byte	0x26
	.byte	0x21
	.long	0x29f
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xd
	.string	"ptr"
	.byte	0x26
	.byte	0x2b
	.long	0x96
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x13
	.long	.LASF70
	.byte	0x26
	.byte	0x37
	.long	0xcd
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xf
	.long	.LASF74
	.byte	0x29
	.byte	0x1d
	.long	0xcd
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1a
	.string	"ret"
	.byte	0x2b
	.long	0x96
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xf
	.long	.LASF75
	.byte	0x34
	.byte	0x1d
	.long	0xcd
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xf
	.long	.LASF76
	.byte	0x35
	.byte	0x1d
	.long	0x58
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI26
	.byte	.LVU48
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x30
	.byte	0x3
	.long	0xb08
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x3
	.long	0xf23
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x5
	.quad	.LVL28
	.long	0x3cd
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
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI28
	.byte	.LVU57
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x36
	.byte	0x3
	.long	0xb88
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x3
	.long	0xf23
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x5
	.quad	.LVL33
	.long	0x3cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
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
	.byte	0x36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI30
	.byte	.LVU81
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x2d
	.byte	0x7
	.long	0xc00
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x3
	.long	0xf23
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x5
	.quad	.LVL42
	.long	0x3cd
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
	.byte	0x2d
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LVL21
	.long	0x400
	.long	0xc18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.quad	.LVL23
	.long	0x3b2
	.long	0xc36
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
	.uleb128 0x4
	.quad	.LVL29
	.long	0x400
	.long	0xc4e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL43
	.long	0xf4d
	.uleb128 0x4
	.quad	.LVL44
	.long	0x39f
	.long	0xc72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.quad	.LVL45
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL46
	.long	0xf44
	.long	0xc9e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data15
	.byte	0
	.uleb128 0x6
	.quad	.LVL48
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL49
	.long	0xf44
	.long	0xcca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data17
	.byte	0
	.uleb128 0x4
	.quad	.LVL52
	.long	0xf68
	.long	0xcf8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.byte	0x91
	.sleb128 -72
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0x6
	.quad	.LVL54
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL55
	.long	0xf44
	.long	0xd24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data19
	.byte	0
	.uleb128 0x4
	.quad	.LVL56
	.long	0xf5f
	.long	0xd4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data37
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
	.byte	0
	.uleb128 0x5
	.quad	.LVL58
	.long	0xf56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data9
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
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x20
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc9
	.uleb128 0xd
	.string	"ptr"
	.byte	0x20
	.byte	0x1d
	.long	0x96
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x5
	.quad	.LVL18
	.long	0xdc9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF79
	.byte	0x11
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xf12
	.uleb128 0xd
	.string	"fn"
	.byte	0x11
	.byte	0x1e
	.long	0x29f
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xd
	.string	"ptr"
	.byte	0x11
	.byte	0x28
	.long	0x96
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xf
	.long	.LASF71
	.byte	0x14
	.byte	0x1d
	.long	0xcd
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x8
	.long	0xf12
	.quad	.LBI24
	.byte	.LVU10
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x15
	.byte	0x3
	.long	0xe9a
	.uleb128 0x3
	.long	0xf2e
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x3
	.long	0xf23
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x5
	.quad	.LVL6
	.long	0x3cd
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
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LVL2
	.long	0x400
	.long	0xeb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.quad	.LVL8
	.long	0x3ee
	.long	0xeca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL12
	.long	0xf3b
	.uleb128 0x4
	.quad	.LVL13
	.long	0xf44
	.long	0xef6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data13
	.byte	0
	.uleb128 0x5
	.quad	.LVL15
	.long	0xf5f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data35
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF98
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.long	0x58
	.byte	0x3
	.long	0xf3b
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x4d
	.byte	0x1b
	.long	0x2ae
	.uleb128 0x1b
	.long	.LASF81
	.byte	0x4d
	.byte	0x3c
	.long	0x2a4
	.uleb128 0x18
	.byte	0
	.uleb128 0xe
	.long	.LASF82
	.long	.LASF84
	.uleb128 0xe
	.long	.LASF83
	.long	.LASF85
	.uleb128 0xe
	.long	.LASF86
	.long	.LASF87
	.uleb128 0xe
	.long	.LASF88
	.long	.LASF89
	.uleb128 0xe
	.long	.LASF90
	.long	.LASF91
	.uleb128 0xe
	.long	.LASF92
	.long	.LASF93
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
	.sleb128 8
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1a
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
	.sleb128 29
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x23
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
.LVUS28:
	.uleb128 .LVU145
	.uleb128 .LVU148
.LLST28:
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU145
	.uleb128 .LVU148
.LLST29:
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS30:
	.uleb128 .LVU150
	.uleb128 .LVU153
.LLST30:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU150
	.uleb128 .LVU153
.LLST31:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS32:
	.uleb128 .LVU155
	.uleb128 .LVU158
.LLST32:
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU155
	.uleb128 .LVU158
.LLST33:
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS34:
	.uleb128 .LVU160
	.uleb128 .LVU163
.LLST34:
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU160
	.uleb128 .LVU163
.LLST35:
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS36:
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST36:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.byte	0
.LVUS37:
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST37:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS22:
	.uleb128 .LVU101
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS23:
	.uleb128 .LVU107
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU128
	.uleb128 .LVU139
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 .LFE56-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS24:
	.uleb128 .LVU121
	.uleb128 .LVU124
.LLST24:
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU121
	.uleb128 .LVU124
.LLST25:
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS26:
	.uleb128 .LVU133
	.uleb128 .LVU136
.LLST26:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU133
	.uleb128 .LVU136
.LLST27:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU37
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL23-1-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS10:
	.uleb128 .LVU40
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU80
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU88
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS11:
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU65
	.uleb128 .LVU89
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU93
.LLST11:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS12:
	.uleb128 .LVU56
	.uleb128 .LVU76
	.uleb128 .LVU91
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS13:
	.uleb128 .LVU48
	.uleb128 .LVU51
.LLST13:
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU48
	.uleb128 .LVU51
.LLST14:
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS15:
	.uleb128 .LVU57
	.uleb128 .LVU60
.LLST15:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU57
	.uleb128 .LVU60
.LLST16:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS17:
	.uleb128 .LVU81
	.uleb128 .LVU84
.LLST17:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU81
	.uleb128 .LVU84
.LLST18:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL18-1-.Ltext0
	.uleb128 .LFE54-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS2:
	.uleb128 .LVU6
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU17
	.uleb128 .LVU24
	.uleb128 .LVU25
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS3:
	.uleb128 .LVU10
	.uleb128 .LVU13
.LLST3:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU10
	.uleb128 .LVU13
.LLST4:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
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
.LASF11:
	.string	"__off_t"
.LASF19:
	.string	"_IO_read_ptr"
.LASF31:
	.string	"_chain"
.LASF37:
	.string	"_shortbuf"
.LASF17:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF15:
	.string	"uint64_t"
.LASF25:
	.string	"_IO_buf_base"
.LASF57:
	.string	"nr_mem_freed"
.LASF54:
	.string	"long long unsigned int"
.LASF91:
	.string	"__builtin___ubsan_handle_add_overflow"
.LASF9:
	.string	"__int64_t"
.LASF68:
	.string	"malloc_usable_size"
.LASF97:
	.string	"free"
.LASF40:
	.string	"_codecvt"
.LASF92:
	.string	"__ubsan_handle_sub_overflow"
.LASF60:
	.string	"nr_reallocations"
.LASF53:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF70:
	.string	"size"
.LASF88:
	.string	"__ubsan_handle_divrem_overflow"
.LASF87:
	.string	"__builtin___asan_handle_no_return"
.LASF32:
	.string	"_fileno"
.LASF20:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF18:
	.string	"_flags"
.LASF26:
	.string	"_IO_buf_end"
.LASF35:
	.string	"_cur_column"
.LASF49:
	.string	"_IO_codecvt"
.LASF79:
	.string	"__chk_free_impl"
.LASF93:
	.string	"__builtin___ubsan_handle_sub_overflow"
.LASF34:
	.string	"_old_offset"
.LASF39:
	.string	"_offset"
.LASF59:
	.string	"nr_allocations"
.LASF73:
	.string	"__chk_realloc_impl"
.LASF48:
	.string	"_IO_marker"
.LASF63:
	.string	"avg_reallocation"
.LASF4:
	.string	"unsigned int"
.LASF43:
	.string	"_freeres_buf"
.LASF98:
	.string	"fprintf"
.LASF90:
	.string	"__ubsan_handle_add_overflow"
.LASF80:
	.string	"__stream"
.LASF5:
	.string	"long unsigned int"
.LASF86:
	.string	"__asan_handle_no_return"
.LASF23:
	.string	"_IO_write_ptr"
.LASF58:
	.string	"nr_mem_reallocated"
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
.LASF51:
	.string	"stdout"
.LASF56:
	.string	"nr_mem_allocated"
.LASF55:
	.string	"long double"
.LASF24:
	.string	"_IO_write_end"
.LASF96:
	.string	"_IO_lock_t"
.LASF95:
	.string	"_IO_FILE"
.LASF84:
	.string	"__builtin___asan_report_load8"
.LASF10:
	.string	"__uint64_t"
.LASF30:
	.string	"_markers"
.LASF72:
	.string	"__chk_calloc_impl"
.LASF2:
	.string	"unsigned char"
.LASF74:
	.string	"prev_blk_size"
.LASF7:
	.string	"short int"
.LASF94:
	.ascii	"GNU C17 13.3.1 202"
	.string	"40614 -mtune=generic -march=x86-64 -ggdb -Os -Og -std=gnu17 -p -fanalyzer -fsanitize=address,undefined,leak -fstack-protector-strong -fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero -fno-omit-frame-pointer -fno-common -fcf-protection"
.LASF78:
	.string	"__chk_free_impl_nofn"
.LASF50:
	.string	"_IO_wide_data"
.LASF61:
	.string	"nr_frees"
.LASF36:
	.string	"_vtable_offset"
.LASF47:
	.string	"FILE"
.LASF62:
	.string	"avg_allocation"
.LASF67:
	.string	"__fprintf_chk"
.LASF75:
	.string	"new_blk_size"
.LASF13:
	.string	"char"
.LASF83:
	.string	"__ubsan_handle_nonnull_arg"
.LASF85:
	.string	"__builtin___ubsan_handle_nonnull_arg"
.LASF71:
	.string	"blk_size"
.LASF89:
	.string	"__builtin___ubsan_handle_divrem_overflow"
.LASF12:
	.string	"__off64_t"
.LASF21:
	.string	"_IO_read_base"
.LASF29:
	.string	"_IO_save_end"
.LASF81:
	.string	"__fmt"
.LASF44:
	.string	"__pad5"
.LASF46:
	.string	"_unused2"
.LASF52:
	.string	"stderr"
.LASF69:
	.string	"nmemb"
.LASF65:
	.string	"exit"
.LASF64:
	.string	"calloc"
.LASF28:
	.string	"_IO_backup_base"
.LASF77:
	.string	"dbg_mem_dump_stats"
.LASF42:
	.string	"_freeres_list"
.LASF66:
	.string	"realloc"
.LASF41:
	.string	"_wide_data"
.LASF14:
	.string	"int64_t"
.LASF76:
	.string	"blk_size_diff"
.LASF22:
	.string	"_IO_write_base"
.LASF82:
	.string	"__asan_report_load8"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/unazed/Programming/c/ucc-0.2.0"
.LASF0:
	.string	"src/generic.c"
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
