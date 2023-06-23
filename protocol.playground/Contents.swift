import UIKit



protocol Vehicle {
    func startEngine()
    func stopEngine()
    func accelerate()
    func brake()
}


class Car: Vehicle {
    
    func startEngine() {
        print("Car engine started.")
    }
    
    func stopEngine() {
        print("Car Engine stopped.")
    }
    
    func accelerate() {
        print("Car accelerating.")
    }
    func brake() {
        print("Car braking.")
    }
}

let myCar: Vehicle = Car()
myCar.accelerate()

let myCar2 = Car()
myCar2.accelerate()

//

protocol Playable {
    var name: String { get}
    var health: Int { get set}
    
    func attack()
    func defend()
}

class Player: Playable {
    var name: String
    var health: Int
    
    init(name: String, health: Int) {
        self.name = name
        self.health = health
    }
    
    
    func attack() {
        print("\(name) attacked!")
        health += 10
    }
    
    func defend() {
        print("\(name) defended!")
        health -= 10
    }
}

class Enemy: Playable {
    var name: String
    var health: Int
    
    init(name: String, health: Int) {
        self.name = name
        self.health = health
    }
    
    func attack() {
        print("\(name) attacked!")
        health += 10
    }
    
    func defend() {
        print("\(name) defended!")
        health -= 10
    }
}

let player = Player(name: "Hero", health: 100)
let enemy = Enemy(name: "Evil Villain", health: 80)

player.attack()
enemy.defend()

print(player.health)
print(enemy.health)
