.data
#Vamos considerar uma matriz 2,3
vetor:
    .word 0,0,0,0,0,0
.text
main:
    #carregando o endereco em memoria
    la s0, vetor

    #Numero de colunas
    addi s5, zero, 3

    #limites do nosso for
    #O limite depende da quantidade de linhas
    addi s1, zero, 2

for:
    addi s1, s1, -1
    #Verificacao do limite do for
    blt s1, zero, fim

    #Aqui armazenamos a quantidade de linhas que temos
    addi s2, zero, 2

    #Basciamente armazena o numero 4
    addi s4, zero, 4
    j for2

for2:
    blt s2, zero, for

    #Valor que sera armazenado
    add t1, s1, s2

    #posicao que queremos acessar do vetor
    mul t0, s1, s5
    add t0, t0, s2

    #Multiplicamos por 4 pois e a posicao em memoria
    mul t0, t0, s4
    add t0, t0, s0
    
    #Carregamos o numero t1 na posicao em memoria t0
    sw t1, 0(t0)

    #vamos printar o valor que esta sendo armazenado
    add a1, zero, t1
    addi a0, zero, 1
    ecall

    addi s2, s2, -1

    j for2

fim:
    addi a0, zero, 10
    ecall


    
    

