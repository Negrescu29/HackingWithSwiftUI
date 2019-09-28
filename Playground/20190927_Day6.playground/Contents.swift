import UIKit

//Creating basic closures

let driving = {
    print("I'm driving in my car")
}

driving()

let learnSwift = {
    print("Closures are like functions")
}
learnSwift()

//Accepting parameters in a closure - One of the differences between functions and closures is that you don’t use parameter labels when running closures (ex: driving("London"))

let myName = { (name: String) in
    print("My name is: \(name)")
}

myName("Ion")

var sendMessage = { (message: String) in
    if message != "" {
        print("Sending to Twitter: \(message)")
    } else {
        print("Your message was empty.")
    }
}

//Returning values from a closure

//cloosure without return
let commuting = { (place: String) in
    print("I'm going to \(place) by bus")
}
commuting("Blanchardstown")

//closure with return
let commutingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) by bus"
}
print(commutingWithReturn("City Centre"))

let hobby = { (myHobby: String...) in
    print("My hobby are: \(myHobby)")
}
hobby("Judo", "Hicking","Rugby")

let returnMyHobby = {(hobby: String) -> String in
    return "My favourite hobby is: \(hobby)"
}
print(returnMyHobby("Judo"))

let measureSize = { (inches: Int) -> String in
    switch inches {
    case 0...26:
        return "XS"
    case 27...30:
        return "S"
    case 31...34:
        return "M"
    case 35...38:
        return "L"
    default:
        return "XL"
    }
}
measureSize(36)
