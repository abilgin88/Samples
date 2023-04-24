import UIKit
//:How to use type annotations
let surname = "Lasso"
var score = 0
//:
let surname1: String = "Lasso"
let score1: Int = 0
//:
var score2: Double = 0
//:
let playerName: String = "Roy"

var luckNumber: Int = 13

let pi: Double = 3.141

var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]

var user: [String: String] = ["id": "@twostraw"]

var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

var teams: [String] = [String]()

var cities: [String] = []

var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.dark
style = UIStyle.system
style = .light

let username: String
// lots of complex logic
username = "@twostraws"
// lots of complex logic
print(username)

//let score: Int = "zero"

var percentage: Double = 99

let names =  ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]

//:Checkpoint 2
//  create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let names1: [String] =  ["Eleanor", "Chidi", "Tahani", "Tahani", "Jianyu", "Michael", "Janet", "Jianyu"]
print(names1.count)

var names2: Set<String> = Set()

// access items of an array
let languages = ["Swift", "Java", "Go", "JavaScript"]

for i in names1 {
    names2.insert(i)
}

print(names2.count)
