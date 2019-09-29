import UIKit

// Using closures as parameters when they accept parameters

func travel (action: (String) -> Void) {
    print("I am getting ready to go")
    action("Vienna")
    print("I arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}
print("")

func adresa (strada: (String) -> Void){
    print("Numarul casei: 5")
    strada("Ashfield Park")
    print("Codul Postal: D15 W83F")
}

adresa {(place: String) in
    print("Numele strazii: \(place)")
}


func fix(item: String, payBill: (Int) -> Void) {
    print("I've fixed your \(item)")
    payBill(450)
}

fix(item: "roof") { (bill: Int) in
    print("You want $\(bill) for that? Outrageous!")
}

func getDirections(to destination: String, then travel: ([String]) -> Void) {
    let directions = [
        "Go straight ahead",
        "Turn left onto Station Road",
        "Turn right onto High Street",
        "You have arrived at \(destination)"
    ]
    travel(directions)
}
getDirections(to: "London") { (directions: [String]) in
    print("I'm getting my car.")
    for direction in directions {
        print(direction)
    }
}

func getMeasurement(handler: (Double) -> Void) {
    let measurement = 32.2
    handler(measurement)
}
getMeasurement { (measurement: Double) in
    print("It measures \(measurement).")
}

func processPrimes(using closure: (Int) -> Void) {
    let primes = [2, 3, 5, 7, 11, 13, 17, 19]
    for prime in primes {
        closure(prime)
    }
}
processPrimes { (prime: Int) in
    print("\(prime) is a prime number.")
    let square = prime * prime
    print("\(prime) squared is \(square)")
}

print("")

// Using closures as parameters when they return values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

func loadData(input: () -> String) {
    print("Loading...")
    let str = input()
    print("Loaded: \(str)")
}
loadData {
    return "He thrusts his fists against the posts"
}

func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}
manipulate(numbers: [1, 2, 3]) { number in
    return number * number
}

func encrypt(password: String, using algorithm: (String) -> String) {
    print("Encrypting password...")
    let result = algorithm(password)
    print("The result is \(result)")
}
encrypt(password: "t4ylor") { (password: String) in
    print("Using top secret encryption!")
    return "SECRET" + password + "SECRET"
}

func bakeCookies(number: Int, secretIngredient: () -> String) {
    for _ in 0..<number {
        print("Adding butter...")
        print("Adding flour...")
        print("Adding sugar...")
        print("Adding egg...")
        let extra = secretIngredient()
        print(extra)
    }
}
bakeCookies(number: 2) {
    return "Adding vanilla extract"
}

print("")

// Shorthand parameter names

func makeMoney (butlers: (String) -> String){
    print("I need to go to work tommorow")
    let shop = butlers("51 Grafton")
    print(shop)
    print("I hope it's not gonna be busy")
}
    // shorthand parameters
makeMoney { place in
    return ("Tommorow I am working in \(place)")
}
    //even shorter, we let swift to provide names by using \($0)
makeMoney {
    return ("Tommorow I am working in \($0)")
}

print("")

// Closures with multiple parameters

func running (action: (String, Int) -> String) {
    print("I need to prepare for marathon")
    let description = action("run", 7)
    print(description)
    print("Then I will be ready")
}
    // using shorthand parameters
running { (action, days) in
    return("To accomplish this, I need to \(action)  \(days) days a week 🏃🏿‍♂️")
}

    //even shorter, we let swift to provide names by using \($0)
running {
    return("To accomplish this, I need to \($0)  \($1) days a week 🏃🏻‍♀️")
}

func getTransport(destination: String, method: (String, Int) -> Bool) {
    let maxCost = 10
    let result = method(destination, maxCost)
    if result {
        print("OK, you can travel.")
    } else {
        print("Sorry, you need more money.")
    }
}
 
func playSong(instrumentClosure: (String, Int) -> Void) {
    let song = "Stairway to Heaven"
    let volume = 11
    print("I'm going to play \(song)...")
    instrumentClosure(song, volume)
}


func makeSandwich(type sandwichType: String, condimentClosure: (String) -> String) {
    print("First you make a basic \(sandwichType) sandwich.")
    print("Next, you add condiments...")
    let newSandwichType = condimentClosure(sandwichType)
    print("Now you have a \(newSandwichType).")
}


func runBarbecue(foods: [String], grillTechnique: (String, Int) -> Void) {
    let spiceLevel = 10
    for food in foods {
        grillTechnique(food, spiceLevel)
    }
}


func authenticate(algorithm: (String, String) -> Bool) {
    print("Authenticating user")
    let username = "twostraws"
    let password = "fr0sties"
    let result = algorithm(username, password)
    if result {
        print("You're in!")
    } else {
        print("Try again.")
    }
}


//Returning closures from functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
//We can now call travel() to get back that closure, then call it as a function
let result = travel()
result("London")

func createValidator() -> (String) -> Bool {
    return {
        if $0 == "twostraws" {
            return true
        } else {
            return false
        }
    }
}
let validator = createValidator()
print(validator("twostraws"))


func makeRecorder(media: String) -> () -> String {
    switch media {
    case "podcast":
        return {
            return "I'm recording a podcast"
        }
    default:
        return {
            return "I'm recording a video"
        }
    }
}
let recorder = makeRecorder(media: "podcast")
print(recorder())


func createTravelMethod(distance: Int) -> (String) -> Void {
    if distance < 5 {
        return {
            print("I'm walking to \($0).")
        }
    } else if distance < 20 {
        return {
            print("I'm cycling to \($0).")
        }
    } else {
        return {
            print("I'm driving to \($0).")
        }
    }
}
let travelMethod = createTravelMethod(distance: 15)
travelMethod("London")

func makeCodeGenerator(language: String) -> () -> Void {
    if language == "Swift" {
        return {
           print ("Swift rocks!")
        }
    } else {
        return {
            print ("Other languages are pretty great too!")
        }
    }
}
let generator = makeCodeGenerator(language: "Swift")
generator()


func createAgeCheck(strict: Bool) -> (Int) -> Bool {
    if strict {
        return {
            if $0 <= 21 {
                return true
            } else {
                return false
            }
        }
    } else {
        return {
            if $0 <= 18 {
                return true
            } else {
                return false
            }
        }
    }
}
let ageCheck = createAgeCheck(strict: true)
let result1 = ageCheck(20)
print(result1)


//Capturing values

func eating() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
    
}

let consequences = eating()
consequences("Sushi")
consequences("Burger")
consequences("Noodles")

func makeAdder() -> (Int) -> Void {
    var sum = 0
    return {
        sum += $0
        print("Sum is now \(sum)")
    }
}
let adder = makeAdder()
adder(5)
adder(3)


func swingBat() -> () -> Void {
    var strikes = 0
    return {
        strikes += 1
        if strikes >= 3 {
            print("You're out!")
        } else {
            print("Strike \(strikes)")
        }
    }
}
let swing = swingBat()
swing()
swing()
swing()

func translate(language: String) -> (String) -> String {
    return {
        if language == "French" {
            if $0 == "Hello" {
                return "Bonjour"
            } else {
                return "\($0) is unknown."
            }
        } else {
            return "Unknown language."
        }
    }
}
let translator = translate(language: "French")
let french = translator("Hello")


func storeTwoValues(value1: String, value2: String) -> (String) -> String {
    var previous = value1
    var current = value2
    return { new in
        let removed = previous
        previous = current
        current = new
        return "Removed \(removed)"
    }
}
let store = storeTwoValues(value1: "Hello", value2: "World")
let removed = store("Value Three")
print(removed)


func visitPlaces() -> (String) -> Void {
    var places = [String: Int]()
    return {
        places[$0, default: 0] += 1
        let timesVisited = places[$0, default: 0]
        print("Number of times I've visited \($0): \(timesVisited).")
    }
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")


func summonGenie(wishCount: Int) -> (String) -> Void {
    var currentWishes = wishCount
    return {
        if currentWishes > 0 {
            currentWishes -= 1
            print("You wished for \($0).")
            print("Wishes left: \(currentWishes)")
        } else {
            print("You're out of wishes.")
        }
    }
}
let genie = summonGenie(wishCount: 3)
genie("a Ferrari")
