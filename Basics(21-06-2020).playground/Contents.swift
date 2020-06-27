import UIKit

var str = "Hello, playground"

enum pasrsingError:Error {
    case parsedError
    case notValidFormat
}
func canThrowAnError() throws {
    // this function may or may not throw an error
    var possibleString: String? = "hai"
    var assumedString = possibleString!
    //possibleString = nil
           
       if let ssss = possibleString {
        if(ssss.count < 5) {
            throw pasrsingError.notValidFormat
            return
        }
           assumedString = possibleString!
       } else {
           throw pasrsingError.parsedError
       }
    
    if let ssss = possibleString {
        assumedString = possibleString!
    } else {
        throw pasrsingError.parsedError
    }
}
do {
    try canThrowAnError()
    // no error was thrown
} catch let error {
    
    switch(error) {
    case pasrsingError.notValidFormat:
        print("it's expired")
    default:
      print("it's expired")

    }
    // an error was thrown
    print("error happend", error.localizedDescription)
}


let age = -3
//assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >= 0.
var index = 1
precondition(index > 0, "Index must be greater than zero.")

let (x, y) = (1, 2)
print(x)
print(y)

(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
(1, 4) < (2, 3)   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

var names = ["ios","Android","windows","Linux","Mac","webos","chrome"]

for name in names[2...] {
    print("1st --- \(name)")
}
// Brian
// Jack

for name in names[...2] {
    print("2nd --- \(name)")
}

for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein(Atchi)"

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#


var str1 = "Great"
var str2 = "Atchi babu"
var str3 = str1 + " " + str2


var str4 = "Atchi babu is Great"
str4 = str1
str1 = "changed value"

print("str1 \(str1)")
print("str4 \(str4)")
print(String(format: "%p", str1))
print(String(format: "%p", str4))
//str4 = str1
//print(String(format: "%p", str1))
//print(String(format: "%p", str4))

var objString1:NSString = NSString()
objString1 = "hai"

var objString2:NSString = NSString()
objString2 = "hai2"
objString1 = objString2

print("objString1 \(objString1)")
print("objString2 \(objString2)")
print(String(format: "%p", objString1))
print(String(format: "%p", objString2))

