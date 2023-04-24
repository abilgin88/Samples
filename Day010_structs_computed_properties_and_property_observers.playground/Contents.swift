import UIKit
//: How to create your own structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year) by \(artist))")
    }
}

var ahmet = Album(title: "ahmet", artist: "orhan", year: 2020)
print(ahmet)
ahmet.printSummary()

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

//let abdullah = Employee(name: "Abdullah", vacationRemaining: 23)
//abdullah.takeVacation(days: 4)

var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

let a = 1
let b = 2.0
let c = Double(a) + b

let name: String
let vacationRemaining = 14

let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)

struct Employee1 {
    let name: String
    var vacationRemaining: Int = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

let kane = Employee1(name: "Lane Kane")
let test = Employee1(name: "A", vacationRemaining: 23)
print(test)

var tuples = (name: "Abdullah", age: 34, city: "London")
print(tuples)
tuples.name
tuples.age
tuples.city

struct User {
    var name: String
    var age: Int
    var city: String
}
//func authenticate(_ user: User) { ... }
//func showProfile(for user: User) { ... }
//func signOut(_ user: User) { ... }

// func authenticate(_ user: (name: String, age: Int, city: String)) {...}
// func showProfile(for user: (name: String, age: Int, city: String)) { ... }
// func signOut(_ user: (name: String, age: Int, city: String)) { ... }


struct Employee3 {
    let name: String
    var vacationRemaining: Int
}

var archer33 = Employee3(name: "Abdullah", vacationRemaining: 17)
archer33.vacationRemaining -= 5
print(archer33.vacationRemaining)
archer33.vacationRemaining -= 3
print(archer33.vacationRemaining)

struct Employee4 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}
var archer44 = Employee4(name: "Abdullah")
archer44.vacationTaken += 4
print(archer44.vacationRemaining)
archer44.vacationTaken += 4
print(archer44.vacationRemaining)

