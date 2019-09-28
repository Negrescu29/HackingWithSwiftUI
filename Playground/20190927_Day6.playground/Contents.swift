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

//Closures as parameters

//Look up for driving closure

//let driving = {
//    print("I'm driving in my car")
//}

//If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type as `() -> Void`. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”. `action` is parameter label

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)
travel(action: learnSwift)

print("")

//Trailing closure syntax

let notificationClosure = {
    print ("Your have one new notification")
}

func notification (newNotification: () -> Void) {
    newNotification()
    print("Please read the notification")
    print("You have won in lottery 💶💶💶💶💶💶💶💶")
    
}
//trailling
notification {
    print ("You have one new notification")
}

print("")


func holdClass(name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
holdClass(name: "Philosophy 101") {
    print("All we are is dust in the wind, dude.")
}
