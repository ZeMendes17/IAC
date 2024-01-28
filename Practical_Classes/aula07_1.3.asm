.data

prompt1: 	.asciiz "Introduza um numero: "
result:		.asciiz "O fatorial do numero inserido é: "

.text
.globl main

main:		la	$a0, prompt1
		li	$v0, 4
		syscall
		
		li 	$v0, 5 
 		syscall
 		move 	$t0, $v0 # $t0 é o n
 		
 		la	$t1, 1	 # $t1 é o f
 		
 		addi	$t2, $t0, 0 # $t2 é o i
 		
 	for:	ble	$t2, 0, done
 		mul	$t1, $t1, $t2
 		subi	$t2, $t2, 1
 		j	for
 	
 	done:
 		la	$a0, result
		li	$v0, 4
		syscall
		
		move 	$a0, $t1
		li	$v0, 1
		syscall
		
		li	$v0, 10
		syscall
 		
 		
		