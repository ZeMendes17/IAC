
	.data

array:	.word	4, 3 , -2, 1, 27, 45
	
	.text
	.globl main
	
main:
	la	$a1,array
	li	$t1,0
	
	#Primeira maneira (evitando fazaer o shift por quatro bits)
	
	#for:
	#	beq	$t1,24,end	#Break if i = 6*4
	#	
	#	add	$t2,$t1,$t0	
	#	lb	$t3,0($t2)	# Get array[i]
		
	#	li	$v0, 1
	#	la	$a0,($t3)	# Print array[i]
	#	syscall
		
	#	li	$v0, 11
	#	la	$a0,'-'		#print '-'
	#	syscall
		
	#	addi	$t1,$t1,4	#!!! i = i+4 (temos de trabalhar de 4 em 4 por causa do codigo dos numeros (os caracteres esta de 1 em 1)
		
	#	j	for

		
		
		######ALTERNATIVAMENTE######
		
	for:		
		beq	$t1,6,end
		
		sll	$t3,$t1,2	# Shift o valor de t1 por 4 bits, visto que os inteiros estao separados por 4 bits
		add	$t2,$t3,$a1
		lb	$t4,0($t2)	# Get array[i]
			
		
		li	$v0, 1
		la	$a0,($t4)	# Print array[i]
		syscall
		
		li	$v0, 11
		la	$a0,'-'		#print '-'
		syscall
		
		addi	$t1,$t1,1
		
		j	for
		
	end:
		li	$v0, 10		# End
		syscall