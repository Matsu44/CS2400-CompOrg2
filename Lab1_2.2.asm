.data
str:	.asciiz "The area of this triangle is "

.text
	li $s0, 10
	li $s1, 6
	mul $s2, $s0, $s1
	div $s2, $s2, 2
	
	la $a0,str      
	li $v0,4
	syscall
	li $v0, 1
	move $a0, $s2
	syscall
