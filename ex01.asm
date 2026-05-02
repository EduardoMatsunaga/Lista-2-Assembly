.data 
msg1:.asciiz"Digite a largura do paralelepipedo: "
msg2:.asciiz"Digite a comprimento do paralelepipedo: " 
msg3:.asciiz"Digite a altura do paralelepipedo: "
msg4:.asciiz"Volume do paralelepipedo = "
.text
main:
#largura t1
li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

#comprimento t2
li $v0,4
la $a0,msg2
syscall

li $v0,5
syscall
add $t2,$v0,$zero

#altura t3
li $v0,4
la $a0,msg3
syscall

li $v0,5
syscall
add $t3,$v0,$zero

#volume
li $t0,0
mul $t0,$t1,$t2
mul $t0, $t0, $t3

#print
li $v0,4
la $a0,msg4 
syscall 

li $v0,1
add $a0,$t0,$zero
syscall

