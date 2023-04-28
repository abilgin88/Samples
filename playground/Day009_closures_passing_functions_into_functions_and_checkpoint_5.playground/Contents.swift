import UIKit

func greetUser() {
    print("Hi there")
}

greetUser()

var greatCopy = greetUser
greatCopy()

func sum() {
    print(2 + 2)
}

sum()

//var newSum = sum()
//newSum

var newSum2 = sum
newSum2
newSum2()

let sayHello = {
    print("Hi there")
}

sayHello()

let sayHello2 = { (name: String) -> String in
    "Hi \(name)"
}

//var greetCopy1: () -> Void = greatUser

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Annonymous"
    }
}

let data: (Int) -> String = getUserData

let user = data(1988)
print(user)

sayHello2("Taylor")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)


let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

let payment = { (user: String) in
    print("Paying \(user)...")
}

let payment2 = { (user: String) -> Bool in
    print("Paying \(user)...")
    return true
}

let payment3 = { () -> Bool in
    print("Paying an anonymous person...")
    return true
}

let captainFirstTeam4 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

let captainFirstTeam5 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

let reverseTeam = team.sorted {
    return $0 > $1
}

let reverseTeam1 = team.sorted {
    $0 > $1
}

let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

func animate(duration: Double, animation: () -> Void) {
    print("Starting a \(duration) second animation...")
    animation()
}

animate(duration: 3, animation: {
    print("Fade out the image")
})

animate(duration: 3) {
    print("Fade out the image")
}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let rolls2 = makeArray(size: 50, using: generateNumber)
print(rolls2)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
   print("This is the second work")
} third:  {
   print("This is the third work")
}
