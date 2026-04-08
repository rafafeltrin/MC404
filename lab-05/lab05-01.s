.data
vetor: 
    .word 10, 20, 30
.text
main:
    #Carregando o endereco de memoria
    la s0, vetor

    #Carregando words (32 bits)
    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0)

    #Somando os valores
    add t3, t0, t1
    add t3, t3, t2

    #Imprimindo um numero
    add a1, zero, t3 # Parâmetro da ecall (a1) com o número a ser impresso
    addi a0, zero, 1 # Seletor da ecall (1) para imprimir um número 
    ecall

    #Encerrando o programa
    addi a0, zero, 10
    ecall