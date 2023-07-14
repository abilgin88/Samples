import UIKit

//let numbers = [5, 3, 9, 2, 7, 1]
//
//let sortedNumbers = numbers.sorted { (a, b) -> Bool in
//    return a < b
//}
//
////var multiplyClosureT: (Int, Int) -> Int
//
//var multiplyClosure = { (a: Int, b: Int) -> Int in
//    return a * b
//}
//
//let result = multiplyClosure(4, 2)
//
//// shorter
//
//multiplyClosure = { (a: Int, b: Int) -> Int in
//  a * b
//}
//
//multiplyClosure = { (a, b) in
//  a * b
//}
//
//multiplyClosure = {
//  $0 * $1
//}
//
//let newMultiple: (Int, Int, Int) -> Int = {
//    $0 * $1 * $2
//}
//
//newMultiple(2,4,5)
//
//func operateOnNumbers(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
//    let result = operation(a, b)
//    return result
//}
//
//
//
//let addClosure = { (a: Int, b: Int ) in
//    a + b
//}
//
//operateOnNumbers(4, 7, operation: addClosure)
//
//func addFunction(_ a: Int, _ b: Int) -> Int {
//    a + b
//}
//
//operateOnNumbers(4, 2, operation: addFunction)
//
//operateOnNumbers(4, 2, operation: { (a: Int, b: Int ) -> Int in
//    return a + b
//})
//
//operateOnNumbers(4, 2, operation: { $0 + $1})
//
//operateOnNumbers(4, 2, operation: + )
//
//operateOnNumbers(4, 2) {
//    $0 + $1
//}
//
//operateOnNumbers(4, 7, operation: {$0 + $1})
//operateOnNumbers(4, 7, operation: {$0 - $1})
//operateOnNumbers(4, 7, operation: {$0 * $1})
//operateOnNumbers(4, 7, operation: {$0 / $1})
//
//// Map function -> transform each element
//let squareNumber = numbers.map { $0 * $0 }
//
////func contact(name: String, phone: String, operation: (String, String) -> [String: String])  {
////    print("Done")
////}
////contact(name: "abdullah", phone: "Bilgin", operation: {$0 + $1})
//
//func sequenced(first: ()-> Void, second: () -> Void) {
//    first()
//    second()
//}
//
//func test() {
//    print("something")
//}
//sequenced(first: test, second: test)
//
//sequenced {
//    print("Hello,", terminator: "")
//} second: {
//    print("World")
//}
//
//func sequenced1(first: ()-> Void, second: () -> Void) {
//
//}
//sequenced1 {
//    print("Ahmet")
//} second: {
//    print("Mehmet")
//}
//
//func sequenced2(first: ()-> Void, second: () -> Void, third: () -> Void) {
//   first()
//    second()
//    third()
//}
//
//sequenced2 {
//    print("Ahmet")
//} second: {
//    print("gdfgs")
//} third: {
//    print("gfrd")
//}
//
//
//var triplw = { (a: Int, b: Int) -> Int in
//  return a * b
//}
//
//var a: (String, Int) -> (String, Int)
//
//a = { ($0, $1) }
//
//let b = a("Abdullah", 2)
//
//a = {
//    print($0, $1)
//    return ($0, $1)
//}
//
//var c = a("Orhan", 444)
//
//func fullName(firstName: String, lastName: String) -> String {
//    firstName + " " + lastName
//}
//fullName(firstName: "Abdullah", lastName: "BILGIN")
//
//var fullNameClosure = {
//    $0 + " " + $1
//}
//
//fullNameClosure("orhan", "Bilgin")
//
//var r = { $0 % 2 == 0 }
//var t = r(23)
//
//var k = 4
//var d = k
//
//var l: (Int, Int) -> Int = { $0 * $1 }
//
//var m = l(2,3)
//
//var w = 23.3 + 1
//
//var c1: (Int, Int) -> Int = { $0 + $1 }
//var c11 = c1(2,3)
//
//func c2(a: Int, b: Int) -> Int {
//    a + b
//}
// var c22 = c2(a: 2, b: 3)
//
//func o(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
//    let result = operation(a, b)
//    print(result)
//    return result
//}
//
//func operation(a: Int, b: Int) -> Int {
//    a + b
//}
//
//o(a: 2, b: 4, operation: operation)
//
//var operationC = { (a: Int, b: Int) -> Int in a + b }
//
//o(a: 2, b: 4, operation: operationC)
//
//o(a: 4, b: 5, operation: {(a:Int, b: Int) -> Int in a * b })
//
//o(a: 24, b: 12, operation: { $0 / $1} )
//
//o(a: 5, b: 5, operation: + )
//o(a: 5, b: 5, operation: / )
//o(a: 5, b: 5, operation: * )
//
//func multi(first: ()-> Void, second: ()-> Void) {
//    print("This is a function takes two parameter of func")
//}
//
//func f() -> Void { print("This is a function takes two parameter of func") }
//func s() -> Void {  print("This is a function takes two parameter of func")}
//
//multi(first: f, second: s)
//
//var counter = 0
//let incrementCounter = {
//  counter += 1
//    print(counter)
//}
//
//incrementCounter()
//incrementCounter()
//incrementCounter()
//incrementCounter()
//incrementCounter()
//
//func countingClosure() -> () -> Int {
//    var counter = 0
//    let incrementCounter: () -> Int = {
//        counter += 1
//        return counter
//    }
//    return incrementCounter
//}
//
//let counter1 = countingClosure()
//let counter2 = countingClosure()
//
//counter1()
//counter1()
//counter2()
//counter1()
//
//func countingClosure1() -> Int {
//    var counter = 0
//        counter += 1
//    return counter
//}
//let counter11 = countingClosure1()
//let counter21 = countingClosure1()
//counter11
//counter11
//
//let names = ["ZZZZZZ", "BB", "A", "CCCC", "EEEEE"]
//names.sorted()
//
//names.sorted { $0.count > $1.count }
//
//let voidClosure: () -> Void = {
//  print("Swift Apprentice is awesome!")
//}
//voidClosure()
//
//let values = [1, 2, 3, 4, 5, 6]
//
//for (i, j) in values.enumerated() {
//    print(i,j)
//}
//
//values.forEach {
//    print("\($0): \($0*$0)")
//}
//
//var prices = [1.5, 10, 4.99, 2.30, 8.19]
//
//let largerPrice = prices.filter {
//    $0 > 5
//}
//
//let largerPrice1 = prices.filter {
//    $0 < 5
//}
//
//let largerPrice3 = prices.filter {
//    $0 >= 11
//}
//
//let largePrice = prices.first {
//    $0 > 5
//}
//
//let salePrice = prices.map {
//    $0 * 0.9
//}
//
//let userInput = ["0", "11", "haha", "42"]
//
//let numbers1 = userInput.map {
//    Int($0)
//}

