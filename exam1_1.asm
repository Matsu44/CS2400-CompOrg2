.data
	message:	.asciiz "Please enter a random number: "
	right:		.asciiz "Correct!"
	wrong:		.asciiz "Wrong!"
.text
	li $t0, 8
	li $t1, 0
loopcheck:
	la $a0, message
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	move $s1, $v0
	
	addi $t1, $t1, 1
	beq $t0, $s1, printright
	beq $t1, 2, printGameOver
	j loopcheck
	
printGameOver:
	la $a0, wrong
	li $v0, 4
	syscall
	j done
printright:
	la $a0, right
	li $v0, 4
	syscall
done:
	li $v0, 10
	syscall