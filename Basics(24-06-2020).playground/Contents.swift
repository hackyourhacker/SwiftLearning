import UIKit

var str = "Hello, playground"


func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}

someFunction(10, secondParameterName: 20)


func someFunctions(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}

someFunctions(firstParameterName: 10, secondParameterName: 10)


func DefaultParamater(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}

DefaultParamater(parameterWithoutDefault: 18)
DefaultParamater(parameterWithoutDefault: 20, parameterWithDefault: 12)

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers


func arithmeticMeans(_ numbers: String...) -> String {
    var total: String = ""
    for number in numbers {
        total += number
    }
    return total
}
arithmeticMeans("1", "2", "3", "4", "5")
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMeans("3", "8.25", "18.75")
// returns 10.0, which is the arithmetic mean of these three numbers


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 10
var b = 20

swap(&a, &b)
print("a",a)
print("b",b)



func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
var mathFunction: (Int, Int) -> Int = addTwoInts

mathFunction(10,20)

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    
    func stepForward(input: Int) -> Int {
        print("stepForward input",input)
        return input + 1
        
    }
    func stepBackward(input: Int) -> Int {
        print("stepBackward input",input)
        return input - 1
    }
    
    return backward ? stepBackward : stepForward
}
var currentValue = 4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
// -4...
// -3...
// -2...
// -1...
// zero!



//Closures

let names = ["Ajay", "Girish", "Bala","Hello"]

func backward(_ s1: String, _ s2: String) -> Bool {
    print("s1 --> \(s1)")
    print("s2 --> \(s2)")
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print("reverse name",reversedNames)


