import UIKit

var str = "Hello, playground"


//**** NOTE we need to find why string array is having different memory location for same reference when compared to int,float and custom class
//https://medium.com/@lucianoalmeida1/understanding-swift-copy-on-write-mechanisms-52ac31d68f2f
//COW
class testArray {
    
    init() {
        testMethod()
    }
    func testMethod(){
        var nameArray = ["Hai","Hello","GoodMorning"]
        var empNameArray = nameArray
        print(String(format: "%p", nameArray))
        print(String(format: "%p", empNameArray))
    }
}

var testClass = testArray()


func print(address o: UnsafeRawPointer ) {
    print(String(format: "%p", Int(bitPattern: o)))
}

var Intarray1: [Int] = [0, 1, 2, 3]
var Intarray2 = Intarray1
print("**********Int start ***********")

//Print with just assign
print(address: Intarray1) //0x600000078de0
print(address: Intarray2) //0x600000078de0

Intarray2.append(9)

//Print with just assign
print(address: Intarray1) //0x600000078de0
print(address: Intarray2) //0x600000078de0

print("**********Int End ***********")


//Float

var Floatarray1: [Float] = [0.0, 1.0, 2.0, 3.0]
var Floatarray2 = Floatarray1

print("**********Float start ***********")
//Print with just assign
print(address: Floatarray1) //0x600000078de0
print(address: Floatarray2) //0x600000078de0

Floatarray2.append(9)

//Print with just assign
print(address: Floatarray1) //0x600000078de0
print(address: Floatarray2) //0x600000078de0
print("**********Float end ***********")


class Emp {
    var empName:String = "Girish"
}

var emp1 = Emp()
var emp2 = Emp()
var emp3 = Emp()
var employees = [emp1,emp2]
var employeeConcat = employees //Same adddress



print("**********Custome class start ***********")
//Print with just assign
print(address: employees) //0x600000078de0
print(address: employeeConcat) //0x600000078de0

employeeConcat.append(emp3) //different address

//Print with just assign
print(address: employees) //0x600000078de0
print(address: employeeConcat) //0x600000078de0
print("**********Custom class end ***********")


var aString  = "hai"
var bstring = aString

//Print with just assign
print(address: aString)
print(address: bstring)
aString = "how r u?" + "jjjjjj"

print(address: aString)
print(address: bstring)


var aInt  = 0.5
var bInt = aInt

//Print with just assign
print(String(format: "%p", aInt))
print(String(format: "%p", bInt))
aInt = 9.5

print(String(format: "%p", aInt))
print(String(format: "%p", bInt))

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items.")
// someInts now contains 1 value of type Int
someInts = []
// someInts is now an empty array, but is still of type [Int]
print("someInts is of type [Int] with \(someInts.count) items.")


var shoppingList: [String] = ["Eggs", "Milk"]
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList[4...6] = ["Bananas", "Apples"]
print(shoppingList)
