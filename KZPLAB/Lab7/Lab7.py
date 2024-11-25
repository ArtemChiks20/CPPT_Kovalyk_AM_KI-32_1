import sys

rows_num = int(input("Введіть розмір квадратної матриці: "))
filler = input("Введіть символ-заповнювач: ")

if len(filler) != 1:
    print("Необхідно ввести рівно один символ-заповнювач")
    sys.exit(1)

for i in range(rows_num):
    for j in range(rows_num):
        if j < rows_num - i:  
            print(filler, end=" ")
        else:
            print(" ", end=" ")  
    print()
