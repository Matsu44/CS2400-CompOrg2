.data
array:	.space	1024	# max array size specified in BYTES 

.text
########################
main:	
	la	$s0, array		# addr of array
	add	$t1, $0, 0

loop:
	lw	$t0, 0($s0)		# array[index]
	lw	$t0, 32($s0)		# array[index]
	addi	$t1, $t1, 1
	bne	$t1, 10, loop
	
end:	
	li	$v0,10		# exit
	syscall