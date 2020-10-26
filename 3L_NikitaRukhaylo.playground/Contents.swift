import Foundation

enum Brand {
    case volvo, mercedes, KAMAZ
}

enum Volume {
    case load(amount: Int)
    case remove(amount: Int)
}

enum SwitchEngine {
    case on
    case off
    case checkEngine
}

enum Windows {
    case open, close
}

struct Car {
    var brand: Brand
    var year: Int
    var trunkVolume: Int
    var engineOn: SwitchEngine
    var windowsOpen: Windows
}

struct Truck {
    var brand: Brand
    var year: Int
    var bodyVolume: Int
    var engineOn: SwitchEngine
    var windowsOpen: Windows
    
    mutating func putVolume(action: Volume) {
        switch action {
        case .load(amount: let amount):
            self.bodyVolume += amount
        case .remove(amount: let amount):
            if amount > self.bodyVolume {
                print("Error")
            } else {
                self.bodyVolume -= amount
                    }
                }
            }
    mutating func turnedEngineOn() {
        self.engineOn = .on
    }
    mutating func turnedEngineOff() {
        self.engineOn = .off
    }
    mutating func brokeEngine() {
        self.engineOn = .checkEngine
    }
}



var carOne = Car(brand: .mercedes, year: 2018, trunkVolume: 1000, engineOn: .on, windowsOpen: .open)
var carTwo = Truck(brand: .volvo, year: 2019, bodyVolume: 5000, engineOn: .off, windowsOpen: .close)

carTwo.putVolume(action: .load(amount: 200))
carTwo.putVolume(action: .remove(amount: 100))
carTwo.bodyVolume
carTwo.turnedEngineOn()
carTwo.engineOn
carTwo.turnedEngineOff()
carTwo.engineOn

