import UIKit
//: How to use a for loop to repeat work
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

for name in platforms {
    print(name)
}

for rubberChicken in platforms {
    print(rubberChicken)
}

for platform in platforms {
    print(platform)
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    print()
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)" )
}

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "haters gonna"

for _ in 1...5 {
    lyric += " hate"
}
print(lyric)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent!")
}

print(names[0])
print(names[1...3])
print(names[1...])
print(names[1..<names.count])

//: How to use a while loop to repeat work
var countdown =  10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")

//:How to skip loop items with break and continue
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]
for filename in filenames {
    if filename.hasSuffix("jpg") == false {
        continue
    }
    
    print("Found picture \(filename)")
}
//:
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...1000_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
    }
    
    if multiples.count == 10 {
        break
    }
}
print(multiples)

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }
    count += 1
}

print("You had \(count) scores before you got 0.")
//:
//:Checkpoint 3
//for i in 1...100 {
//    if i % 3 == 0 && i % 5 == 0 {
//        print("\(i) -FizzBuzz")
//    } else if i % 3 == 0 {
//        print("\(i) -Fizz")
//    } else if i % 5 == 0 {
//        print("\(i) -Buzz")
//    } else {
//        print(i)
//    }
//}

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("\(i) -FizzBuzz")
    } else if i.isMultiple(of: 5){
        print("\(i) -Fizz")
    } else if i.isMultiple(of: 3) {
        print("\(i) -Buzz")
    } else {
        print(i)
    }
}
