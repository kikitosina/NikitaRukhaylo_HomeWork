import Cocoa
import Foundation


enum EngineStatus {
    case isOn
    case isOff
}

enum Action {
    case setEngine(state: EngineStatus)
    case setLoad(amount: Int)
}

class Car {
    
    var doors: Int
    var hp: Int
    var engine: EngineStatus = .isOff
    var load = 0
    var color: String
    
    init(hp: Int, doors: Int, color: String) {
        self.hp = hp
        self.doors = doors
        self.color = color
    }
    
    func action(action: Action) {
        
    }
}

class trunkCar: Car {
    
    init(hp: Int) {
        super.init(hp: hp, doors: 4, color: "black")
    }
    
    override func action(action: Action) {
        switch action {
        case .setEngine(state: let state):
            self.engine = state
        case .setLoad(amount: let amount):
            self.load += amount
        }
    }
    
}

class sportCar: Car {
    
    init(hp: Int) {
        super.init(hp: hp, doors: 2, color: "red")
    }
    override func action(action: Action) {
        switch action {
        case .setEngine(state: let state):
            self.engine = state
        case .setLoad(amount: let amount):
            self.load += amount
        }
    }
    
}

let fiat = trunkCar(hp: 1500)
print(fiat.engine, fiat.load, fiat.doors, fiat.hp, fiat.color)
fiat.action(action: .setEngine(state: .isOn))
fiat.action(action: .setLoad(amount: 10000))
print(fiat.engine, fiat.load, fiat.doors, fiat.hp, fiat.color)

let ferrari = sportCar(hp: 800)
print(ferrari.engine, ferrari.load, ferrari.doors, ferrari.hp, ferrari.color)
ferrari.action(action: .setEngine(state: .isOn))
ferrari.action(action: .setLoad(amount: 160))
print(ferrari.engine, ferrari.load, ferrari.doors, ferrari.hp, ferrari.color)
