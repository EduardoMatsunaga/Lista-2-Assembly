.data
msg1:.asciiz"Digite um numero: "
msg2:.asciiz"Digite um numero: "
msg3:.asciiz"A diferença do maior pelo menor = "
.text
main:

#A t1
li $v0,4 
la $a0,msg1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

#B t2
li $v0,4
la $a0,msg2
syscall

li $v0,5
syscall
add $t2,$v0,$zero

#A>B
bgt $t1,$t2, maior

#B>A
sub $t0, $t2, $t1

maior:
sub $t0, $t1, $t2

li $v0,4
la $a0,msg3
syscall 

li $v0,1
add $a0,$t0,$zero
syscall