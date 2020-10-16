//: [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)

// MARK: - 数组

var someInts = [Int]()

var someInts1:[Int] = []

var someInts2 = Array<Int>()

var someInts3 = Array<Int>.init()

let someInts4 = Array.init(repeating: 1, count: 2)
let someInts5 = Array.init(repeating: 1, count: 3)

var someInts6 = someInts4 + someInts5

someInts6.append(2)
print(someInts6)
someInts6 += [1]
print(someInts6)
someInts6 += [1, 2, 1]
print(someInts6)

var strs = ["str1", "str2"] // 创建一个[String]的数组
