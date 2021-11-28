//
//  main.swift
//  myhomework
//
//  Created by Alex Sobolev on 28.11.2021.
//

import Foundation

print("Hello, World!")

let Array = [1, 2, 3, 45, 52, 63, 74, 84, 91, 10]
for number in Array{
if number % 2 == 0 {
print("\(number) четное число")
}else{
print("\(number) нечетное число")
}
}

//Написать функцию, которая определяет, делится ли число без остатка на 3.
  
for element in Array where element % 3 == 0 {
    print("\(element) делится без остатка на 3")
}

//Создать возрастающий массив из 100 чисел.

var oneHundred: [Int] = []
for date in 1...100 {
    oneHundred.append(date)
}
print(oneHundred)

//Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for date in oneHundred where (date%2 == 0) || (date%3 == 0) {
    oneHundred.remove(at : (oneHundred.firstIndex(of: date)!))
}
print(oneHundred)

//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func fibonacciNumber(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciNumber(100))
