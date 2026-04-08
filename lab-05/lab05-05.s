.data
palavra: .string "Rafael"
.text
main:
    #carrega a palavra em s0
    la s0, palavra
    
    #Carrega o primeiro byte da palavra
    lb s1, 0(s0) 

    # Contador
    addi s3, zero, 0

    #S3 posicao em memoria para acessar
    add s4, zero, s0
while:
    beq s1, zero, fim

    addi s3, s3, 1

    addi s4, s4, 1

    #Imprimir a palavra
    add a1, zero, s1
    addi a0, zero, 11
    ecall

    #novo bit
    lb s1, 0(s4)
    
    j while

fim:
    add a1, zero, s3
    addi a0, zero, 1
    ecall

    addi a0, zero, 10
    ecall
