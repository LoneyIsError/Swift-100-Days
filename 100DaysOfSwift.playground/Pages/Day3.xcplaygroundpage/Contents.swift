//: [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)

import Foundation
import UIKit

// MARK: - 算术运算符

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

let douN = 10.1
let intN = 10

let number = 465
let isMultiple = number.isMultiple(of: 7)

// MARK: - 组合赋值运算符

var score = 95
score -= 5
score += 10

// MARK: - 比较运算符

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

let firstTuple = (1, "a", 2, "b")
let secondTuple = (1, "a", 3, "a")

let firstDate = Date.init(timeIntervalSince1970: 1000)
let secondDate = Date.init(timeIntervalSince1970: 2000)


print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

print(firstTuple == secondTuple)
print(firstTuple != secondTuple)
print(firstTuple < secondTuple)
print(firstTuple >= secondTuple)

print(firstDate == secondDate)
print(firstDate != secondDate)
print(firstDate < secondDate)
print(firstDate >= secondDate)

//enum Sizes: Comparable {
//    case small
//    case medium
//    case large
//}
//
//let first = Sizes.small
//let second = Sizes.large
//print(first < second)

// MARK: - 条件语句（Conditionals）

let firstNum = 11
let secondNum = 12

if  firstNum + secondNum == 23 {
  print("23")
} else if  firstNum > 10 {
  print("大于 10")
} else {
  print("😋")
}

var isPresident = true
var threatLevel = 7
var officerRank = 3

if (threatLevel > 5 && officerRank >= 3) || isPresident
{
    print("FIRE ROCKETS!!!")
}

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

let range = ..<5
range.contains(-1)

let range1 = 2...

type(of: range)
type(of: range1)


let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(type(of: names[1...]))

let stringRange = "a"..."z"
stringRange.contains("Z")

let dateRange = Date(timeIntervalSince1970: 1000)...Date(timeIntervalSince1970: 10000)
dateRange.contains(Date(timeIntervalSince1970: 5000))
let indexRange = IndexPath(item: 0, section: 0)..<IndexPath(item: 10, section: 0)
indexRange.contains(IndexPath(item: 10, section: 0))
