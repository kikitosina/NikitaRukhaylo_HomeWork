import Foundation

// Решить квадратное уравнение
// Задаю переменные для квадратного уравнения ax2 + bx + c = 0;

    var a: Double = 1
    var b: Double = 5
    var c: Double = 6
    var x1: Double = 0
    var x2: Double = 0

// Решение уравнения

    var D = pow(b, 2) - 4 * a * c

if a == 0 {
    x1 = -c / b
    print(x1)
}

if a == 0 && a == b || D < 0 {
    print("Корней нет")
}

if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print(x1)
}

if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print(x1)
    print(x2)
}

// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника
// Использую те же переменные a, b и c

var perimeter = 0.0
var square = 0.0

if a <= 0 || b <= 0 {
    print("Необходимо ввести положительные значения катетов треугольника")
} else {
    c = sqrt(pow(a, 2) + pow(b, 2))
    perimeter = a + b + c
    square = a * b / 2
    // ругается на меня если я определяю переменные внутри ветвления else вот так, это плохо?
    // var perimeter = a + b + c
    // var square = a * b / 2
}

// * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет

var deposit: Double = 100
var percent: Double = 4.9
var year = 5
var count = 1

if deposit <= 0 || percent <= 0 {
    print("Необходимо ввести положительные значения вклада и процентов")
} else {
    for count in 1...year {
        deposit = deposit * percent / 100 + deposit
    }
    print(deposit)
}
// как-то так

