.data

mensagem: .asciiz "Digite um número:\n"

media: .asciiz "Media:\n"

.text

main:
li $v0, 4

la $a0, mensagem

syscall

li $v0, 5

syscall

add $s0, $zero, $v0

li $v0,4

la $a0, mensagem

syscall

li $v0, 5

syscall

add $s1, $zero, $v0

li $v0,4

la $a0, mensagem

syscall

li $v0, 5

syscall

add $s2, $zero, $v0

add $t0,$s0,$s1

add $t1,$t0,$s2

addi $t2, $zero, 3

div $t3, $t1, $t2 

li $v0,4

la $a0, media

syscall

li $v0, 1
la $a0, ($t3)	
syscall		