import UIKit
//: How to provide default values for parameters
func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
//:
func printTimesTables1(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables1(for: 12)
printTimesTables1(for: 12, end: 8)
//:
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll()
print(characters.count)
//:
characters.removeAll(keepingCapacity: true)
//:When to use default parameters for functions
func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // some code here
}

findDirections(from: "London", to: "Glosgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)
//:How to handle errors in functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "1234"

//do {
//    let result = try checkPassword(string)
//    print("Password rating: \(result)")
//} catch {
//    print("There was an error")
//}

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

//:Checkpoint 4

enum calculationError: Error {
    case outOfBounds, noRoot
}


func find(for b: Double) throws -> Double {
    
    for i in stride(from: 1, through: 10, by: 0.1) {
        let result:Double = Double(i) * Double(i)
        
        if b < 0 || b > 100 {
            throw calculationError.outOfBounds
        } else if result != Double(Int(result)) {
            throw calculationError.noRoot
        }
        if result == b {
            print(result, i)
        }
    }
    return 14
}

do {
    let result2 = try find(for: 4)
    print("The number is \(result2)")
} catch calculationError.outOfBounds {
    print("out of bounds")
} catch calculationError.noRoot {
    print("no root")
}






//
//var i5 = 1
//var result5 = 0
//var numara = 4
//
//while result5 < 100 {
//    result5 = i5 * i5
//    if result5 == numara {
//        print(result5, i5)
//    }
//    i5 += 1
//
//}
