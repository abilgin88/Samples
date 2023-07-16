import UIKit

let string = "Mat"
for char in string { print(char)}
string.forEach { print($0) }

let stringLenght = string.count

//let fourthChar = string[3]

let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}"

cafeNormal.count
cafeCombining.count

cafeNormal.unicodeScalars.count
cafeCombining.unicodeScalars.count

for codePoint in cafeCombining.unicodeScalars {
    print(codePoint.value)
}

cafeNormal.unicodeScalars.forEach { print($0.value) }

let message = "Hello, Swift!"
let characters = Array(message)

let uppercaseMessage = message.uppercased()
let firstCharacter = message.first
let substring = message.prefix(5)
let companents = message.components(separatedBy: ",")

message.count
message.prefix(3)
message.suffix(4)
message.index(after: message.startIndex)
message.split(separator: ",")

for scalar in message.unicodeScalars {
    print(scalar.value)
}

var newMessage = ""
for scalar in message.unicodeScalars {
    print(scalar)
    newMessage += String(scalar)
    
}
print(newMessage)

let firstIndex = cafeCombining.startIndex
print(firstIndex)
let firstChar = cafeCombining[firstIndex]

let lastIndex = cafeCombining.endIndex
print(lastIndex)
//let lasrChar = cafeCombining[lastIndex]
let lastIndexNew = cafeCombining.index(before: cafeCombining.endIndex)
print(lastIndexNew)
let lastChar = cafeCombining[lastIndexNew]

let forthIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 3)
print(forthIndex)

let forthChar = cafeCombining[forthIndex]

forthChar.unicodeScalars.count

forthChar.unicodeScalars.forEach {
    print($0.value)
}

let firtsCharacter = message[message.startIndex]
let thirdCharacter = message[message.index(message.startIndex, offsetBy: 2)]
let lastCharacter = message[message.index(before: message.endIndex)]

let substring1 = message[message.index(message.startIndex, offsetBy: 7)...]

let range = message.index(message.startIndex, offsetBy: 7)..<message.endIndex
print(range)
let anotherSubstring = message[range]

cafeCombining.unicodeScalars.forEach {
    print($0.value)
}
cafeNormal.unicodeScalars.forEach {
    print($0.value)
}

let equal = cafeNormal == cafeCombining

let word = "Backwards"
for char in word.reversed() {
    print(char, terminator: "-")
}

let name = "Abdullah"
let backwardsName = name.reversed()

let secondCharIndex = backwardsName.index(backwardsName.startIndex, offsetBy: 1)
let secondchar = backwardsName[secondCharIndex]

let backwardsNameString = String(backwardsName)
backwardsNameString.forEach {
    print($0)
}

for character in message {
    print(character)
}

for character in message.reversed() {
    print(character)
}

let raw1 = #"Raw "No Escaping" \(no interpolation!). Use all the \ you want!"#
print(raw1)

let raw2 = ##"Aren’t we "# clever"##
print(raw2)

let can = "can do that too"
let raw3 = #"Yes we \#(can)!"#
print(raw3)

let multiRaw = #"""
  _____         _  __ _
 / ____|       (_)/ _| |
| (_____      ___| |_| |_
 \___ \ \ /\ / / |  _| __|
 ____) \ V  V /| | | | |_
