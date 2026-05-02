.data
msg1:.asciiz"Digite o raio da circunferencia: "
msg2:.asciiz"Comprimento da circunferencia = "
.text
main:
#raio t1
li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

#comprimento t0
li $t0,6
mul $t2, $t1, $t0

#print
li $v0,4
la $a0,msg2
syscall 

li $v0,1
add $a0,$t2,$zero
syscall