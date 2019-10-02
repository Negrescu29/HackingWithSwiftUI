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
    func makeNoise(){
        print("Woof! Woof!")
    }
}
let frenchie = Dog(name: "Rocky", breed: "French Bulldog")
frenchie.makeNoise()


class BorderCollie: Dog {
    init(name: String){
        super.init(name: name, breed: "BorderColli")
    }
    override func makeNoise() {
        print("HAM! HAM!")
    }
}
let borderCollie = BorderCollie(name: "Roger")
borderCollie.makeNoise()

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

//Empty class
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

//Overriding methods

class Appliance {
    // if the class doesn't have any parameter you don't need init()
    func start() {
        print("Starting...")
    }
}

class Oven: Appliance {
}
let oven = Oven()
oven.start()


//Final classes - when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

final class Person {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}
// can't inherit from a final class
class Young: Person {}

final class Landmark { }
final class Monument: Landmark { }

class Magazine { }
final class FashionMagazine: Magazine { }
