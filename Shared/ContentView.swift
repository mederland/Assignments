//
//  ContentView.swift
//  Shared
//
//  Created by Consultant on 6/29/22.
//

import UIKit


// Hello World function
func helloWorld() {
    let helloWord = "Hello World"
    print(helloWord)
}

//helloWorld()


// var vs let

func varVsLet() {
    let constantString = "This is a constant string"
    var mutableString = "This is a mutable string"
    
    print(constantString)
    print(mutableString)
    
//    constantString = "something else"
    mutableString = "something else"
    print(mutableString)
    
}

//varVsLet()

// Basic Data types
func basicDataTypes() {
    var str: String = "String"
    var char: Character = "A"
    var bool: Bool = true
    var int: Int = 9
    var intAlt: Int64 = 89236427836127931
    var double: Double = 4.56789
    var float: Float = 3.14
    var arr: [Int] = [1,4,6,7,3,3,6,7,7,4]
    var dictionary: [String: Int] = ["One": 1, "Two": 2, "Three": 3]
    var set: Set<String> = Set<String>(arrayLiteral: "one", "two", "three")
}

// Intro to Optionals
func introToOptionals() {
    let constantOpt: Int?
    var mutableOpt: String?
    
    constantOpt = 0
    
    print(mutableOpt)
    mutableOpt = "sasd"
    print(mutableOpt)
    mutableOpt = nil
    print(mutableOpt)
}

//introToOptionals()


// Class and Structs

class MyClass {
    
    var myStr: String
    let myBool: Bool
    var myArr: [Int] = [1,2,3]
    var myChar: Character?
    
    init(str: String, bool: Bool) {
        self.myStr = str
        self.myBool = bool
    }
    
    func printValues() {
        print("arr: \(myArr)")
        self.printOtherValues()
    }
    
    private func printOtherValues() {
        print(myStr)
        print(self.myBool)
        print(self.myChar)
        
    }
    
}

let example = MyClass(str: "asdad", bool: true)
//example.printValues()
//example.prin


// Access Levels

// FilePrivate - Can access elements in the same file
// Private - Only accessible in the object itself
// Internal - default, only accessible in the same bundle
// Public - It is accessible outside the bundle
// Open - Everything public is, but allows subclassing and overriding

struct MyStruct {
    
    var myStr: String
    var myBool: Bool
    var myArr: [Int] = [1,2,3]
    var myChar: Character?
    
    init(str: String, bool: Bool) {
        self.myStr = str
        self.myBool = bool
    }
    
    func printValues() {
        print("arr: \(myArr)")
        self.printOtherValues()
    }
    
    private func printOtherValues() {
        print(myStr)
        print(self.myBool)
        print(self.myChar)
        
    }
    
}

var ex = MyStruct(str: "lkasdkajsbd", bool: true)
//var ex = MyStruct(myStr: <#T##String#>, myBool: <#T##Bool#>, myArr: <#T##[Int]#>, myChar: <#T##Character?#>)
//ex.printValues()


func classVsStruct() {
    let myClass = MyClass(str: "sdads", bool: true)
//    myClass = MyClass(str: "asdas", bool: false)
    myClass.myStr = "hhhhhhhhhhhhhh"
//    myClass.myBool = false
    
    var myStruct = MyStruct(str: "kjasdkajsd", bool: false)
    myStruct.myStr = "Hello World"
    
    let otherClass = myClass
    otherClass.myStr = "wwwwwwwww"
    
    print(myClass.myStr)
    print(otherClass.myStr)
    
    var otherStruct = myStruct
    otherStruct.myStr = "No worlds allowed"
    
    print(myStruct.myStr)
    print(otherStruct.myStr)
}


//classVsStruct()

// Pass By Value vs Pass by Reference

func doSomething(param: Int) -> Int {
    let s = param + 2
    return s
}

func doSomething2(param: inout Int) -> Int {
    param += 2
    return param
}

//var num = 5
//let result1 = doSomething(param: num)
//print(num)
//print(result1)
//
//let result2 = doSomething2(param: &num)
//print(num)
//print(result2)


// Enums
enum MyEnum: Int {
    case north = 20
    case south
//    case south(MyClass)
    case east
    case west = 33
//    case west(Int, String, Bool)
    
    var example: Int {
        return add(lhs: 5, rhs: 2)
    }
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
}

func enumCheck() {
    let e = MyEnum.north
//    let e2 = MyEnum.west(5, "alksdhkajsbd", false)
    let e2 = MyEnum.west
    
    print(e.rawValue)
    print(e2.rawValue)
    
    
//    switch e2 {
//    case .west(let num, let str, let bool):
//        print(num + 4)
//    default:
//        print("nothing")
//    }
    
    
}

//enumCheck()

// Tuples

func tuples() {
    let tuple1 = (5, "hello", 4.67)
    print(tuple1)
    print(tuple1.2)
    
    let tuple2 = (num: 5, str: "hello", decimal: 4.67)
    print(tuple2)
    print(tuple2.decimal)
    
//    var tuple3: (Int, String, String)? = tuple2
}

//tuples()

enum SmallEx {
    case a(Int)
    case b(String)
}

func basicLogic() {
    
    let value = 5
    let str: String? = "Hello"
    
    // If
//    if value == 10, str == "Hello" {
//        print("Success")
//    } else if value == 5, str == "Hello" {
//        print("Kool Bean")
//    } else {
//        print("failure")
//    }
    
    let a = SmallEx.a(50)
    // Switch
//    switch a {
//    case .a(let val) where val == 45 :
//        print("first")
//    case .a:
//        print("first and a half")
//    case .b(let val2):
//        print("second")
//    default:
//        print("other")
//    }
    
//    switch value {
//    case 0:
//        print("zero")
//    case 1:
//        print("one")
//    case 2:
//        print("two")
//    default:
//        print("other")
//    }
    
    let arr = [2,4,6,3,1,5,78,9,4,2]
    
    // For Loops
//    for element in 0..<value {
//        print(element)
//    }
//    for element in arr {
//        print(element)
//    }
//    for index in 0..<arr.count {
//        print(arr[index])
//    }
    
    
    // While
    var counter = 0
    while counter < 10 {
        print(counter)
        counter += 1
    }
    
    repeat {
        
    } while counter < 10
    
    
}

basicLogic()
