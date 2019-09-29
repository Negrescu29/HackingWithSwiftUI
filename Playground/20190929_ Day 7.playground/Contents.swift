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
