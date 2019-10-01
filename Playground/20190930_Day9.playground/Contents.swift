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


//Referring to the current instance -

// - self.name(var name: String) aka property
// - name(init(name: String)) aka parameter

//if you create a Person struct with a name property , then tried to write an initializer(init)that accepted a name parameter, self helps you distinguish between the property and the parameter  – self.name refers to the property, whereas name refers to the parameter.

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        // self.name -> var name: Sting
        // name -> init(name: String)
        self.name = name
    }
}
let ion = Person(name: "Ion")


struct Conference {
    var name: String
    var location: String
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
let wwdc = Conference(name: "WWDC", location: "San Jose")

struct Language {
    var nameEnglish: String
    var nameLocal: String
    var speakerCount: Int
    init(english: String, local: String, speakerCount: Int) {
        self.nameEnglish = english
        self.nameLocal = local
        self.speakerCount = speakerCount
    }
}
let french = Language(english: "French", local: "français", speakerCount: 220_000_000)


struct Character {
    var name: String
    var actor: String
    var probablyGoingToDie: Bool
    init(name: String, actor: String) {
        self.name = name
        self.actor = actor
        if self.actor == "Sean Bean" {
            probablyGoingToDie = true
        } else {
            probablyGoingToDie = false
        }
    }
}


struct Cottage {
    var rooms: Int
    // here variable has a value, this is why it's not in the initializer
    var rating = 5
    init(rooms: Int) {
        self.rooms = rooms
    }
}
let bailbrookHouse = Cottage(rooms: 4)


// Lazy properties
// - Lazy properties can be used inside any kind of structs.
// - Lazy properties are a performance optimization.
// - You can assign lazy properties by calling a method.
// - Lazy properties are created only when first accessed.

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

//We might use that FamilyTree struct as a property inside a Human struct, like this:

struct Human {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}
var ed = Human(name: "Ed")

//If we add the lazy keyword to the familyTree property, then Swift will only create the FamilyTree struct when it’s first accessed:
ed.familyTree
