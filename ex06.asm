.data
msg1:.asciiz"Digite um numero: "
msg2:.asciiz"Número negativo invalido! Digite novamente:\n "
msg3:.asciiz"\nMenor valor: "
msg4:.asciiz"\nMaior valor: "
.text

main:
li $t0, 10

primeiro: 
li $v0,4 
la $a0,msg1
syscall

li $v0,5
syscall
add $t1, $v0, $zero

bltz $t1, negativo1
add $t2, $t1, $zero #menor
add $t3, $t1, $zero #maior

add $t0, $t0, -1
j laco

negativo1:
li $v0,4 
la $a0,msg2
syscall
j primeiro

laco: 
beqz $t0, fim

li $v0,4 
la $a0,msg1
syscall

li $v0,5
syscall
add $t1, $v0,$zero

bltz $t1, negativo

blt $t1, $t2, menor
bgt $t1,$t3, maior

j continua

menor: 
add $t2, $t1, $zero
j continua

maior:
add $t3,$t1,$zero

continua: 
add $t0, $t0, -1 
j laco

negativo: 
li $v0,4
la $a0,msg2
syscall
j laco

fim:
li $v0,4
la $a0,msg3
syscall

li $v0,1
add $a0, $t2,$zero
syscall

li $v0,4
la $a0,msg4
syscall

li $v0,1
add $a0, $t3,$zero
syscall

li $v0, 10
syscall