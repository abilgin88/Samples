import Foundation

/*
 Challenge 1: Leap Year
 Write a function that takes a year as input and determines if it's a leap year or not. A leap year is divisible by 4, but not divisible by 100 unless it's also divisible by 400.
 */

func isLeapYear(_ year: Int) -> Bool {
    if year % 4 == 0 && year % 100 != 0 {
        return true
    } else if year % 400 == 0 {
        return true
    } else {
        return false
    }
}

isLeapYear(2000) // Output: true

/*
 Challenge 2: Temperature Conversion
 Write functions to convert temperatures between Celsius and Fahrenheit. Implement functions to convert from Celsius to Fahrenheit and from Fahrenheit to Celsius.
 */

func convertTemp(_ from: String, value: Double) -> (Double, String) {
    switch from {
    case "C":
        let convertedValue = (value * 9/5) + 32
        return (convertedValue, "F")
    case "F":
        let convertedValue = (value - 32) * 5/9
        return (convertedValue, "C")
    default:
        return (0, "Invalid")
    }
}
convertTemp("C", value: 100)

/*
 3. Challenge 3: Phone Book
 Create a phone book dictionary where the keys are people's names and the values are their phone numbers. Implement functions to add a contact, remove a contact, and retrieve a contact's phone number.
 
 */

var phoneBook: [String: String] = [:]

func phoneBook(name: String, number: String, type: String) {
    
    var numberS = "No Number"
    if let contact = phoneBook[name] {
        numberS = contact
    }
    
    switch type {
    case "Add":
        phoneBook.updateValue(number, forKey: name)
        print("The contack added: \(name) - \(number)")
        
        
    case "Remove":
        phoneBook.removeValue(forKey: name)
        print("The contack remove: \(name) - \(number)")
        
    case "Retrive":
       print(phoneBook)
        print("The contack number:  \(numberS)")
        
    default:
        print("Invilid request")
    }
}
phoneBook(name: "Abdullah", number: "7719710358", type: "Add")
phoneBook(name: "Orhan", number: "7719710358", type: "Add")
phoneBook(name: "Orhan", number: "7719710358", type: "Remove")
phoneBook(name: "Orhan", number: "", type: "Retrive")
phoneBook(name: "Abdullah", number: "7719710358", type: "dsds")


/*
 Challenge 4: Vote Tally
    Given an array of strings representing votes, write a function that tallies the votes and returns a dictionary containing the count of each vote.
 */

var votes: [String] = ["Abdullah", "Abdullah", "Nurdan", "Nurdan", "Orhan", "Ceylan"]

func voteTally(array: [String]) -> [String: Int] {
    var tally: [String: Int] = [:]
    
    for vote in array {
        tally[vote, default: 0] += 1
    }
    
    return tally
}

voteTally(array: votes)



/*
 Challenge 5: Birthday Calendar
    Create a dictionary to store people's names and their corresponding birth dates. Implement functions to add a person's birthday, remove a person's birthday, and retrieve a person's birth date.
 */
var birthdayBook: [String: String] = [:]

func birthdayBook(name: String, birthday: String, type: String) {
    var birthdayString = "No Birthday"
    if let contact = birthdayBook[name] {
        birthdayString = contact
    }
    
    switch type {
    case "Add":
        birthdayBook.updateValue(birthday, forKey: name)
        print("The contact added: \(name) - \(birthday)")
        
    case "Remove":
        birthdayBook.removeValue(forKey: name)
        print("The contact removed: \(name) - \(birthday)")
        
    case "Retrieve":
        print(birthdayBook)
        print("The contact birthday: \(birthdayString)")
        
    default:
        print("Invalid request")
    }
}

birthdayBook(name: "Abdullah", birthday: "16-07-1988", type: "Add")
birthdayBook(name: "Orhan", birthday: "31-01-2017", type: "Add")
birthdayBook(name: "Orhan", birthday: "", type: "Remove")
birthdayBook(name: "Orhan", birthday: "", type: "Retrieve")
birthdayBook(name: "Abdullah", birthday: "7719710358", type: "dsds")
