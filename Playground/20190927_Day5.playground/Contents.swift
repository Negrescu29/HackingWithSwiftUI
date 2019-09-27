import UIKit

//You’ve made it to the end of the fifth part of this series, so let’s summarize:
//
//Functions let us re-use code without repeating ourselves.

//Functions can accept parameters – just tell Swift the type of each parameter.

//Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.

//You can use different names for parameters externally and internally, or omit the external name entirely.

//Parameters can have default values, which helps you write less code when specific values are common.

//Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.

//Functions can throw errors, but you must call them using try and handle errors using catch.

//You can use inout to change variables inside a function, but it’s usually better to return a new value.



// Writing functions - function let us reuse code and call functions from different places

func welcomeToMoldova(){
    let message = """

Welcome to Moldova!

Moldova, an Eastern European country and former Soviet republic.

Home to some of the world’s largest cellars

"""
    print(message)
}

welcomeToMoldova()


var yearBorn: Int = 1994

func calculateAge(yearBorn: Int) -> Int {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy"
    let yearString = dateFormatter.string(from: date)
    //converting yearString to an yearInt
    return (Int(yearString) ?? 0) - yearBorn
}

print("Eu am \(calculateAge(yearBorn: 1994)) de ani")



//Accepting parameters - values in functions are called parameters

func square(number: Int){
    print(number * number)
}
square(number: 19)


func calculateSalary(numberOfHoursWorked: Double, salary: Double){
    let salary = numberOfHoursWorked * salary
    print("My salary for this week is: \(salary) 💶")
}
calculateSalary(numberOfHoursWorked: 11.50, salary: 10.5)


func calculateWagePerHour(amountOfMoneyReceived: Double, hoursWorkedThisWeek: Double){
    print("Your wage per hour is:  \(amountOfMoneyReceived / hoursWorkedThisWeek)")
}
calculateWagePerHour(amountOfMoneyReceived: 120.75, hoursWorkedThisWeek: 11.5)


func square(numbers: [Int]) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared).")
    }
}
square(numbers: [2, 3, 4])



//Returning values

func calculateRemainingBalance(initialBalance: Double, amountWithdrawn: Double) -> Double {
    let remainingBalance = initialBalance - amountWithdrawn
    return remainingBalance
    }

    
let balance = calculateRemainingBalance(initialBalance: 11_150.92, amountWithdrawn: 345.98)
    
print("My balance = \(balance) 💶")


func estimateCost(units: Int) -> String {
    switch units {
    case 0...10:
        return "\(units * 10)"
    case 11...50:
        return "\(units * 9)"
    case 51...100:
        return "\(units * 8)"
    default:
        return "We can't make that many."
    }
}

print(estimateCost(units: 13))



//Parameter labels

// `to` is to use externally & `name` is to use internally
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Irina")



//Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")



//Default parameters
func pickedStock(stockName: String, picker: Bool = true){
    if picker  {
        print("You should invest in this stock, this stock was picked by Emmet")
    } else {
        print("Better don't invest in this stock")
        
    }
}

pickedStock(stockName: "Amazon")
pickedStock(stockName: "Nike", picker: false)
pickedStock(stockName: "Wix", picker: true)

func pickedStockAdvisor(stockName: String, picker: String = "Emmet"){
    if picker == "Emmet" {
        print("You should invest in this stock, \(stockName) was picked by Emmet")
    } else {
        print("Better don't invest in this stock")
        
    }
}

pickedStockAdvisor(stockName: "Netflix", picker: "Emmet")
pickedStockAdvisor(stockName: "Netflix", picker: "Rory")


//Variadic functions - you can pass any number of parameters of the same time

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)



//Writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//try checkPassword("  23")
//try checkPassword("password")

enum CatProblems: Error {
    case notACat
    case unfriendly
}
func strokeCat(_ name: String) throws {
    if name == "Mr Bitey" {
        throw CatProblems.unfriendly
    } else if name == "Lassie" {
        throw CatProblems.notACat
    } else {
        print("You stroked \(name).")
    }
}

// Running throwing functions

do {
    try checkPassword("Password")
    print("The password was good")
} catch {
    print("You can't use this password")
}


//inout parameters - all parameters passed into a function are `let` if you want to change that you can use `inout` this will be reflected on the return

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


