import UIKit

//Creating your own class - allow you to create new types with properties and methods.
/*Classes have 5 difference:
1. If you have parameters in your class you must always create your own initializer
2. You can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top.
 

*/

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let frenchie = Dog(name: "Rocky", breed: "French Bulldog")

class BorderCollie: Dog {
    init(name: String){
        super.init(name: name, breed: "BorderColli")
    }
}
let borderCollie = BorderCollie(name: "Roger")


class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name
    }
}
let catan = BoardGame(name: "Catan")

class VideoGame {
    var hero: String
    var enemy: String
    init(heroName: String, enemyName: String) {
        self.hero = heroName
        self.enemy = enemyName
    }
}
let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")

class ThemePark {
    var entryPrice: Int
    var rides: [String]
    init(rides: [String]) {
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}
let carousel = ThemePark(rides: ["Cars", "Evil Wheel"])

class Empty { }
let nothing = Empty()


//Class inheritance

class Handbag {
    var price: Int
    init(price: Int) {
        self.price = price
    }
}

class DesignerHandbag: Handbag {
    var brand: String
    init(brand: String, price: Int) {
        self.brand = brand
        super.init(price: price)
    }
}


class Bicycle {
    var color: String
    init(color: String) {
        self.color = color
    }
}
class MountainBike: Bicycle {
    var tireThickness: Double
    init(color: String, tireThickness: Double) {
        self.tireThickness = tireThickness
        super.init(color: color)
    }
}


class Instrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Piano: Instrument {
    var isElectric: Bool
    init(isElectric: Bool) { // you don't need to init the param from super class if you are giving a value in super.init(param: paramType)
        self.isElectric = isElectric
        super.init(name: "Piano")
    }
}


class Shape {
    var sides: Int
    init(sides: Int) {
        self.sides = sides
    }
}
class Rectangle: Shape {
    var color: String
    init(color: String) {
        self.color = color
        super.init(sides: 4)
    }
}


