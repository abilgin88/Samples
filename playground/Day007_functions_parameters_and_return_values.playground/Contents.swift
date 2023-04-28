import UIKit

//:How to reuse code with functions
print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")
//:
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()
//:
let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}
//:
let roll = Int.random(in: 1...20)
//:
func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 3)
//:
func printTimesTablesVersion2(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesVersion2(number: 3, end: 7)

//:How to return values from functions
let root = sqrt(169)
print(root)
//:
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLattersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

areLattersIdentical(string1: "abd", string2: "bda")
//:
func areLattersIdentical2(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

areLattersIdentical2(string1: "abd", string2: "bda")
//:
func areLattersIdentical3(string1: String, string2: String) -> Bool {
     string1.sorted() == string2.sorted()
}

areLattersIdentical3(string1: "abd", string2: "bda")
//:
func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)
//:
func pythagoras2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c2 = pythagoras2(a: 3, b: 4)
print(c)
//:When is the return keyword not needed in a Swift function?
func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}
//:
func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!" // need return
    } else {
        return "Hello, \(name)" // need return
    }
}
//:
func greet2(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}
//:How to return multiple values from functions
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}
//:
func getUser() -> [String] {
    ["Abdullah", "Swift"]
}
 let user = getUser()
print("Name: \(user[0]) \(user[1])")
//:
func getUser1() -> [String: String] {
    [
        "firstName": "Abdullah",
        "secondName": "Swift"
    ]
}

let user1 = getUser1()
print("Name: \(user1["firstName", default: "Annonymous"]) \(user1["secondName", default: "Anonymous"])")
//:
func getUser2() -> (firstName: String, lastName: String) {
    (firstName: "Abdullah", lastName: "Swift")
}
let user2 = getUser2()
print("Name: \(user2.firstName) \(user2.lastName)")
print(user2.0, user2.1)
//:
func getUser3() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}
//:
func getUser4() -> (String, String) {
    ("Taylor", "Swift")
}

let user4 = getUser4()
print("Name: \(user4.0) \(user4.1)")

//:
func getUser5() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user5 = getUser5()
let firstName = user5.firstName
let lastName = user5.lastName
print("Name: \(firstName) \(lastName)")
// or
let (firstName1, lastName1) = getUser5()
print("Name: \(firstName1) \(lastName1)")


print("Name: \(firstName) \(lastName)")
//:
let (firstName3, _) = getUser5()
print("Name: \(firstName3)")
//:How to customize parameter labels
func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)
//:
func isUppercase2(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase(string: string)
//:
func isUppercase3(_ string: String) -> Bool {
    string == string.uppercased()
}

let string3 = "HELLO, WORLD"
let result3 = isUppercase3(string3)
//:
func printTimesTables3(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables3(number: 3)
//:
//func printTimesTables4(for: Int) {
//    for i in 1...12 {
//        print("\(i) x \(for) is \(i * for)")
//    }
//}
//
//printTimesTables4(for: 3)
//:
func printTimesTables5(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables5(for: 5)
