.data
vector: .word 1,2,3,4,5
.text
main:
    #Store the vector in s0 
    la s0, vector

    # N parameter
    addi a0, zero, 5
    # v parameter
    mv a1, s0
    # call to function
    call SomaVetor
    #print the answer
    mv a1, a0
    addi a0, zero, 1
    ecall

    addi a0, zero, 10
    ecall

# int SomaVetor(unsigned N, unsigned *v)
SomaVetor:
    #The sum
    addi t0, zero, 0
    #The loop counter
    mv t1, a0
    #The position counter
    addi t2, a1, 0
for:
    beq t1, zero, fim
    #get the element
    lw t3, 0(t2)
    # Acumulate in the sum
    add t0, t0, t3
    #decrising the for
    addi t1, t1, -1
    #incrising the position of the vector
    addi t2, t2, 4

    j for

fim:
    mv a0, t0
    ret