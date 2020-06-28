import UIKit

var str = "Hello, playground"

//Using Sorted by
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella","Alex"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}


var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

//closure expression syntex {(paramater1,paramater2) -> (Bool) in (ststement)}

reversedNames = names.sorted(by: { (s1, s2) -> Bool in
  
    return s1 > s2
})

//Inferring Type From Context
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

//Implicit Returns from Single-Expression Closures
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )


//Shorthand Argument Names
reversedNames = names.sorted(by: {
    print($0)
    print($1)
    return $0 > $1
    
})

// (parrrrr) -> (return value) in

//Operator Methods
/*****
There’s actually an even shorter way to write the closure expression above. Swift’s String type defines its string-specific implementation of the greater-than operator (>) as a method that has two parameters of type String, and returns a value of type Bool.
 **/

reversedNames = names.sorted(by: >)
print("> arrrrrr sort",reversedNames)
reversedNames = names.sorted(by: <)
print("< arrrrrr sort",reversedNames)

//Trailing Closures

/******* If you need to pass a closure expression to a function as the function’s final argument and the closure expression is long, it can be useful to write it as a trailing closure instead ********/

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

// Here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

//1 6


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
// strings is inferred to be of type [String]
// its value is ["OneSix", "FiveEight", "FiveOneZero"]

print("string --->",strings)



