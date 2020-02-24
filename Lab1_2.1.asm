.text
	li $t1, 10
	add $t2, $t1, $t1
	sll $t3, $t1, 2
	andi $t4, $t1, 0x0000ffff
	ori $t5, $t1, 0x0000fffff
	add $t6, $t2, $t3
	add $t6, $t6, $t4
	add $t6, $t6, $t5
	move $a0, $t6
	
	li $v0, 1
	syscall
