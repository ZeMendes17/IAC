	.data
	
	.text
main:   la $t0, 0x12345678
	sll $t1, $t0, 1
	srl $t2, $t0, 1
	sra $t3, $t0, 1
	
	la $t0, 0x12345678
	sll $t1, $t0, 4
	srl $t2, $t0, 4
	sra $t3, $t0, 4
	
	la $t0, 0x12345678
	sll $t1, $t0, 2
	srl $t2, $t0, 2
	sra $t3, $t0, 2
	
	la $t0, 0xF0000003
	sll $t1, $t0, 4
	srl $t2, $t0, 4
	sra $t3, $t0, 4
	
	
	