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


