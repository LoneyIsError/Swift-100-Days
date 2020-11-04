/*:
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

import Foundation

for i in 0..<5 {
    print("\(i)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

for album in albums {
    print("\(album) is on Apple Music")
}
// 使用enumerated()可以帮助数组去获取
for (index, album) in albums.enumerated() {
    print("\(index) = \(album)")
}

// 字典
let scores = ["Bob": 42, "Alice": 99, "Jane": 13]

for (name, score) in scores {
    print("\(name)'s score is \(score)")
}

// 区间
for _ in 0..<5 {
    print("my name is iOS")
}

// [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55]
var result = Array<Int>()

for num in 0..<60 {
    if num % 5 == 0 {
        result.append(num)
    }
}

result = []
//半开区间
for num in stride(from: 0, to: 60, by: 5) {
    result.append(num)
}

// 闭区间
result = []
for num in stride(from: 0, through: 55, by: 5) {
    result.append(num)
}

for num in 0...0 {
    print("0...0 = \(num)")
}

for num in 0..<0 {
    print("0..<0 = \(num)")
}

let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

// MARK: - 控制转移语句
// MARK: - 带标签的语句
let lable1 = 10
let lable2 = 20
let label3 = 30
let label4 = 40

firstIf: if lable1 > 5 {
    secondIf: if lable2 > 15 {
        thirdIf: if label3 > 25 {
            print(label4)
        }
    }
}
// MARK: - break
let testScores = [100, 50, 80, 70, 40, 99, 88, 77]

var someOneIs100 = false

for score in testScores {
    if score == 100 {
        someOneIs100  = true
        break
    }
}

for i in 1...10 {
    var needBreak = false
    for j in 1...10 {
        let product = i * j
        if product == 30 {
            needBreak = true
            break
        }
    }
    if needBreak {
        break
    }
}

outerloop: for i in 1...10 {
    innerloop: for j in 1...10  {
        let product = i * j
        if product == 30 {
            break outerloop
        }
    }
}

label: for i in 1...10 {
    for j in 1...10 {
        print("i = \(i), j = \(j)")
        if i == 3 {
            break label
        }
    }
}

// MARK: - continue
for j in 1...2 {
    for i in 1...5 {
        if i == 4 {
            continue
        }
        print("i = \(i)")
    }
    print("j = \(j)")
}

outerloop: for j in 1...2 {
    innerloop: for i in 1...5 {
        if i == 4 {
            continue outerloop
        }
        print("i = \(i)")
    }
    print("j = \(j)")
}

