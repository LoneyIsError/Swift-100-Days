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

var someInts7 =  [1, 1, 1, 1, 1]

someInts7.insert(2, at: 3) // [1, 1, 1, 2, 1, 1]

var strs = ["str1", "str2"] // 创建一个[String]的数组

let strs1 = [
    "str1",
    "str2",
    "str3",
]

print(strs[0]) // str1
print(strs[1]) // str2
strs[1] = "str3"
print(strs[1]) // str3

// MARK: - 集合
let fruit: Set = ["apple", "banana", "strawberry", "jackfruit"]
let color = Set(["red", "green", "blue"])

// 初始化空Set
var fruits = Set<String>()
var colors = Set<String>.init()
var animals:Set<String> = []

fruits.insert("apple")
fruits.insert("banana")
fruits.insert("apple") // ["apple", "banana"]

colors.insert("red")
colors.insert("red") // ["red"]

animals.insert("monkey")
animals = []

// MARK: - 元组

let flight = ("LAX", 747)
print("We're flying to \(flight.0) in a \(flight.1)") // We're flying to LAX in a 747

var  flightT = (airport:"LAX", airportNum:747, heading:270)

print("We're flying to \(flightT.airport) in a \(flightT.1) with heading \(flightT.heading)") //We're flying to LAX in a 747 with heading 270
flightT.airport = "LA"
flightT.1   = 757
print("We're flying to \(flightT.airport) in a \(flightT.1) with heading \(flightT.heading)") // We're flying to LA in a 757 with heading 270

let (airport, _, heading) = ("LAX", 747, 270)

print("We're flying to \(airport) with heading \(heading)") // We're flying to LAX with heading 270

func getStatusCode() -> (Int, String) {
    return (404, "Not Found")
}

let (code, des) = getStatusCode()
print("The request returned with status code \(code) and said: '\(des)'") //The request returned with status code 404 and said: 'Not Found'

let drivers = ["Magnussen", "Raikkonen", "Hamilton", "Verstappen"]

for (index, name) in drivers.enumerated() {
    print("\(name) has position \(index)")
}

let scores = ["Bob": 42, "Alice": 99, "Jane": 13]

for (name, score) in scores {
    print("\(name)'s score is \(score)")
}

// MARK: - 字典

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

let scoresD = [
    "Bob": 42,
    "Alice": 10,
    "Daisy": 33
]

var heights:[String:Double] = [:]

heights["ZS"] = 1.78 // ["ZS": 1.78]

heights = [:] // [:]


let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
print(favoriteIceCream["Paul"] as Any)
print(favoriteIceCream["Charlotte", default: "Unknown"])
print(favoriteIceCream["Charlotte"] ?? "Unknown")

var teams = [
  "Bob" : "L1",
  "Alice" : "L2",
]

teams["Alice"] = "L3" // ["Alice": "L3", "Bob": "L1"]

teams["Daisy"] = "L4" // ["Alice": "L3", "Daisy": "L4", "Bob": "L1"]

teams["Daisy"] = nil

// MARK: - 枚举
enum Compass {
    case north
    case east
    case south
    case west
}

let direction = Compass.north

switch direction {
case .north:
    print(direction)
case .east:
    print(direction)
case .south:
    print(direction)
case .west:
    print(direction)
}

enum Weekday: CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}


for weekDay in Weekday.allCases {
    print(weekDay)
}

let today: Weekday = Weekday.monday

//let today:Weekday = .monday
//
//let today = Weekday.monday

enum Emotion {
    case happy, sad, angry, scared, surprised
}

let mood: Emotion = .scared

switch mood {
case .angry:
    print("angry")
case .sad:
   print("sad")
case .happy:
    print("happy")
default:
    print("I nerver has the mood \(mood)")
}

enum Item {
  /// 武器
  case weapon(Int, Int)
  /// 食品
  case food(Int)
  /// 护甲
  case armor(Int, Int, Double)
}

var item: Item = .armor(80, 30, 0.3)
// 玩家拾取一件更好的护甲
item = .armor(200, 25, 1.0)
// 玩家拾取一份食品
item = .food(100)
// 玩家拾取一件武器
item = .weapon(30, 40)

switch item {
case .weapon(let hitPoints, _):
    print("玩家伤害增加\(hitPoints)点")
case .food(let health):
    print("玩家生命增加\(health)")
case .armor(let damageThreshold, _, let condition):
    print("玩家的防御阈值是\(Double(damageThreshold) * condition)")
}
item = .armor(200, 25, 1.0)
switch item {
case let .armor(damageThreshold, weight, condition) where weight < 20:
    print("防御阈值为\(Double(damageThreshold) * condition)")
case .armor:
    print("超过负重")
default:
    print("这并不是意见护甲")
}

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

print("Planet count \(Planet.mars.rawValue + 1)")

enum IntWeekday: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday = 100, nextsunday
}
print(IntWeekday.monday.rawValue)
print(IntWeekday.wednesday.rawValue)
print(IntWeekday.friday.rawValue)
print(IntWeekday.sunday.rawValue)
print(IntWeekday.nextsunday.rawValue)

enum Flavor: String {
    case vanilla
    case strawberry
    case chocolate
}
print(Flavor.vanilla.rawValue)

let fla = Flavor(rawValue: "vanilla")

let flavor = Flavor(rawValue: "james_bond") ?? .none

switch flavor {
case .none:
    print("没有初始化成功")
default:
    print("初始化成功")
}

switch fla {
case .vanilla:
    print("vanilla")
default:
    print("other")
}

enum State {
    case loading
    case loaded
    case empty
    case error
}


