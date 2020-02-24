.data
	database:	.word 1,2,3,4,5,6,7,8,9,10
	message:	.asciiz "Please input an integer: "
	found:		.asciiz "Number found!"
	unfound:	.asciiz "No such number found in databse!"

.text
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	addi $s1, $0, 0
	li $s2, 10
	lw $t0, database($s1)
	While:	beq $s0, $t0, Equal
		beq $t0, $s2, Wrong
		addi, $s1, $s1, 4
		lw $t0, database($s1)
		j While
	Equal:	li $v0, 4
		la $a0, found
		syscall
		j Done
	Wrong:	li $v0, 4
		la $a0, unfound
		syscall
	Done:
