//: [Previous](@previous)

import Foundation

let learnSwift = {
    print("Closures are like functions")
}
learnSwift()

let learnSwift1 = { () -> Void in
    print("Closures are like functions")
}

learnSwift1()

let learnSwift2 = { () -> () in
    print("Closures are like functions")
}

learnSwift2()

let learnSwift3: () -> () = {
  print("Closures are like functions")
}

learnSwift3()

let sayHello = { (name: String) in
    print("Hello, \(name)")
}
sayHello("WWH")

let sayHello1: (String) -> () = { name in
    print("Hello, \(name)")
}
sayHello1("YHG")

let sayHello2: (String) -> () = {
    print("Hello, \($0)")
}
sayHello2("SY")


let sayHelloMultiple = { (name: String, age: Int, score: Double) in
    print("\(name) is \(age) year old ,score is \(score)")
}

let sayHelloMultiple1: (String,Int,Double) -> Void = { name,age,score in
    print("\(name) is \(age) year old ,score is \(score)")
}

let sayHelloMultiple2: (String,Int,Double) -> () = {
    print("\($0) is \($1) year old ,score is \($2)")
}
 
sayHelloMultiple("WWH",35,87.0)
sayHelloMultiple1("WWH",35,87.0)
sayHelloMultiple2("WWH",35,87.0)


let sayHelloMore = { (name: String...) in
    print("Hello, \(name)")
}
sayHelloMore("XM","PED")

let sayHelloMore1:(String...) -> () = { (name: String...) in
    print("Hello, \(name)")
}
sayHelloMore1("WD","HDM", "XWQ")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let drivingWithReturn1:(String) -> String = {
    return "I'm going to \($0) in my car"
}

let drivingWithReturn2:(String) -> String = {
    "I'm going to \($0) in my car"
}

let drivingWithReturn3 = { (place: String) in
    return "I'm going to \(place) in my car"
}

let drivingWithReturn5 = { (place: String) in
    return "I'm going to \(place) in my car"
}

let drivingWithReturn4 = { (place: String) in
    "I'm going to \(place) in my car"
}
drivingWithReturn3("SuZhou")
drivingWithReturn4("SuZhou")

let multipleReturn = { () -> (String, Int) in
    return ("HCP", 29)
}

let user0 = multipleReturn()
print("\(user0.0),\(user0.1)")

let multipleReturn1 = { () -> (name: String, age: Int) in
    return ("HL", 19)
}

let user = multipleReturn1()
print("\(user.name),\(user.age)")


func play(using playType: () -> Void) {
    print("Let's play a game")
    playType()
}
play(using: {
    print("Fetch!")
})

func deliverTalk(name: String, type: () -> Void) {
    print("My talk is called \(name)")
    type()
}
deliverTalk(name: "My Awesome Talk", type: {
    print("Here's a great talk!")
})

deliverTalk(name: "My Awesome Talk") {
    print("Here's a great talk! Trailing closure")
}

func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}
repeatAction(count: 5) {
    print("Hello, world!")
}

func makePizza(addToppings: (Int) -> Void) {
    print("The dough is ready.")
    print("The base is flat.")
    addToppings(3)
}
makePizza { (toppingCount: Int) in
    let toppings = ["ham", "salami", "onions", "peppers"]
    for i in 0..<toppingCount {
        let topping = toppings[i]
        print("I'm adding \(topping)")
    }
}

makePizza {
    let toppings = ["ham", "salami", "onions", "peppers"]
    for i in 0..<$0 {
        let topping = toppings[i]
        print("I'm adding \(topping)")
    }
}

func playSong(_ name: String, notes: () -> String) {
    print("I'm going to play \(name).")
    let playedNotes = notes()
    print(playedNotes)
}
playSong("Mary Had a Little Lamb") {
    return "EDCDEEEDDDEGG"
}

let squared = { $0 * $0 }(12)
print(type(of: squared))


//: [Next](@next)
