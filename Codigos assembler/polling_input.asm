		lui $t0, 0xffff 	#ffff0000
Waitloop1: 	lw $t1, 0($t0) 		#control
		andi $t1,$t1,0x0001
		beq $t1,$zero, Waitloop1
		lw $v0, 4($t0) 		#data
