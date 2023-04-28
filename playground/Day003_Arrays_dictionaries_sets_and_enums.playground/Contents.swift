import UIKit
//:How to store ordered data in arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
//:
print(beatles[0])
print(numbers[1])
print(temperatures[2])
//:
beatles.append("ABDULLAH")
beatles.append("Nurdan")
beatles.append("Ahmet Orhan")
//temperatures.append("Bilgin")
//:
let firstBeatle = beatles[0]
let firstNumber = numbers[0]
//let notAllowed = firstBeatle + firstNumber
//:
var score = Array<Int>()
score.append(100)
score.append(80)
score.append(85)
print(score[1])
//:
var album = Array<String>()
album.append("folklore")
album.append("Fearless")
album.append("Red")
//:
var albums = [String]()
albums.append("folklore")
albums.append("Fearless")
albums.append("Red")
//:
var albums1 = ["Folklore"]
albums1.append("Res")
//: count
print(album.count)
//: remove(at:) and removeAll()
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)
//:contains()
var bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))
//:sorted()
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())
//:reserved()
let presidents = ["Bush", "Obama", "Trump", "Biden"]
var reversedPresidents = presidents.reversed()
print(reversedPresidents)
//: How to store and find data in dictionaries
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")


print("Name: \(employee[0])")
employee.remove(at: 1)
print("Job title: \(employee[1])")
//print("Location: \(employee[2])")
//:
let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]

let employee3 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee3["name"])
print(employee3["job"])
print(employee3["location"])

print(employee2["password"])
print(employee2["status"])
print(employee2["manager"])

print(employee3["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])
//:
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeirp",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])
//:
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)
//:
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"
print(archEnemies)
//:How to use sets for fast data lookup
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

//:insert()
var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")
//:How to create and use enums
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "
//:
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

enum Weekday2  {
    case monday, tuesday, wednesday, thursday, friday
}

var day2 = Weekday2.monday
day = .tuesday
day = .friday
//:
let results = [
    "english": 100,
    "french": 85,
    "geography": 75
]

let historyResult = results["history", default: 0]

