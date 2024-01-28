.data
	prompt: .asciiz	"Introduza um numero: "
	result: .asciiz "\n O numero em hexadecimal é: "
	
.text
.globl main

main:
	la	$a0, prompt
	li	$v0, 5
	syscall
	
	li	$v0, 4
	syscall
	
	move	$t0, $v0
	
	la	$a0, result
	li	$v0, 5
	syscall
	
for:	bge	$t1, 8, done

	andi	$t2, $t0, 0xF0000000
	
	srl	$t3, $t2, 28
	
	move	$a0, $t3
	
	li	$v0, 1
	syscall
	
	sll	$t0, $t0, 4
	
	addi	$t1, $t1, 1
	
done:

	li	$v0, 10
	syscall
	
	