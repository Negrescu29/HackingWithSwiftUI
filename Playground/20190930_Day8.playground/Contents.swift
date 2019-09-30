import UIKit

//Creating your own structs - Structs let use design our own types

struct Sport {
    var name: String
}

var judo = Sport(name: "Judo")
print(judo.name)

struct Food {
    var name: String
    var origin: String
    var levelOfSpiciness: Int
}

var food = Food(name: "Kebab", origin: "Turkey", levelOfSpiciness: 3)
print(food.name,food.origin ,food.levelOfSpiciness)

food.levelOfSpiciness = 5
print(food.levelOfSpiciness)

struct Order {
    var customerID: Int
    var itemID: Int
}
let order = Order(customerID: 43, itemID: 556)

struct User {
    var name = "Anonymous"
    var age: Int
}
let twostraws = User(name: "Paul", age: 38)

struct RubiksCube {
    var size = 3
}
let large = RubiksCube(size: 5)

// Computed properties - a property that runs code to figure out its value.
struct Laptop {
    var brand: String
    var colour: String
    var screensize: Int
    var isNewDevice: Bool
    
    // Computed proprety must always have an explicit type.
    var laptopCondition: String {
        if isNewDevice {
            return "\(brand) is a new device"
        }else{
            return "\(brand) is a second hand device"
        }
    }
    
}
let macBook = Laptop(brand: "Apple", colour: "Space Gray", screensize: 15, isNewDevice: true)
print(macBook.laptopCondition)


struct OlimpicSports {
    var name: String
    var isOlympicSport: Bool
    
    // Constants cannot be computed properties
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = OlimpicSports(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


struct Medicine {
    var amount: Int
    var frequency: Int
    var dosage: String {
        return "Take \(amount) pills \(frequency) times a day."
    }
}

struct Investor {
    var age: Int
    var investmentPlan: String {
        if age < 30 {
            return "Shares"
        } else if age < 60 {
            return "Equities"
        } else {
            return "Bonds"
        }
    }
}
let investor = Investor(age: 38)
print(investor.investmentPlan)


