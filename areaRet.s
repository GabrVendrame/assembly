.section .data
    lado: .long 0
    altura: .long 0
    scan_lado: .string "Lado: "
    scan_altura: .string "Altura: "
    scan: .string "%d"
    print: .string "Area: %d\n"

.section .text
    .global main

main:
    pushl $scan_lado
    call printf
    addl $4, %esp

    pushl $lado
    pushl $scan
    call scanf
    addl $8, %esp

    pushl $scan_altura
    call printf
    addl $4, %esp

    pushl $altura
    pushl $scan
    call scanf
    addl $8, %esp

    movl lado, %eax
    movl altura, %ebx
    imul %ebx, %eax
    pushl %eax
    pushl $print
    call printf
    addl $8, %esp
    ret