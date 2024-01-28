.data

str: 	.asciiz "Introduza um numero: "
traco:	.asciiz "-"
.text
.globl main

main:
	add	$s0, $0, $0	# i

	la	$a0, str
	li	$v0, 4
	syscall
	
	li 	$v0, 5 # $v0 = 5 (syscall "read_int")
 	syscall # read_int() (o valor lido é
 	move 	$t0, $v0
 	
	for: 	beq	$s0, $t0, done
		la	$a0, traco
		li	$v0, 4
		syscall
		addi	$s0, $s0, 1	# i++
		j	for
	
	done:	 		
		li	$v0, 10
		syscall
 	
 	
	
	