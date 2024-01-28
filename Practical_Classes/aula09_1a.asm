.data
prompt: .asciiz "Introduza um numero \n"
result: .asciiz "O fatorial do numero "
result2:.asciiz " é: "

.text
.globl main
main:
	la	$a0, prompt
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	
	move	$a1, $v0
	
	la	$a0, result
	li	$v0, 4
	syscall
	
	move	$a0, $a1
	li	$v0, 1
	syscall
	
	jal	fact
	move	$t1, $v0 # v0 resultado da função fatorial
	# as funções fazem return no adress $v0
	
	la	$a0, result2
	li	$v0, 4
	syscall
	
	move	$a0, $t1
	li	$v0, 1
	syscall
	
	li	$v0, 10
	syscall
	
fact:
	li	$t1, 1		#res = 1
	move	$t0, $a0	# i = num
	
	for:
		ble	$t0, $0, end
		mul	$t1, $t1, $t0
		
		subi	$t0, $t0, 1
		j	for
		
	end:
		move	$v0, $t1
		jr	$ra