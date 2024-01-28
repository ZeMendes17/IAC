	.data
minus:	.asciiz "abcdefghijklmnopqrstuvwxyz"
maius:	.space	27

	.text
main:	li	$t0, 0
	la	$t1, minus
while:	addu	$t2, $t1, $t0
	lb	$t3, 0($t2)
	beq	$t3, '\0', endwhile
	addi	$t3, $t3, 'A'
	subi	$t3, $t3, 'a'
	
	la	$t4, maius
	addu	$t5, $t4, $t0
	sb	$t3, 0($t5)
	
	addi	$t0, $t0, 1
	j while
	
endwhile: la	$a0, maius
	li	$v0, 4
	syscall
	
	li $v0, 10
	syscall
