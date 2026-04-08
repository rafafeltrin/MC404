main:
    #Instrução para ler um caractere
    addi t0, zero, 5
    ecall

    #Trasnformando em minúsculo
    addi a0, a0, 32

    #Imprimir caractere
    addi t0, zero, 2
    ecall