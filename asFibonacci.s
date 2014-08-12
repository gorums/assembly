.data
	fibo:
		.asciz "The fibonacci number to %d is %d\n"
	error:
		.asciz "Usage: fibonacci [value]\n"
.bss
	.lcomm result, 4
.text
	.globl _start
	_start:
		nop
		movl %esp, %ebp
		movl (%ebp), %eax
		cmpl $2, %eax # bad parameters
		jne bad_param
		pushl 8(%ebp) # get the parameter
		call atoi # convert str to int 
		movl %eax, %edx
		pushl %eax
		call fibonacci
		pushl result
		pushl %edx
		pushl $fibo
		call printf
 
		jmp quit
 
		bad_param:
		pushl $error # print parameters error
		call printf
		addl $4, %esp
 
		quit:
		movl %ebp, %esp
		movl $0, %eax # exit the app
		call exit

		fibonacci:
		pushl %ebp
		movl %esp, %ebp
		movl 8(%ebp), %eax

		cmpl $1, %eax
		je return_one

		cmpl $2, %eax
		je return_one

		dec %eax
		pushl %eax
		call fibonacci
		pushl result
 		
		movl 8(%ebp), %eax
		subl $2, %eax
		pushl %eax
		call fibonacci
		addl $4, %esp

		popl %ebx
		addl %ebx, result
		jmp return

		return_one:
		movl $1, result

		return:
		movl %ebp, %esp
		popl %ebp
		ret
