.data
frase1:		.asciiz "Introduza dois numeros: \n"
frase2:		.asciiz "A soma dos numeros é: "
	
.text
.globl main

main: 
	la $a0, frase1
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	la $a0, frase2
	li $v0, 4
	syscall
	
	add $a0, $t0, $t1
	li $v0, 1
	syscall
	
	
	li $v0, 10
	syscall
	
	
	
	