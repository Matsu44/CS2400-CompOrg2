.data
	message:	.asciiz "The value of b is: "

.text
	li $s0, 2
	li $s1, 2
	bge $s0, $s1, Done
	addi $s0, $s0, 1
	Done: 
	add $s1, $s1, $s0
	
	li $v0, 4
	la $a0, message
	syscall
	
	move $a0, $s1
	li $v0, 1
	syscall