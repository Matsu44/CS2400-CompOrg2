.data
	message:	.asciiz "Guessing the number that I am thinking:"
	correct:	.asciiz "Correct!"
	wrong:		.asciiz "Wrong. Thie answer is 10!"

.text
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $t0, 10
	beq $t0, $s0, Equal
	li $v0, 4
	la $a0, wrong
	syscall
	j Done
	
	Equal: 	li $v0, 4
		la $a0, correct
		syscall
	
	Done:
	
	