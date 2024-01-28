.data
	prompt1: .asciiz "Introduza um numero\n"
	res: .ascii "-"
	
.text
.globl main

main: 
	la	$a0, prompt1
	li	$v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	
for:	bge $t1, $t0, end
	
	la $a0, res
	li $v0, 4
	syscall
	
	addi $t1, $t1, 1
	j for
	
end:
	li $v0, 10
	syscall
	