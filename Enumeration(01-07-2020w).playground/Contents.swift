import UIKit

var str = "Hello, playground"


enum CompassPoint {
    case north
    case south
    case east
    case west
}


var directionToHead = CompassPoint.south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}


var compassValue = CompassPoint.north
print("compassValue",compassValue);


enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print("Planet",Planet.earth);


enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
// Prints "3 beverages available"

for beverageType in Beverage.allCases {
    print("beverageType",beverageType);
}



//Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
    case stringValdation
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = Barcode.qrCode("Hai")
productBarcode = Barcode.stringValdation
switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
case .stringValdation:
    print("stringValdation")
}
// Prints "QR code: ABCDEFGHIJKLMNOP."

//Raw Values

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

print("ASCIIControlCharacter",ASCIIControlCharacter.tab.rawValue)

enum Planets: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

print("Planets",Planets.mercury.rawValue)
    /*******  Associated values cant print the raw value         ********************/
//Associated values cant print the raw value
//print("Planets",Barcode.stringValdation.rawValue)
//Throws error as Value of type 'Barcode' has no member 'rawValue'
//print("Planets",Planet.mercury.rawValue)
//Throws error as Value of type 'Planet' has no member 'rawValue'
/***** ------------------------------****************************/

enum Planetss: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var mecr = Planetss.mars
//Initializing from a Raw Value
var venuss = Planetss(rawValue: 3)
print("venuss -->",venuss)

let positionToFind = 11
if let somePlanet = Planetss(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}



//Recursive Enumerations
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

//BODMAS LAW
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        print("Sum is --->")
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        print("multiplication is --->")
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))

