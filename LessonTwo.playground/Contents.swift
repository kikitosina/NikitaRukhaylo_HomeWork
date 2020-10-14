import Cocoa

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
