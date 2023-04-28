import UIKit

/*
 
 The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 
 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 
 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 
 If you can’t find the square root, throw a “no root” error.
 
 As a reminder, if you have number X, the square root of X will be another number that, when multiplied by itself, gives X. So, the square root of 9 is 3, because 3x3 is 9, and the square root of 25 is 5, because 5x5 is 25.
 
 */
enum calculationError: Error {
    case outOfBounds, noRoot
}

func sqrtNum(for num: Int) throws -> Int {
    
    if num < 1 || num > 10_000 {
        throw calculationError.outOfBounds
    }
    
    let doubleNum = Double(num)
    let result: Double = sqrt(doubleNum)
    
    if result != Double(Int(result)) {
        print(result)
        throw calculationError.noRoot
    } else {
        return Int(result)
    }
}

do {
    let result = try sqrtNum(for: 4)
    print("The number is \(result)")
} catch calculationError.outOfBounds {
    print("out of bounds")
} catch calculationError.noRoot {
    print("no root")
}

//....

func sqrtNum2(for num: Int) throws -> Int {
    
   
    if num < 1 || num > 10_000 {
        throw calculationError.outOfBounds
    }
    
    for i in 1...100 {
        if num == i * i {
            return i
        }
    }
    
    throw calculationError.noRoot
}

do {
    let result = try sqrtNum2(for: -1)
    print("The number is \(result)")
} catch calculationError.outOfBounds {
    print("out of bounds")
} catch calculationError.noRoot {
    print("no root")
}



func testSqrt(for num: Int) throws {
    
    for i in 1...100 {
        for j in 1...i {
            if i == j {
                let res = i * j
                if res == num{
                    print(i)
                }
               
            }
            
        }
    }
        
}

do {
    var a = try testSqrt(for: 4)
    print(a)
} catch calculationError.noRoot {
    print("No Root")
}

