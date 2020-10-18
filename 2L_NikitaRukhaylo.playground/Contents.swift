import Cocoa
import Foundation

// Написать функцию, которая определяет, четное число или нет.
var number = 114

    func odd(){
        if number % 2 == 0 {
            print("Число четное")
        }
        else {
            print("Число нечетное")
        }
}
        
// Написать функцию, которая определяет, делится ли число без остатка на 3.

    func tripple(){
        if number % 3 == 0 {
            print("Число делится на 3 без остатка")
        }
        else {
            print("Число не делится на 3 без остатка")
        }
}

// Создать возрастающий массив из 100 чисел.

var increasingArray: [Int] = []

for i in 1...50 {
    increasingArray.append(i)
}

// Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for value in increasingArray {
    if (value % 2) == 0  || (value % 3) != 0 {
        increasingArray.remove(at: increasingArray.firstIndex(of: value)!)
    }
}

// Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fiboArray(_ n: Int) -> [Double] {
    var fibo: [Double] = [1, 1]
    (2...n).forEach{ i in
       fibo.append(fibo[i - 1] + fibo[i - 2])
    }
    return fibo
}

// Заполнить массив из 100 элементов различными простыми числами



// Проверки
odd()
tripple()
for (index, value) in increasingArray.enumerated() {
    print("Item \(index + 1): \(value)")
}
print(fiboArray(10))
