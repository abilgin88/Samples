import UIKit

var greeting = "Hello, playground"
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver1 = false
gameOver1.toggle()

let firstPart = "Hello"
let secondPart = "worls!"
let greeting2 = firstPart + secondPart
print(greeting2)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggaugeCode = "1" + "2" + "3" + "4" + "5"

let name3 = "Taylor"
let age3 = 26
let message = "Hello, my name is \(name3) and I'm \(age3) years old."

let nember = 11

// let missionMessage = "Apollo" + number + "landed on the moon"

let missionMessage = "Apollo " + String(number) + " landed on the moon"

let missionMessage2 = "Apollo \(number) landed on the moon"

print(missionMessage2)

print("5 * 5 is \(5 * 5)")
