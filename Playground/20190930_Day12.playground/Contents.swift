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

// Unwrapping with guard
// Guard let will unwrap an optional for you, but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.

// Major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.

// Using guard let lets you deal with problems at the start of your functions, then exit immediately

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}

func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: "Hello") {
    print(result)
}

func isLongEnough(_ string: String?) -> Bool {
    guard let string = string else { return false }
    if string.count >= 8 {
        return true
    } else {
        return false
    }
}
if isLongEnough("Mario Odyssey") {
    print("Let's play that!")
}

func test(number: Int?) {
    guard let number = number else { return }
    print("Number is \(number)")
}
test(number: 42)

func username(for id: Int?) -> String? {
    guard let id = id else {
        return nil
    }
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
if let user = username(for: 1989) {
    print("Hello, \(user)!")
}

func describe(occupation: String?) {
    guard let occupation = occupation else {
        print("You don't have a job.")
        return
    }
    print("You are an \(occupation).")
}
let job = "engineer"
describe(occupation: job)


// Force unwrapping
// if you have a string that contains a number, you can convert it to an Int like this:

let str = "5"
let num = Int(str)!

//password is set to nil, and force unwrapping that will crash.

//let password: String? = nil
//let unwrappedPassword = password!


