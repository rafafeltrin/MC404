.data
    vetor: .space 80
    N: .word
    formato: .ascii "%d"
.text 
main:
    addi a0, zero, 2

#Recebe em a0 um ponteiro para o vetor
#Recebe em a1 o tamanho
LeVetor:
    #Aqui estamos declarando a pilha
    #Todos os valores que vamos modificar e utilizar
    #Depois temos que reverter isso
    addi sp, sp, -12
    sw s0, 0(sp)
    sw s1, 4(sp)
    sw ra, 8(sp)
    
    j scanf

#somaVetor(vetor, n)
SomaVetor:
    addi t0, zero, zero

loop:
    beq a1, zero, fim

    #Carrega o numero no vetor
    lw t1, 0(a0)
    add t0, t0, t1
    
    #Incrementa
    addi a0, a0, 4

    #subtrai para o loop
    addi a1, a1, -1

quarta e quinta semana