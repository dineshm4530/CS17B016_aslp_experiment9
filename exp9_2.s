.data
    array1:	.float	1.0, 2.3, 3.7, 5.5, 6.7, 7.8, 8.1, 8.5, 9.3
    array2:	.float	1.234, 2.345, 3.678, 5.78, 7.89,7.123, 8.23, 8.45, 9.111
    array3:	.float	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 
    size:	.word	3

   .text
main:
	la $t0,array1
	la $t1,array2
	la $t2,array3
	lw $s0,size
	mult $s0, $s0
	mflo $s0
	li $t4, 0		# loop counter

loop:
	beq $t4, $s0,xit
	l.s $f2, 0($t0)          # load float
	l.s $f4, 0($t1)          # load float
	add.s $f6, $f4, $f2      # add float
	s.s $f6, 0($t2)
	addi $t0,$t0,4
	addi $t1,$t1,4
	addi $t2,$t2,4
	addi $t4,$t4,1
	j loop

exit:
  li $v0, 10
  syscall