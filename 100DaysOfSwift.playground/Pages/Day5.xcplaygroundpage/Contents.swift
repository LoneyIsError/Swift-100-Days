//: [Previous](@previous)

import Foundation

// MARK: - 函数的参数与返回值

func noParameter() {
    
}

func noParameter1() -> () {
    
}

func noParameter12() -> Void {
    
}

func greetUser(name: String) {
    print("Hello,\(name)!")
}

greetUser(name: "LiAn")

func greetUserM(name:String, age:Int) {
    var userage = age
    if age < 0 {
      userage = 0
    }
    print("\(name) is \(userage) year old")
}
greetUserM(name: "LiAn", age: 18)

func sum(with a :Int, and b:Int) -> Int {
    return a + b
}

sum(with: 2, and: 3)

func sum1(_ a :Int, _ b:Int) -> Int {
    return a + b
}

sum1(2, 3)

func sum2(with a :Int = 7, and b:Int = 8) -> Int {
    return a + b
}

sum2(with: 2, and: 3) // 5
sum2(with: 2) // 10
sum2(and: 3) // 10
sum2() // 15

func sum3(of numbers:Int...) {
    var result = 0
    for num in numbers {
        result += num
    }
    print("The sum of numbers is \(result)")
}
sum3(of: 1, 2, 3, 4, 5, 6, 7, 8)

func process(name: inout String) {
    name = "ZhiBei"
}
var userName = "LiAN"
process(name: &userName)
print(userName)


func changeName(_ name: String) -> String {
    name
}
changeName("")

func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 8)

func setUser(name: String, age: Int) -> (String, Int) {
    
    let userName =  name + name
    
    var userage = age
    if age < 0 {
        userage = 0
    }
    
    return (userName, userage)
}
let user = setUser(name: "Jack", age: -2)
print(user.0)
print("You have \(user.1) coins left")

func setUser1(name: String, age: Int) -> (name: String, age: Int) {
    let userName =  name + name
    var userage = age
    if age < 0 {
        userage = 0
    }
    return (userName, userage)
}
let user1 = setUser1(name: "Jack", age: -2)
print(user1.name)
print("\(user1.age) year old")

func setUser2(name: String, age: Int) -> (name: String, age: Int) {
    (userName, age)
}
let user2 = setUser2(name: "Jack", age: -2)
print(user1.name)
print("\(user1.age) year old")


// MARK: - 定义抛出一个异常的函数

enum PlayError: Error {
    case cheating
    case noPlayers
}
func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}

enum LoginError: Error {
    case unknownUser
}
func authenticate(username: String) throws {
    if username == "Anonymous" {
        throw LoginError.unknownUser
    }
    print("Welcome, \(username)!")
}

enum ArrayError: Error {
    case negateIndex
}
func readItem(_ index: Int, from array: [String]) throws -> String {
    if index < 0 {
        throw ArrayError.negateIndex
    }
    return array[index]
}

enum PasswordError: Error {
    case unLegitimate
}

func checkPassword(_ password: String) throws {
    if password.count == 0 {
        throw PasswordError.unLegitimate
    }
    print("password is legitimate")
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


//: [Next](@next)
