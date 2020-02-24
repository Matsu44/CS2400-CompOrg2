.data
	before:		.asciiz "before subroutine!\n"
	after:		.asciiz "after subroutine!\n"
	message:	.asciiz "I am subfunction!\n"
	
.text
main:
	li $v0, 4
	la $a0, before
	syscall
	
	jal subfunc
	
	li $v0, 4
	la $a0, after
	syscall
	
	li $v0, 10
	syscall
subfunc:
	li $v0, 4
	la $a0, message
	syscall
	
	jr $ra
