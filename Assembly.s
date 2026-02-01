.macro PRINT_INT formatstr int
	leaq \formatstr(%rip), %rcx
	movq \int(%rip), %rdx
	call	__mingw_printf
.endm

.macro PRINT string
	leaq \string(%rip), %rcx
	call __mingw_printf
.endm

.macro READ formatstr userinput
	leaq \formatstr(%rip), %rcx
	leaq \userinput(%rip), %rdx
	call __mingw_scanf
.endm

.data
	guessmsg: .string "Guess the number from 0 to 100: "
	lowmsg: .string "Too low!\n"
	highmsg: .string "Too high!\n"
	correctmsg: .string "Correct!\nGuesses taken: %d"
	intformat: .string "%d"
	guess: .long 200
	count: .long 0
	ans: .long 200
	
.text
.globl main

.seh_proc	main
main:

	# stack setup (copied from gcc compiled c program)
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue

	call	__main

	# seed random
	movq $0, %rcx
	call _time64
	movl %eax, %ecx
	call srand

	call rand

	# mod ans
	movl $101, %ecx
	movl $0, %edx
	div %ecx
	movl %edx, ans(%rip)

loop_start:
	PRINT guessmsg
	READ intformat guess
	incl count(%rip)
	movl ans(%rip), %eax
	cmpl %eax, guess(%rip)
	jl less_than
	jg more_than
	je equal

less_than:
	PRINT lowmsg
	jmp loop_start

more_than:
	PRINT highmsg
	jmp loop_start

equal:
	PRINT_INT correctmsg count
	ret
	.seh_endproc
