.data
prompt: .asciiz "Introdução uma string\n"
result: .asciiz "O numero de caracteres numericos: "
str:	.space 40


.text
.globl main
main:
	li	$t0, 0 # i = 0
	li	$t1, 0 # n = 0
	
	la	$a0, prompt
	li	$v0, 4
	syscall
	
	li	$v0, 8
	syscall
	move	$t2, $v0
	
for:
	addu	$t3, $t2, $t0
	lb	$t4, 0($t3)
	
	beq	$t4, '\0', end
	
	if:	bgt	$t4, '0', nada
		blt	$t4, '9', nada
		
		addi	$t1, $t1, 1
		
	la	$t5, str
	addu	$t6, $t4, $t0
	sb	$t4, 0($t6)
		
	addi	$t0, $t0, 1
	j for
	
nada:
	la	$t5, str
	addu	$t6, $t4, $t0
	sb	$t4, 0($t6)
		
	addi	$t0, $t0, 1
	j for
	
end:
	move	$v0, $t1
	
	la	$a0, str
	li	$v0, 1
	syscall
	
	li	$v0, 10
	syscall
		
	
	
	