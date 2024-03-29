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

// Implicitly unwrapped optionals

// Implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it. Because you know they will have a value by the time you need them, it’s helpful not having to write if let all the time.

let an: Int! = nil

// Nil coalescing

// The nil coalescing operator unwraps an optional and returns the value inside if there is one. If there isn’t a value – if the optional was nil – then a default value is used instead

// Can't use nil coalescing across different types


func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

// If we call that with ID 15 we’ll get back nil because the user isn’t recognized, but with nil coalescing we can provide a default value of “Anonymous” like this:

let user = username(for: 15) ?? "Anonymous"


let planetNumber: Int? = 426
var destination = planetNumber ?? 3


// Optional chaining

let names = ["John", "Paul", "George", "Ringo"]

//use the first property of that array, That question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.
let beatle = names.first?.uppercased()

func albumReleased(in year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    case 2017: return "Reputation"
    default: return nil
    }
}
let album = albumReleased(in: 2006)?.uppercased()

// Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// try?, and changes throwing functions into functions that return an optional. If the function throws an error you’ll be sent nil as the result, otherwise you’ll get the return value wrapped as an optional.Using try? we can run checkPassword() like this:

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

//try!, which you can use when you know for sure that the function will not fail. If the function does throw an error, your code will crash. Using try! we can rewrite the code to this:

try! checkPassword("sekrit")
print("OK!")


// Optionals summary

/*
    1. Optionals let us represent the absence of a value in a clear and unambiguous way.
    2. Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
    3. You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
    4. Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
    5. You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
    6. Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
    7. You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
    8. If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
    9. You can use typecasting to convert one type of object to another.
 */
