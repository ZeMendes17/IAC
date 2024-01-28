.data
minus: .asciiz "texto em minusculas"
maius: .space 20

.text
.globl main

main:
	li	$t0, 0 # i
	la	$t1, minus
	
while:
	addu	$t2, $t1, $t0
	lb	$t3, 0($t2)
	
	beq	$t3, ' ', is_space
	beq	$t3, '\0', end
	
	addi	$t3, $t3, 'A'
	subi	$t3, $t3, 'a'
	
	la	$t4, maius
	addu	$t5, $t4, $t0
	sb	$t3, 0($t5)
	
	addi 	$t0, $t0, 1
	j 	while
	
	
end:
	la	$a0, maius
	li	$v0, 4
	syscall
	
	li	$v0, 10
	syscall
	
	
is_space:
	la	$t4, maius
	addu	$t5, $t4, $t0
	sb	$t3, 0($t5)
	
	addi 	$t0, $t0, 1
	j 	while




	