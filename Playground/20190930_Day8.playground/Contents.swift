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
