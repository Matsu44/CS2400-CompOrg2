.text
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	
	mul $t2, $t0, $t1
	move $a0, $t2
	
	li $v0, 1
	syscall