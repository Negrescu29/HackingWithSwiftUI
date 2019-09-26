import UIKit

//FOR LOOPS - most common loops

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let culori = ["Alb", "Negru", "Bordo"]

for culoare in culori {
    print("Culorile mele preferaste sunt: \(culoare)")
}

print("Players gonna")

for _ in 1...5 {
    print("play")
}


for _ in 0...3 {
    print("Hip hip hurray!")
}

//WHILE

var number = 1

while number <= 20 {
    print("Numarul este egal cu: \(number)")
    number += 2
}

print("\(number) nu este mai mic decit 20")

print("            ")


let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}

print("            ")

var counter = 2
while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}

print("")

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I have \(cats) cats. I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

//REPEAT LOOPS

var mereInCos = 1

repeat {
    print("\(mereInCos) mere sunt in cos")
    mereInCos += 1
} while mereInCos <= 20

print("Cosul cu mere e plin")

while false {
    print("It's false")
}

repeat{
    print("This false statment runs at least once")
} while false

print("")
//EXITING LOOP

var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

print("")
//EXITING MULTIPLE LOOP -> loop in a loop is called nested loop

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

print("")
//SKIPPING ITEMS - use `continue`

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print("\(i) este un numar par")
}

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
    let value = fibonacci[position]
    position += 1
    if value < 2 {
       continue
    }
    print("Fibonacci number \(position) is \(value)")
}

var counting = 0
while counting <= 20 {
    counting += 1
    if counting > 5 {
        continue
    }
    print("\(counting)...")
}
print("Ready or not, here I come!")

//INFINITE LOOPS

var counterMusic = 0

while true {
    print(".")
    counterMusic += 1

    if counterMusic == 273 {
        break
    }
}
