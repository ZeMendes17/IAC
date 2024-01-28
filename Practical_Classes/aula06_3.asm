	.data
frase1: .asciiz "Introduza dois numeros: "
frase2: .asciiz "A soma dos numeros é: "
frase3:	.asciiz "A soma como para o 3.3 é: "
branco: .ascii "\n"

	.text
	.globl main
main:   la	$a0, frase1
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	move	$t0, $v0
	
	li	$v0, 5
	syscall
	move	$t1, $v0
	
	la	$a0, frase2
	li	$v0, 4
	syscall
	
	add	$a0, $t0, $t1
	li	$v0, 1
	syscall
	
	la	$a0, branco
	li	$v0, 4
	syscall
	
	la	$a0, frase3
	li	$v0, 4
	syscall
	
	addu	$a0, $t0, $t1
	li	$v0, 1
	syscall
	
	li	$v0, 10
	syscall
	