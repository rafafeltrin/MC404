main:
    #leia de 2 em 2 numeros e sempre imprima o maior deles.
    #Voce deve encerrar quando qualquer um dos dois for zero.
    addi t0, zero, 4
    ecall
    add s0, zero, a0

    addi t0, zero, 4
    ecall
    add s1, zero, a0

    beq s0, zero, end
    beq s1, zero, end

    bge s0, s1, first_grater
    blt s0, s1, second_grater

    ret
first_grater:
    add a0, zero, s0
    addi t0, zero, 1
    ecall
    j main
second_grater:
    add a0, zero, s1
    addi t0, zero, 1
    ecall
    j main 

end:
    ret