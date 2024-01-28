.data
frase:	.space 50
prompt:	.asciiz "Introduza uma String: "
result:	.asciiz "O número de caracteres introduzidos é: "

.text
.globl main

main:
	la	$a0, prompt
	li	$v0, 4
	syscall
	
	la	$a0, frase
	li	$a1, 50
	li	$v0, 8
	syscall		# fica guardado no $v0
	
	la	$a0, frase
	jal	strlen
	move	$t0, $v0
	
	la	$a0, result
	li	$v0, 4
	syscall
	
	move	$a0, $t0
	li	$v0, 1
	syscall
	
	li	$v0, 10
	syscall 
	
	
strlen:
	li	$v0, 0
	li	$t0, 0
	
	while:
		addu	$t1, $a0, $t0
		addi	$t0, $t0, 1
		lb	$t2, 0($t1)
		beq	$t2, '\0', end
		addi	$v0, $v0, 1
		j	while
	end:
		subi	$v0, $v0, 1
		jr	$ra
		