main:
    addi t0, zero, 4
    ecall
    #Armazenamos numero em s0
    add s0, zero, a0

    #Definimos nossa mascara
    #Nesse caso queremos os 4 primeiros bits
    #Assim vamos sempre comparar com 16
    addi s1, zero, 15

    #Definimos quantas vezes vamos entrar no for
    #Como temos numeros de 32b vai ser 8 vezes
    addi s2, zero, 8

    addi s3, zero, 0

for:
    #Veificacao limite do for
    bge s3, s2, fim

    #Vamos capturar os utimos números
    srli a2, s0, 28
    and a2, a2, s1

    #Deslocando 4 bits para a esquerda
    #Assim os 4 ultimos mudam
    slli s0, s0, 4

    addi s3, s3, 1
    j print

print:
    addi a1, zero, 10
    
    bge a2, a1, letras

    addi a0, a2, 48
    
    addi t0, zero, 2
    ecall
    
    j for
letras:
    addi a0, a2, 55
    
    addi t0, zero, 2
    ecall
    j for
fim:
    ret