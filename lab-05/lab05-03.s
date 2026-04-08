.data
    vetor1: .word 1, 2, 3, 4, 5
    vetor2: .word 6, 7, 8, 9, 10
    vetor3: .space 5 
.text
main:
    #Carregando os enderecoes de memoria dos vetores
    la s0, vetor1
    la s1, vetor2
    la s2, vetor3

    #Contador para o for
    addi s3, zero, 5

    #Posicao de memoria
    addi s4, zero, 0
for:
    #Uma restricao para rodarmos 5 vezes
    ble s3, zero, soma

    #Vamos acessar a posicao de memoria no vetor1 (s0)
    #Mas quem indica a posicao vai ser o s4
    add t3, s0, s4
    lw t0, 0(t3)

    #Fazemos a mesma coisa mas para acessar o vetor2
    add t3, s1, s4
    lw t1, 0(t3)

    #Agora armazenamos a soma no vetor3
    add t2, t0, t1
    add t3, s2, s4
    sw t2, 0(t3)

    #Decrementamos nosso contador
    addi s3, s3, -1

    #Aumentamos nosso ponteiro de acesso a memoria
    addi s4, s4, 4
    j for

soma:
    #soma dos elementos de s3

    #Contador
    addi s3, zero, 5
    
    #posicao da memoria a ser acessada
    addi s4, zero, 0

    #Soma acumulativa
    addi s5, zero, 0

soma_loop:
    ble s3, zero, print

    add t3, s2, s4
    lw t0, 0(t3)
    add s5, s5, t0

    addi s3, s3, -1
    addi s4, s4, 4
    j soma_loop    

print:
    add a1, zero, s5
    addi a0, zero, 1
    ecall

    addi a0, zero, 10
    ecall

    ret