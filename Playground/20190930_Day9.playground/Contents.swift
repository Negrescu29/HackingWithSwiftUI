import UIKit

//Initializers - are special methods that provide different ways to create your struct

struct User{
    var username: String
    
    //You don’t write func before initializers, but you do need to make sure all properties have a value before the initializer ends.
    init() {
        username = "Anonim"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "Ion"


struct Book {
    var title: String
    var author: String
    init(bookTitle: String, bookAuthor: String) {
        title = bookTitle
        author = bookAuthor
    }
}
let book = Book(bookTitle: "Beowulf",bookAuthor: "Ion")


struct Dictionary {
    var words = Set<String>()
}
let dictionary = Dictionary()


struct Country {
    var name: String
    var usesImperialMeasurements: Bool
    init(countryName: String) {
        name = countryName
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
        } else {
            usesImperialMeasurements = false
        }
    }
}


struct Message {
    var from: String
    var to: String
    var content: String
    init() {
        from = "Unknown"
        to = "Unknown"
        content = "Yo"
    }
}
let message = Message()


struct Cabinet {
    var height: Double
    var width: Double
    var area: Double
    init (itemHeight: Double, itemWidth: Double) {
        height = itemHeight
        width = itemWidth
        area = height * width
    }
}
let drawers = Cabinet(itemHeight: 1.4, itemWidth: 1.0)


//Static properties and methods

struct Amplifier {
    static let maximumVolume = 11
    var currentVolume: Int
}

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}

struct Person {
    static var population = 0
    var name: String
    init(personName: String) {
        name = personName
        Person.population += 1
    }
}
// static can be variables and methods inside the struct
struct Pokemon {
    static var numberCaught = 0
    var name: String
    static func catchPokemon() {
        print("Caught!")
        Pokemon.numberCaught += 1
    }
}

//Structs summary

// 1. You can create your own types using structures, which can have their own properties and methods.
// 2. You can use stored properties or use computed properties to calculate values on the fly.
// 3. If you want to change a property inside a method, you must mark it as mutating.
//4. Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
// 5. Use the self constant to refer to the current instance of a struct inside a method.
// 6. The lazy keyword tells Swift to create properties only when they are first used.
// 7. You can share properties and methods across all instances of a struct using the static keyword.
// 8. Access control lets you restrict what code can use properties and methods.
