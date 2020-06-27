import UIKit

var str = "Hello, playground"

var favoriteGenres:Set = ["bat","apple","dog","cat"]

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}


var numbers:Set = [10,6,1,3,5,8,4,2,10,6,1,3,5,8,4]

for numbervalue in numbers.sorted() {
    print("\(numbervalue)")
}


let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8,1]
var intersectionElements = oddDigits.intersection(evenDigits)
var asymetricElements = oddDigits.symmetricDifference(evenDigits)
var unionElements = oddDigits.union(evenDigits)

print("intersectionElements --->",intersectionElements)
print("asymetricElements --->",asymetricElements)
print("unionElements --->",unionElements.sorted())

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
print("dictionary ---->",airports)

var nullValue = airports["hai"]
print("nullValue ---->",nullValue)


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}
// Hello, Anna!
// Hello, Alex!
// Hello, Brian!
// Hello, Jack!

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}


for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}


for index in 1..<5 {
    print("\(index) less times 5 is \(index * 5)")
}


let minutes = 60

let minuteInterval = 3
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
    print("tickMark",tickMark)
}


let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
print("board",board)
print("board",board.count)
var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    print("square",square)

    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}

print("board",board)
print("Game over!")


let anotherPoint = (0, 2)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (10, 90)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where (x-y) > 0:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}


let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
// Prints "grtmndsthnklk"


func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    if let locations =  person["location"] {
        print("I hope the weather is nice near you.")
    } else {
        print("I hope the weather is nice near you.")

    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."
