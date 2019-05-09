.data
	a1 : .float 6.8
	a2 : .float 8.1
	b1 : .double 12.789
	b2 : .double 17.879

.text
main:
	
l.s $f0, a1			# load  float
l.s $f1, a2			# load  float

add.s $f3,$f1,$f0 		# add float 
sub.s $f4,$f1$f0 		# subtract float
mul.s $f5,$f1$f0 		# multiply float
div.s $f6,$f1,$f0 		# divide float


l.d $f7,b1			# load double
l.d $f8,b2			# load double

add.d $f9,$f7,$f8		# add double
sub.d $f10,$f7,$f8		# subtact double
mul.d $f11,$f7,$f8		# multiply double
div.d $f12,$f7,$f8		# divide double
	
li $v0,10
syscall