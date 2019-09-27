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

print(calculateAge(yearBorn: 1994))

