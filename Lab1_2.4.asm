.data
list: .word 10, 20

.text
	addi $s0, $0, 0
	lw $t0, list($s0)
	addi, $s0, $s0, 4
	lw $t1, list($s0)
	sw $t0, list + 4
	sw $t1, list
	