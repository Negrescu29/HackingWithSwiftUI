import UIKit

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
