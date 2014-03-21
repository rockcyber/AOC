	.data
 list:	 .word 3, 0, 1, 2, 6, -2, 4, 7, 3, 7
 	.text
    la $t3, list         # put address of list into $t3
    li $t2, 6            # put the index into $t2
    add $t2, $t2, $t2    # double the index
    add $t2, $t2, $t2    # double the index again (now 4x)
    add $t1, $t2, $t3    # combine the two components of the address
    lw $t4, 0($t1)       # get the value from the array cell
    sw $t4, 0($t1)      # store the value into the array cell