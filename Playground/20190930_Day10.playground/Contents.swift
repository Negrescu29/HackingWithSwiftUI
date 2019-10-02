import UIKit

//Creating your own class - allow you to create new types with properties and methods.
/*Classes have 5 difference:
1. If you have parameters in your class you must always create your own initializer
2. You can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top.
3. When you copy a struct, both the original and the copy are different things. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.
4. Classes can have deinitializers – code that gets run when an instance of a class is destroyed.
5.

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

//Copying objects

class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)


struct Actors {
    var name = "Jim Carey"
}
var actor = Actors()
print(actor.name)

var actorCopy = actor
actorCopy.name = "John Travolta"
print(actorCopy.name)


struct GalacticaCrew {
    var isCylon = false
}
var starbuck = GalacticaCrew()
var tyrol = starbuck
tyrol.isCylon = true
print(starbuck.isCylon)
print(tyrol.isCylon)

class Starship {
    var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 9.6
print(voyager.maxWarp)
print(enterprise.maxWarp)

class Author {
    var name = "Anonymous"
}
var dickens = Author()
dickens.name = "Charles Dickens"
var austen = dickens
austen.name = "Jane Austen"
print(dickens.name)
print(austen.name)

class Hospital {
    var onCallStaff = [String]()
}
var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")
print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)


//Deinitializers
class Om {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Om()
    person.printGreeting()
}



