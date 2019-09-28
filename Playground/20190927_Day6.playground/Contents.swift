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