let values10 = [1, 2, 3, 4, 5, 6]
var prices = [1.5, 10, 4.99, 2.30, 8.19]

//values10.forEach { name in
//    print("\(name)")
//}
//
//values10.forEach {
//    print("\($0)")
//}
//
//
//for fee in prices {
//    if fee > 5 {
//        print(fee)
//    }
//}
//
//prices.filter { $0 > 5 }

let largePrice = prices.first { number in
    number > 5
}

//for i in prices {
//    var arr: [Double] = []
//    if i > 5 {
//        arr.append(i)
//        print(arr)
//        break
//    }
//
//}

let salePrices = prices.map { $0 * 0.9 }
var arr: [Double] = []
for i in salePrices {
    arr.append(i * 2)
}

let userInput = ["0", "11", "haha", "42"]

let numbers1 = userInput.map { Int($0) }

let numbers2 = userInput.compactMap { Int($0) }

let userInputNested = [["0", "1"], ["a", "b", "c"], ["🐕"]]
let allUserInput = userInputNested.flatMap {
    $0
}

let sum = prices.reduce(0) { $0 + $1 }

var numbers = [1, 2, 3, 4]
let numberSum = numbers.reduce(0, { x, y in
    x + y
})

let numbersShort = [1, 2, 3, 4]
let numberSumShort = numbersShort.reduce(0) { $0 + $1}

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0, {$0 + $1.key * Double($1.value)})

let stockSumLong = stock.reduce(0, { x, y  in
    x + y.key
})

let stockSumLong1 = stock.reduce(0, { x, y  in
    x + y.value
})

let stockSumLong3 = stock.reduce(0, { x, y  in
    x + y.key * Double(y.value)
})

