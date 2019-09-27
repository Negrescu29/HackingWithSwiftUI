import UIKit

//ARRAYS

let favouriteActors = ["Tom", "Dwane", "Jason", "Vin"]

for i in 0 ..< favouriteActors.count{
    print("\(favouriteActors[i])")
}

//SETS

let devices = Set(["Apple","Samsung","Huawei","Xiaomi"])
print(devices)


// TUPLES

let tuple = (nume: "Ion", prenume:"Negrescu", varsta: 25)
tuple.0
tuple.nume
tuple.varsta

//Arrays vs sets vs tuples

let arrayOfAnyType: [Any] = ["Ion", 25, "Ferari"]

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

let set = Set(["aardvark", "astronaut", "azalea"])

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//DICTIONARIES

let om: [String: Any] = [
    "Ochi" : "2",
    "Miini" : 2,
    "Picioare" : 2,
    "Cap" : 1,
    "Nas" : 1
]

om.capacity
om["Ochi"]
