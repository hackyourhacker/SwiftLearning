import UIKit

var str = "Hello, playground"


struct PenPalRecord {
    let myID: Int
    var myNickname: String
    var recommendedPenPalID: Int
}

var penStruct = PenPalRecord(myID: 10, myNickname: "Emp", recommendedPenPalID: 20200703);



class PenPalRecordClass {
    let myID: Int
    var myNickname: String
    var recommendedPenPalID: Int
    
    init(myId:Int,myNickname:String,recommendedPenPalID:Int){
        self.myID = myId
        self.myNickname = myNickname
        self.recommendedPenPalID = recommendedPenPalID;
    }
}

var penClass = PenPalRecordClass(myId: 10, myNickname: "Emp", recommendedPenPalID: 20200703);

var penClassRef = penClass
penClassRef.myNickname = "NewName"
print("penClass ----> Original",penClass.myNickname)
print("penClass ----> Updated",penClassRef.myNickname)


var penStructRef = penStruct
penStructRef.myNickname = "Newstruct"

print("penStruct ----> Original",penStruct.myNickname)
print("penStruct ----> updated",penStructRef.myNickname)


///Struct Advantages
//Creates COPY for the assigned variable
//The memory for the STRUCT will be in STACK and not in HEAP
// Swift value types are kept in the stack. In a process, each thread has its own stack space, so no other thread will be able to access your value type directly. Hence no race conditions, locks, deadlocks or any related thread synchronization complexity.

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
  
}

let vga = Resolution(width: 640, height: 480)
let videoMode = VideoMode()
videoMode.name = "Hai"

//All of the basic types in Swift Swift—integers, floating-point numbers, Booleans, strings, arrays and dictionaries
//All structures and enumerations are value types in Swif
enum CompassPoint {
    case north, south, east, west
   mutating  func turnNorth() {
      //  self = .north
        self = .north
    }
}


var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
 //Prints "The current direction is north"
// Prints "The remembered direction is west"


//Classes Are Reference Types
let tenEighty = VideoMode()
let hd = Resolution(width: 1920, height: 1080)
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
alsoTenEighty.resolution = Resolution(width: 2084, height: 1080)

print("tenEighty \(Unmanaged.passUnretained(tenEighty).toOpaque())")
print("alsoTenEighty \(Unmanaged.passUnretained(alsoTenEighty).toOpaque())")

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}


struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// the range represents integer values 0, 1, and 2
rangeOfThreeItems.firstValue = 6
//rangeOfThreeItems.length = 8
// the range now represents integer values 6, 7, and 8


let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// this range represents integer values 0, 1, 2, and 3
//rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property


class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // the DataManager class would provide data management functionality here
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property has not yet been created


struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"


//Read-Only Computed Properties
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
var fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// Prints "the volume of fourByFiveByTwo is 40.0"
//fourByFiveByTwo.volume = 88.0

//Property Observers

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps

//Property Wrappers
/*
//@propertyWrapper
struct TwelveOrLess {
    
    private var number: Int
    
    init() { self.number = 0 }
    
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
    
} */

@propertyWrapper
struct TwelveOrLess {
    private var number: Int
    init() { self.number = 0 }
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height)
// Prints "0"

rectangle.height = 10
print(rectangle.height)
// Prints "10"

rectangle.height = 24
print(rectangle.height)
// Prints "12"

//Setting Initial Values for Wrapped Properties

@propertyWrapper
struct SmallNumber {
    private var maximum: Int
    private var number: Int

    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, maximum) }
    }

    init() {
        maximum = 12
        number = 0
    }
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}

///


struct AudioChannel {
    static var thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var maxtestValue = 10
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}


