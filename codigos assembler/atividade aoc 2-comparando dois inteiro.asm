# Atividade AOC - 02 
# Comparando dois inteiros
# Written by Felipe Souza e Giovani Henrique 

	.data
prompt:	.asciiz "Entre com um inteiro: "
maior: .asciiz "o primeiro inteiro inserido é maior ou igual ao segundo "
menor: .asciiz "o primeiro inteiro inserido é menor que segundo  "
newline: .asciiz	"\n"
bye:	.asciiz	"Goodbye!\n"
	.globl	main
	
	.text
main:

	# initialize 
	li	$s0, 10
	
	# prompt for input
	li	$v0, 4
	la	$a0, prompt
	syscall
	

	# read in the value
	li	$v0, 5
	syscall
	move 	$s0, $v0
	
	# prompt for input
	li	$v0, 4
	la	$a0, prompt
	syscall
	
	# read in the value
	li	$v0, 5
	syscall
	move 	$s1, $v0
	
	# print newline
	li	$v0, 4
	la	$a0, newline
	syscall

	# comparando
	bge $s0, $s1, emaior
	
	# print menor
	li	$v0, 4
	la	$a0, menor
	syscall
	
	j continua
emaior:
	# print maior
	li	$v0, 4
	la	$a0, maior
	syscall
	
continua:

	li	$v0, 4
	la	$a0, newline
	syscall

	# print goodbye message
	li	$v0, 4
	la	$a0, bye
	syscall
