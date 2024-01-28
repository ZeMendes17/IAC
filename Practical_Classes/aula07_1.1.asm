.data

prompt1: .asciiz "Introduza um numero: "
strpar:	 .asciiz "O numero é par"
strimp:	 .asciiz "O numero é impar"

.text
.globl main

main:
	la 	$a0, prompt1
	li 	$v0, 4
	syscall
	
	li 	$v0, 5 # $v0 = 5 (syscall "read_int")
 	syscall # read_int() (o valor lido é
 	
 	andi 	$t0, $v0, 1
 	
 if:	bne	$t0, 0, else_label
 	la	$a0, strpar
 	li	$v0, 4
 	syscall
 	j endif_label
 	
 else_label:
	la	$a0, strimp
	li	$v0, 4
	syscall
	

endif_label:
	li $v0, 10
	syscall