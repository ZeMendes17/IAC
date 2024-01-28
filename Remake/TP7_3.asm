.data
prompt1: .asciiz	"Introduza um numero\n"
result: .asciiz		"O fatorial do numero inserido é: "

.text
.globl main

main:
	la	$a0, prompt1
	li	$v0, 4
	syscall
	
		
	addi	$t1, $t1, 1
	
	li	$v0, 5
	syscall
	
	move	$t0, $v0
	
	addi	$t2, $t0, 0
	
for:	ble	$t2, 0, end
	
	mul	$t1, $t1, $t2
	
	subi	$t2, $t2, 1
	
	j for
	
end:

	la	$a0, result
	li	$v0, 4
	syscall

	move	 $a0, $t1
	li	 $v0, 1
	syscall	
	
	li	$v0, 10
	syscall