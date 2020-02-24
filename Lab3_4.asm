.data
	message:	.asciiz "Value of z is : "

 .text
 main:
 	li $s0, 2 #x
 	li $s1, 1 #y
 	li $s2, 0 #z

 	jal subfunc
 	
 	move $s2, $v0
 	
 	li $v0, 4
	la $a0, message
	syscall
	move $a0, $s2
	li $v0, 1
	syscall
	li $v0, 10
	syscall

 subfunc:
	addi $sp, $sp, -20
 	sw $s4, 16($sp)
 	sw $s3, 12($sp)
 	sw $s2, 8($sp)
 	sw $s1, 4($sp)
 	sw $s0, 0($sp)
 
 	addi $s3, $0, 0
 	addi $s4, $0, 0
 	add $s3, $s0, $s1
 	sub $s4, $s0, $s1
 	sub $v0, $s3 , $s4
 	
 	lw $s0, 0($sp)
 	lw $s1, 4($sp)
 	lw $s2, 8($sp)
 	lw $s3, 12($sp)
 	lw $s4, 16($sp)
 	addi $sp, $sp, 20
 	
 	jr $ra
 	
 	
 	 