let farmAnimals = ["🐎": 5, "🐄": 10, "🐑": 50, "🐶": 1]
//let allAnimals = farmAnimals.reduce(into: []) {
//    (result, this: (key: String, value: Int)) in
//    for _ in 0 ..< this.value {
//        result.append(this.key)
//    }
//}
let letters = "abracadabra"
let letterCount = letters.reduce(into: [:]) { counts, letter in
    counts[letter, default: 0] += 1
}

prices
let removefirst = prices.dropFirst()
let removeFirstTwo = prices.dropFirst(2)

let removeLast = prices.dropLast()
let removeLastTwo = prices.dropLast(2)
prices
let firstTwo = prices.prefix(2)
let lastTwo = prices.suffix(2)
prices.removeAll() { $0 > 2}
prices.removeAll()

func isPrime(_ number: Int) -> Bool {
    if number == 1 { return false}
    if number == 2 || number == 3 { return true }
    
    for i in 2...Int(Double(number).squareRoot()) {
        if number % i  == 0 { return false}
    }
    return true
}

var primes: [Int] = []
var i = 1

while primes.count < 10  {
    if isPrime(i) {
        primes.append(i)
    }
    i += 1
}

//primes.forEach { print($0) }

let primes1 = (1...).lazy
    .filter { isPrime($0) }
    .prefix(10)
//primes1.forEach { print($0) }

let names = ["Abdullah", "Orhan", "Nurdan", "Ceylan"]
names.reduce(" ") { $0 + $1 }

names.filter {
    $0.count > 4
    
}.reduce("") {
    $0 + $1
}

let namesAndAge = ["Abdullah" : 34, "Orhan" : 6, "Nurdan" : 8, "Ceylan" : 35]

namesAndAge.filter {
    $0.value < 18
}

namesAndAge.filter {
    $0.value >= 18
}.map {
    $0.key
}


func repeatTask(times: Int, task: () -> Void) {
    for _ in 0..<times {
        printTask()
    }
}

var printTask: () -> Void =  {
    print("Swift Apprentice is a great book!")
}

//repeatTask(times: 10, task: printTask)
//repeatTask(times: 10, task: {
//    print("Swift Apprentice is a great book!")
//})



//func fibonacci(_ number: Int) -> Int {
//  if number < 1 {
//    return 0
//  }
//
//  if number == 1 || number == 2 {
//    return 1
//  }
//
//  return fibonacci(number - 1) + fibonacci(number - 2)
//}

let squareNum: (Int) -> Int = {
    $0 * $0
}

let fibonacci3: (Int) -> Int  = {
    if $0 <= 0 { return 0}
    if $0 == 1 || $0 == 2 { return 1 }
    return fibonacci3($0 - 1) + fibonacci3($0 - 2)
}

func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var sum5 = 0
    for i in 0...length {
        sum5 += series(i)
    }
    return sum5
}

mathSum(length: 10, series: fibonacci3)
mathSum(length: 10, series: squareNum)
mathSum(length: 10, series: { $0 * $0 })
mathSum(length: 10) { $0 * $0 }

func mathSum2(length: Int, series: (Int) -> Int) -> Int {
    return (1...length).map { series($0) }.reduce(0, +)
}

mathSum2(length: 10, series: fibonacci3)
mathSum2(length: 10, series: squareNum)

let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var averageRatings: [String: Double] = [:]

appRatings.forEach {
    let total = $0.value.reduce(0, +)
    averageRatings[$0.key] = Double(total) / Double($0.value.count)
}

let goodApps = averageRatings.filter {
    $0.value > 3
}.map {
    $0.key
}

func sayHello() {
    print("hello")
}

sayHello()

func greet() {
    let name = "Jhon"
    
    func sayGreeting() {
        print("Hello \(name)")
    }
    sayGreeting()
}
greet()

let sayGoodbye = {
    print("Goodbye")
}
sayGoodbye()

var number = 0
func inc() {
    number += 1
}
inc()
print(number)

let incc  = {
    number += 1
}

incc()
print(number)

func makeIncrementer(incrementAmaount: Int) -> () -> Int {
    var total = 0
    
    let incrementer: () -> Int = {
        total += incrementAmaount
        return total
    }
    
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmaount: 2)
print(incrementByTwo())
print(incrementByTwo())

let names5 = ["John", "Alex", "Adam", "Eve"]