|_____/ \_/\_/ |_|_|  \__|
"""#
print(multiRaw)

let fullName = "Abdullah Bilgin"
let spaceIndex = fullName.firstIndex(of: " ")!
let firstName = fullName[fullName.startIndex..<spaceIndex]
let fistName1 = fullName[..<spaceIndex]

let lastName = fullName[fullName.index(after: spaceIndex)...]
let lastName1 = fullName[spaceIndex ..< fullName.endIndex] //?
let lastName2 = fullName[spaceIndex...]

print(type(of: lastName))
let lastNameString = String(lastName)
print(type(of: lastNameString))

let singleCharcater: Character = "x"
singleCharcater.isASCII
let emojiCharacter: Character = "🥳"
emojiCharacter.isASCII
let space: Character = " "
space.isASCII

let hexDigit: Character = "d"
hexDigit.isHexDigit

let thaiNine: Character = "๙"
thaiNine.wholeNumberValue

let char2 = "\u{00bd}"
for i in char2.utf8 {
    print(i)
}

let characters1 = "+\u{00bd}\u{21e8}\u{1f643}"
for i in characters1.utf8 {
    print("\(i) : \(String(i, radix: 2))")
}

for i in characters1.utf16 {
    print("\(i) : \(String(i, radix: 2))")
}

let arrowIndex = characters1.firstIndex(of: "\u{21e8}")!
characters1[arrowIndex]

if let unicodeScalarsIndex = arrowIndex.samePosition(in: characters1.unicodeScalars) {
    characters1.unicodeScalars[unicodeScalarsIndex]
}

if let utf8Index = arrowIndex.samePosition(in: characters1.utf8) {
    characters1.utf8[utf8Index]
}

if let utf16Index = arrowIndex.samePosition(in: characters1.utf16) {
    characters1.utf16[utf16Index]
}

let str = "Merhaba, benim adım Ahmet"
let word2 = str.components(separatedBy: " ")
let joinedStr = word2.joined(separator: "-")

let str2 = "Bu bir ornek cumledir"
let searchTerm = "ornek"
if str2.contains(searchTerm) {
    let replacesstr = str2.replacingOccurrences(of: searchTerm, with: "harika")
    print(replacesstr)
}

let word11 = "café"
word11.forEach { print($0) }
word11.unicodeScalars.forEach { print($0)}

func charInString(for string: String) -> [Character: Int] {
    var countDictionary: [Character: Int] = [:]
    
    string.forEach {
        countDictionary[$0, default: 0] += 1
    }
    for (character, count) in countDictionary {
        let histogram = String(repeating: "#", count: count)
        print("\(character): \(histogram)")
    }
    return countDictionary
}
charInString(for: "abbdullaaa").sorted(by: {$0.value > $1.value})

func printCharacterCount(for string: String) {
    guard string.count > 0 else {
        print("Empty string")
        return
    }
    
    var counts: [Character:Int] = [:]
    for i in string {
        counts[i, default: 0] += 1
    }
    
    let sortedKeys = counts.keys.sorted { counts[$0]! > counts[$1]! }
    let max = counts[sortedKeys.first!]!
    
    for key in sortedKeys {
        let value = counts[key]!
        let widthOfHashes = (value * 20 ) / max
        let hashes = String(repeating: "#", count: widthOfHashes)
        print("\(key): \(hashes) \(value)")
    }
}
printCharacterCount(for: "")
printCharacterCount(for: "nnurrr")


func printCharacterCount1(_ str: String) {
    var characterCount: [Character: Int] = [:]
    
    // Count the occurrence of each character in the string
    for char in str {
        characterCount[char, default: 0] += 1
    }
    
    // Sort the characters based on their count in descending order
    let sortedCharacters = characterCount.sorted { $0.value > $1.value }
    
    // Find the maximum count to determine the scale of the histogram
    guard let maxCount = sortedCharacters.first?.value else {
        return
    }
    
    // Print the character count and histogram
    for (char, count) in sortedCharacters {
        let histogram = String(repeating: "#", count: count)
        let padding = String(repeating: " ", count: maxCount - count)
        print("\(char): \(histogram)\(padding) (\(count))")
    }
}
printCharacterCount1("Abdullah")

func wordsInString(for string: String) -> Int {
    guard string.count > 0 else {
        print("Empty String")
        return 0
    }
    var wordCount = 0
    var isWord = false
    
    
    for character in string {
        if character.isLetter {
            if !isWord {
                isWord = true
                wordCount += 1
            }
        } else {
            isWord = false
        }
    }
    
    return wordCount
}

wordsInString(for: "Abdullah bilgin lives here!")

func numberOfWords1(in sentence: String) -> Int {
    var count = 0
    var inWord = false
    
    for character in sentence {
        if character == " " {
            if inWord {
                count += 1
            }
            inWord = false
        } else {
            inWord = true
        }
        
    }
    if inWord {
        count += 1
    }
    
    return count
    
}
let wordCount = numberOfWords1(in: "The quick brown fox jumps over the lazy dog")
print(wordCount)

func reversedSentence(for sentence: String) -> String {
    let spaceIndex = sentence.firstIndex(of: " ")!
    let firstName = sentence[sentence.startIndex..<spaceIndex]
    let lastName = sentence[sentence.index(after: spaceIndex)...]
    var name = String(lastName) + " " + String(firstName)
    return name
}

reversedSentence(for: "Galloway, Matt")
reversedSentence(for: "Bilgin, Abdullah")

func sanitized(name: String) -> String? {
    guard let indexOfComma = name.firstIndex(of: ",") else {
        return nil
    }
    
    let lastNameSubstring = name[..<indexOfComma]
    let firstNameSubstring = name[indexOfComma...].dropFirst(2)
    
    return firstNameSubstring + " " + lastNameSubstring
    
}

if let sanitizedName = sanitized(name: "Galloway, Matt") {
    print(sanitizedName)
}

"Abdullah Bilgin".components(separatedBy: "a")

func companents(for sentances: String, sperate: Character) -> [String] {
    var arr: [String] = []
    var word = ""
    
    var indexS = sentances.firstIndex(of: sperate)
    print(sentances[indexS!])
    
    for index in sentances.indices {
        
        if sentances[index] == sperate {
            arr.append(word)
            word = ""
        } else {
            word += String(sentances[index])
        }
    }
    arr.append(word)
    print(word)
    return arr
}

companents(for: "Abdullah is studying swift", sperate: " ")
companents(for: "Dog,Cat,Badger,Snake,Lion", sperate: ",")


func components1(for sentence: String, separate: Character) -> [String] {
    var arr: [String] = []
    var word = ""
    
    for index in sentence.indices {
        let currentChar = sentence[index]
        
        if currentChar == separate {
            if !word.isEmpty {
                arr.append(word)
                word = ""
            }
        } else {
            word.append(currentChar)
        }
    }
    
    if !word.isEmpty {
        arr.append(word)
    }
    
    return arr
}

let sentence = "Abdullah is studying swift"
let sentence1 = "Dog,Cat,Badger,Snake,Lion"
let components = components1(for: sentence, separate: " ")
let components11 = components1(for: sentence1, separate: ",")
print(components1)

func splitting(_ string: String, delimiter: Character) -> [String] {
    var returnArray: [String] = []
    var lastWordIndex = string.startIndex
    
    for i in string.indices {
        if string[i] == delimiter {
            let substring = string[lastWordIndex..<i]
            returnArray.append(String(substring))
            lastWordIndex = string.index(after: i)
        }
    }
    
    let substring = string[lastWordIndex..<string.endIndex]
    returnArray.append(String(substring))
    
    return returnArray
}
let pieces = splitting("Dog,Cat,Badger,Snake,Lion", delimiter: ",")
print(pieces)

func wordReverser(for string: String, seperate: Character) -> String {
    var array = components1(for: string, separate: seperate)
    var newArr: [String]  = []
    var str = ""
    for a in array.indices {
        newArr.append((String(array[a].reversed())))
    }
    print(newArr)
    for i in newArr {
       str += i + String(seperate)
    }
    return str
}

wordReverser(for: "My dog is called Rover", seperate: " ")


func reversedByWord(sentences: String) -> String {
    var reversedWord = ""
    var lastWordIndex = sentences.startIndex
    
    for i in sentences.indices {
        if sentences[i] == " " {
            let substring = sentences[lastWordIndex..<i]
            reversedWord += String(substring.reversed()) + " "
            lastWordIndex = sentences.index(after: i)
        }
    }
    
    let substring = sentences[lastWordIndex..<sentences.endIndex]
    reversedWord += substring.reversed()
    
    return reversedWord
}
let reversed = reversedByWord(sentences: "The quick brown fox jumps over the lazy dog")
