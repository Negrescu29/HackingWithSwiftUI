import UIKit

//Creating your own class - allow you to create new types with properties and methods.
/*Classes have 5 difference:
1. If you have parameters in your class you must always create your own initializer
 
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
let carousel = ThemePark(rides: "Cars")

class Empty { }
let nothing = Empty()



