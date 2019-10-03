import UIKit

// Protocols

// Protocols are a way of describing what properties and methods something must have. You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol.
// It's not possible to create set-only properties in Swift.

protocol Identifiable {
    var id: String { get set }
}

//We can’t create instances of that protocol - it’s a description, not a type by itself. But we can create a struct that conforms to it:

struct User: Identifiable {
    var id: String
}

// Finally, we’ll write a displayID() function that accepts any Identifiable object:

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

protocol Purchaseable {
    var price: Double { get set }
    var currency: String { get set }
}

protocol Climbable {
    var height: Double { get }
    var gradient: Int { get }
}

protocol Singable {
    var lyrics: [String] { get set }
    var notes: [String] { get set }
}

// Protocol inheritance

// You can inherit from multiple protocols at the same time before you add your own customizations on top.

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

protocol CarriesPassengers {
    // var in protocols should have {get} or {get set}
    var passengerCount: Int { get set }
}
protocol CarriesCargo {
    var cargoCapacity: Int { get set }
}
protocol Boat: CarriesPassengers, CarriesCargo {
    var name: String { get set }
}

//Extensions

//Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.
// Extension should have a return

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

extension Double {
    var isNegative: Bool {
        return self < 0
    }
}

extension Int {
    func clamped(min: Int, max: Int) -> Int {
        if (self > max) {
            return max
        } else if (self < min) {
            return min
        }
        return self
    }
}

extension String {
    func isUppercased() -> Bool {
        return self == self.uppercased()
    }
}

//Protocol extensions

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

protocol Politician {
    var isDirty: Bool { get set }
    func takeBribe()
}
extension Politician {
    func takeBribe() {
        if isDirty {
            print("Thank you very much!")
        } else {
            print("Someone call the police!")
        }
    }
}

protocol Anime {
    var availableLanguages: [String] { get set }
    func watch(in language: String)
}
extension Anime {
    func watch(in language: String) {
        if availableLanguages.contains(language) {
            print("Now playing in \(language)")
        } else {
            print("Unrecognized language.")
        }
    }
}

protocol Hamster {
    var name: String { get set }
    func runInWheel(minutes: Int)
}
extension Hamster {
    func runInWheel(minutes: Int) {
        print("\(name) is going for a run.")
        for _ in 0..<minutes {
            print("Whirr whirr whirr")
        }
    }
}







