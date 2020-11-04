//: [Previous](@previous)

import Foundation

let names = ["Zaphod", "Slartibartfast", "Trillian", "Ford", "Arthur", "Marvin"]
let sortedNames = names.sorted(by: <)

let sortedNames1 = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})
let sortedNames2 = names.sorted(by: { s1, s2 in
    return s1 < s2
})

let sortedNames3 = names.sorted(by: <)


func noAutoClosureFuction(closure:() -> (), msg: String) {
    print(msg)
    closure()
}

noAutoClosureFuction(closure: {
    print("print in closure")
}, msg: "print in function")

func autoClosureFuction(closure:@autoclosure () -> (), msg: String) {
    print(msg)
    closure()
}

autoClosureFuction(closure: print("print in closure"), msg: "print in function")

func autoTailClosureFuction(msg: String, closure: @autoclosure () -> (String)) {
    print(msg)
    let closureString = closure()
    print(closureString)
}
autoTailClosureFuction(msg: "print in function", closure:"print in closure")

func travel() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result = travel()

result("London")
result("London")
result("London")

//: [Next](@next)
