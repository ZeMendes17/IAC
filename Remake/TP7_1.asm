.data
	prompt1: .asciiz	"Introduza um numero\n"
	strpar: .asciiz		"O numero é par\n"
	strimpar:.asciiz	"o numero é impar\n"
	
.text
.globl main

main:
	la	$a0, prompt1
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	
	move	$t0, $v0
	
	andi	$t0, $t0, 1
	
if:	bne	$t0, 0, else
	
	la	$a0, strpar
	li	$v0, 4
	syscall
	
	li	$v0, 10
	syscall
	
else:
	la	$a0, strimpar
	li	$v0, 4
	syscall
	
	li	$v0, 10
	syscall
	


