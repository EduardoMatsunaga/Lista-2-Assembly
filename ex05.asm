.data
msg1:.asciiz"Digite um numero: "
msg2:.asciiz"Digite outro numero: "
msg3:.asciiz"Somatória dos impares entre eles: "
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

bgt $t1, $t2, maior
add $t3, $t1,$zero
add $t4, $t2,$zero

j iniciar

maior: 
add $t3, $t2,$zero
add $t4, $t1,$zero

iniciar: 
add $t5, $t3, 1
li $t6, 0

laco: 
bge $t5, $t4, fim
li $t7, 2
div $t8, $t5, $t7
mul $t9, $t8, $t7
sub $t0, $t5, $t9

beqz $t0, par

add $t6, $t6, $t5

par: 
add $t5, $t5, 1
j laco

fim:
li $v0, 4
la $a0, msg3
syscall

li $v0, 1
add $a0, $t6, $zero
syscall


