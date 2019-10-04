import UIKit

// Handling missing data - Optionals
var age: Int? = nil
var name: String?

// Unwrapping optionals - Optional strings might contain a string like “Hello” or they might be nil – nothing at all.

var nume: String? = "ION"

if let unwrapped = nume {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"
if let movie = favoriteMovie {
    print("Your favorite movie is \(movie).")
} else {
    print("You don't have a favorite movie.")
}


