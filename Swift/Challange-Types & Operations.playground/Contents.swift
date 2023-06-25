import UIKit

/*
 Challenge 1: Calculate Area and Perimeter
 Write a function that takes the length and width of a rectangle as input and calculates its area and perimeter. Return the calculated values as a tuple.
 */
func areaAndPrimeter(width: Double, length: Double) -> (Double, Double) {
    return (width * length, 2 * (length + width))
}
//areaAndPrimeter(width: 3, length: 4)

//
func calculateRectangleProperties(width: Double, length: Double) -> (Double, Double) {
    let area = width * length
    let perimeter = 2 * (width + length)
    return (area, perimeter)
}

let rectangleWidth = 3.0
let rectangleLength = 4.0

let (area, perimeter) = calculateRectangleProperties(width: rectangleWidth, length: rectangleLength)
//print("Area: \(area)")
//print("Perimeter: \(perimeter)")


/*
 Challenge 2: Calculate BMI
 Write a function that takes a person's weight (in kilograms) and height (in meters) as input and calculates their Body Mass Index (BMI). Return the calculated BMI as a floating-point number.
 */

func BMI(weight: Double, height: Double) -> Double {
    weight / (height * height)
}

BMI(weight: 86, height: 1.8)

//

func calculateBMI(weight: Float, height: Float) -> Float {
    return weight / (height * height)
}

let weight: Float = 86.0  // Weight in kilograms
let height: Float = 1.8  // Height in meters

let bmi = calculateBMI(weight: weight, height: height)
//print("BMI: \(bmi)")


 /*
  Challenge 3: Calculate Compound Interest
 Write a function that calculates the compound interest earned on a principal amount, given the annual interest rate, the number of years, and the compounding frequency. Return the calculated compound interest as a floating-point number.
  */
 
func compoundInterest(amaunt: Double, interestRate: Double, compounded: Double, years: Double) -> Double {
    amaunt * pow((1 + interestRate / compounded), (compounded * years))
}

//compoundInterest(amaunt: 100, interestRate: 2.4, compounded: 5, years: 3)

//
func compoundInterest1(principal: Double, interestRate: Double, compoundPeriods: Int, years: Int) -> Double {
let rate = interestRate / 100
let base = 1 + rate / Double(compoundPeriods)
let exponent = Double(compoundPeriods * years)
let amount = principal * pow(base, exponent)
return amount
}

let principalAmount = 1000.0
let rateOfInterest = 5.0
let periodsPerYear = 12
let numberOfYears = 3

let result = compoundInterest1(principal: principalAmount, interestRate: rateOfInterest, compoundPeriods: periodsPerYear, years: numberOfYears)
//print(result)


/*
   Challenge 4: Convert Seconds to Hours, Minutes, and Seconds
 Write a function that takes a number of seconds as input and converts it into hours, minutes, and remaining seconds. Return the converted values as a tuple.
   */

func convertSeconds(seconds: Int) -> (Int, Int, Int) {
    let hours = seconds / 3600
    let minutes = (seconds % 3600) / 60
    let remainingSeconds = (seconds % 3600) % 60
    
    return(hours, minutes, remainingSeconds)
}

//convertSeconds(seconds: 3670)

/*
    Challenge 5: Validate Credit Card Number
 Write a function that takes a credit card number as a string and validates whether it is a valid credit card number using the Luhn algorithm. Return true if the credit card number is valid, and false otherwise.
 */

func validateCard(for number: String) -> Bool {
    var digits: [Int] = []
    
    for (index, digit) in number.enumerated() {
        if let intValue = Int(String(digit)) {
            if index % 2 != 0 {
                digits.append((intValue * 2 >= 10) ? (intValue * 2 - 9) : (intValue * 2))
            } else {
                digits.append(intValue)
            }
        }
    }
    
    let sum = digits.reduce(0, +)
    return sum % 10 == 0
}

validateCard(for: "79927398713") // This should now return true


validateCard(for: "79927398713")
validateCard(for: "4111111111111111")
validateCard(for: "5500000000000004")
validateCard(for: "378282246310005")
validateCard(for: "6011111111111117")
//validateCard(for: "45320151128336")


