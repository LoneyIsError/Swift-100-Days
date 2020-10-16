
/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 */

// MARK: - 变量和常量

let maximumNumberOfLoginAttempts = 10
type(of: maximumNumberOfLoginAttempts)
var currentLoginAttempt = 0
type(of: currentLoginAttempt)

var globalVariable = "someString"

var foo = "foo" // global variable

class Foobar {
    static var foo = "foo1" // local variable -> declared inside Foobar type context
    var bar = "bar" // local variable -> declared inside Foobar type context
    func foobar() {
        var foo = "foo2" // local variable -> declared inside method
        print(Foobar.foo)
        print(foo)
    }

    
}
print(foo)
Foobar.init().foobar()

// MARK: - 字符串和数字
/// 初始化或定义一个字符串

let someString = "Some string constant"
var someVariableString = "Some string variable"

var string = String.init(), string2 = String()
var string1 = String.init(repeating: "a", count: 10)

/// 多行字符串字面量
let quotation = """
The White Rabbit put on his spectacles.
"Where shall I begin,please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(softWrappedQuotation)
/// 字符串字面量中的特殊字符
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imageination is more important than knowledge" - Enistein
let dollarSign = "\u{24}"             // $，Unicode 标量 U+0024
let blackHeart = "\u{2665}"           // ♥，Unicode 标量 U+2665
let sparklingHeart = "\u{1F496}"      // 💖，Unicode 标量 U+1F496

/// 连接字符
var hello = "hello"
let world = "world"
let helloWorld = hello + world
hello.append(world)

/// 拼接
let name = "Zhang San"
let score = 98

let des = "\(name) got \(score) point"

// Mark: - 数字

print(
    """
    Int.min = \(Int.min)
    Int.max = \(Int.max)
    Int8.min  = \(Int8.min)
    Int8.max  = \(Int8.max)
    Int16.min = \(Int16.min)
    Int16.max = \(Int16.max)
    Int32.min = \(Int32.min)
    Int32.max = \(Int32.max)
    Int64.min = \(Int64.min)
    Int64.max = \(Int64.max)
    UInt.min = \(UInt.min)
    UInt.max = \(UInt.max)
    UInt8.min = \(UInt8.min)
    UInt8.max = \(UInt8.max)
    UInt16.min = \(UInt16.min)
    UInt16.max = \(UInt16.max)
    UInt32.min = \(UInt32.min)
    UInt32.max = \(UInt32.max)
    UInt64.min = \(UInt64.min)
    UInt64.max = \(UInt64.max)
"""
)

let scoreType = 32.0
type(of: scoreType)

let scoreFloat: Float = 10 / 3.0

let scoreDouble = 10 / 3.0
print(scoreDouble)

// 整数17
let number10 = 17
let number2  = 0b10001
let number8  = 0o21
let number16 = 0x11

let numberE = 1.25e2 // 1.25 × 10^2 125.0
let numberE1 = 1.25e-2 // 1.25 × 10^-2 0.0125

let numberP = 0xFp2 // 15 × 2^2 60.0
let numberP1 = 0xFp-2 // 15 × 2^-2 3.75

var number: Double = 1_000_000
number = 001_000_000.000_000_000_1

// Mark: - 布尔值

let isA = true

if isA {
    print("is A")
}else {
    print("is Not A")
}

let A:Int
A = 1

