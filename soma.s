.section .data
    num1: .long 10
    num2: .long 10
    str: .string "Valor da soma: %d\n"

.section .text
    .global main

main:
    movl num1, %eax
    movl num2, %ebx
    addl %ebx, %eax
    pushl %eax
    pushl $str
    call printf
    addl $8, %esp
    ret