let sortedNames = names5.sorted()
let sortedNamesAscending = names5.sorted {
    (name1, name2) -> Bool in
    return name1 < name2
}

let sortedNamesDescendin = names5.sorted {
    $0 > $1
}

func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a,b)
    
}

let add = { (a: Int, b: Int) -> Int in
    a + b
}
calculate(a: 5, b: 5, operation: +)
calculate(a: 5, b: 5, operation: add)

let numbers5 = [1, 2, 3, 4, 5]

let doubleNumbers = numbers5.map { number in
    return number * 2
}

print(doubleNumbers)

let doubleNumbers5 = numbers5.map { $0 * 2}

print(doubleNumbers)

struct Person1 {
    let name: String
    var age: Int
}

var people1 = [
    Person1(name: "Abdullah", age: 34),
    Person1(name: "Ceylan", age: 35),
    Person1(name: "Nurdan", age: 8),
    Person1(name: "Ordan", age: 6)
]

let sortedPeople = people1.sorted {
    $0.age < $1.age
}
var numbers6 = [1, 2, 3, 4, 5]

//numbers6.forEach { number in
//    numbers6[number - 1] *= 2
//}

numbers6.forEach {
    numbers6[$0 - 1] *= 2
}
numbers6.map { $0 * 2}

struct Person {
    var name: String
    var age: Int
}

var people = [
    Person(name: "John", age: 25),
    Person(name: "Alex", age: 30),
    Person(name: "Adam", age: 20)
]

people.indices.forEach {
    people[$0].age += 1
}

print(people)

let filteredNumbers = numbers.filter { number in
    return number % 2 == 0
}

let shortFilter = numbers.filter {
    $0 % 3 == 0
}

let names1 = ["John", "Alex", "Adam", "Eve"]

let filteredNames = names1.filter { name in
    return names1.count > 3
}

let ffilterNamesShort = names1.filter {
    $0.hasPrefix("J")
}

if let firstEvenNumber = numbers.first(where: {$0 % 2 == 0}) {
    print(firstEvenNumber)
}

numbers.first {
    $0 % 3 == 0
}
numbers

if let firstMatch = names.first(where: {$0.hasPrefix("A")}) {
    print(firstMatch)
}
names

if let firstPerson = people.first {
    print(firstPerson)
}

let doubleNumbers3 = numbers.map { number in
    return number * 2
}

let uppercaseNames = names.map { name in
    return name.uppercased()
}

let namess = people.map { person in
    return person.age
}

let numbers10: [Int?] = [1, 2, nil, 4, nil, 6]

let validNumbers = numbers10.compactMap { $0 }

let strings = ["1", "2", "3", "four", "5", "six"]

let integers = strings.compactMap {
    Int($0)
}

let validAges = people.compactMap { $0.age}

let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

let flattenedArray = nestedArray.flatMap { $0 }

let flattenedNumbers = numbers10.compactMap { $0 }

let strings1 = ["Hello", "Swift", "Programming"]

let characters = strings1.flatMap { $0 }

let char = strings1.flatMap {
    $0.map {
        $0
    }
}

let sum2 = numbers.reduce(0) { (result, number) in
    return result + number
}

let sum4 = numbers.reduce(0) {$0 + $1}
let sum5 = numbers.reduce(0, + )
let s = numbers.reduce(0, - )

let words = ["Hello", " ", "World", "!"]

let sentence = words.reduce("") { (result, word) in
    return result + word
}

let sentneceShort = words.reduce("", +)

let numbers22 = [12, 8, 15, 3, 10]

let maxNumber = numbers22.reduce(Int.min) { (result, number) in
    return max(result, number)
}

let droppedNumbers = numbers.dropFirst(3)

let message = "Hello, World!"
let droppedMassage = message.dropFirst(7)

numbers
let dropedNumbers = Array(numbers.dropLast())

let droppedNumbersManuel = Array(numbers[0..<numbers.count - 1])

numbers
let prefixNumbers = numbers.prefix(3)
let suffixNumbers = numbers.suffix(3)

message
let prefixMessage = message.prefix(5)
let sufixMessage = message.suffix(6)

let numbers33: [Int] = [1, 2, 3, 4, 5]

let result = numbers33.filter {
    $0 % 2 == 0
}.reduce(0, +)
