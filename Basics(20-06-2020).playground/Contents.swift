import UIKit

var str = "Hello, playground"

//type safe exaple
//complie time it verfieis the data type mismatch
//str = 10

var str1: String?

var str2 = "Hai"
var str3:String?
//cant assign non optional value directly to assigned variable
//str2 = str1!
str3 = str1


let π = 3.14159



var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome is now "Bonjour!"


let languageName = "Swift"
//languageName = "Swift++"
// This is a compile-time error: languageName cannot be changed.



let cat = "🐱"; print(cat);print("hai")
// Prints "🐱"


//8 bit
let minValue = UInt8.min
let maxValue = UInt8.max

print("minValu",minValue)
print("maxValu",maxValue)


//32bit
let minValue32 = UInt32.min
let maxValue32 = UInt32.max

print("minValu",minValue32)
print("maxValu",maxValue32)


//8 64bit
let minValue64 = UInt64.min
let maxValue64 = UInt64.max

print("minValu",minValue64)
print("maxValu",maxValue64)



let anotherPi = 3 + 0.14159

var a = 10 + 12.5
let b = 12.5
let c = a + b


let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation



let decimal24 = 24

let binaryInteger24 = 0b11000       // 17 in binary notation
let octalInteger24 = 0o21           // 17 in octal notation
let hexadecimalInteger24 = 0x11     // 17 in hexadecimal notation


let cannotBeNegative: UInt8 = 1

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = three + Int(pointOneFourOneFiveNine)

typealias AudioSample = Int

let intergerValue:AudioSample = 30

let orangesAreOrange = true
let turnipsAreDelicious = false
if turnipsAreDelicious  {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
var ss = 100
if let sc = convertedNumber
{
ss = sc
}




let possibleNumberh = "hello"
var convertedNumberh = Int(possibleNumberh)

class ClasName:NSObject {
    var name = "hai"
}

var className = ClasName()
var className2:ClasName?

className2  = ClasName()

className2 = className

//className = className2!

if let classNames = className2 {
    print("className2 has value")
}else {
    print("className2 has no value")
}

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

//if let,guard


//var actualNumbers = Int(possibleNumberh)!

if let actualNumber = Int(possibleNumberh) {
    print("The string \"\(possibleNumberh)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumberh)\" could not be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"



let possibleString: String? = "An optional string."
var forcedString: String = possibleString! // requires an exclamation point

if let ps = possibleString {
    forcedString = ps
}

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamatio


let optionalString = assumedString

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
    
    if case pasrsingError.notValidFormat = error {
        print("it's expired")
    }
    // an error was thrown
    print("error happend", error.localizedDescription)
}





