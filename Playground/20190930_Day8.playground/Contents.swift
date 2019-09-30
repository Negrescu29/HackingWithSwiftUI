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

//Property observers - let you run code before or after any property changes
//You can also use willSet to take action before a property changes, but that is rarely used.
//You can't attach a property observer to a constant, because it will never change.

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


struct BankAccount {
    var name: String
    var isMillionnaire = false
    var balance: Int {
        didSet {
            if balance > 1_000_000 {
                isMillionnaire = true
            } else {
                isMillionnaire = false
            }
        }
    }
}
var isMillionare = BankAccount(name: "Roman Abramovich", isMillionnaire: true, balance: 200_000)
isMillionare.balance = 345_000

// Methods - Functions inside structs are called methods, but they still use the same func keyword.

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()


struct Phone{
    var screenPrice: Double
    var cameraPrice: Double
    var ramPrice: Double
    
    func calculatePhonePrice() -> Double{
        return screenPrice + cameraPrice + ramPrice
    }
}
let apple = Phone(screenPrice: 250.50, cameraPrice: 134, ramPrice: 321.21)
print(apple.calculatePhonePrice())

struct Venue {
    var name: String
    var maximumCapacity: Int
    func makeBooking(for people: Int) {
        if people > maximumCapacity {
            print("Sorry, we can only accommodate \(maximumCapacity).")
        } else {
            print("\(name) is all yours!")
        }
    }
}
let venue = Venue(name: "Dacia Marin", maximumCapacity: 100)
print(venue.maximumCapacity)
print(venue.makeBooking(for: 99))


struct Customer {
    var name: String
    var street: String
    var city: String
    var postalCode: String
    func printAddress() -> String {
        return """
        \(name)
        \(street)
        \(city)
        \(postalCode)
        """
    }
}


struct XWing {
    var callSign: String
    func startTrenchRun() -> Bool {
        if callSign == "Red 5" {
            print("I'm going to blow up the Death Star!")
            return true
        } else {
            print("I'm hit!")
            return false
        }
    }
}

