.data
n1:.asciiz"Digite a sua primeira nota: "
n2:.asciiz"Digite a sua segunda nota: "
n3:.asciiz"Digite a sua terceira nota: "
n4:.asciiz"Digite a sua quarta nota: "
apro:.asciiz"\nAprovado"
ex:.asciiz"\nExame"
ret:.asciiz"\nRetido"
med:.asciiz"\nA sua média é: "
.text
main:
#n1 t1
li $v0,4 
la $a0,n1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

#n2 t2
li $v0,4 
la $a0,n2
syscall

li $v0,5
syscall
add $t2,$v0,$zero

#n3 t3
li $v0,4 
la $a0,n3
syscall

li $v0,5
syscall
add $t3,$v0,$zero

#n4 t4
li $v0,4 
la $a0,n4
syscall

li $v0,5
syscall
add $t4,$v0,$zero

#media 
li $t0,0
li $t7,4
add $t0, $t1,$t2
add $t5, $t3,$t4
add $t6, $t0,$t5
div $t6, $t6, $t7

li $v0,4
la $a0,med 
syscall 

li $v0,1
add $a0,$t6,$zero
syscall

#media >= 6
li $t8, 6
bge $t6, $t8, aprovado

#media >= 3 
li $t8, 3
bge $t6, $t8, exame

j retido 

aprovado: 
li $v0,4
la $a0,apro
syscall
j fim

exame: 
li $v0,4
la $a0,ex
syscall
j fim

retido:
li $v0,4
la $a0,ret 
syscall
j fim

fim: 
li $v0, 10
syscall