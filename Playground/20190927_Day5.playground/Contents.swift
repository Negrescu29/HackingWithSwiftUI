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
