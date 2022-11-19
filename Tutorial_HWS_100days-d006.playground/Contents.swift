import Cocoa



let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
// array

// os: loop variable
for os in platforms {
    print("Swift works great on \(os).")
}
// loop iteration


print("-------------------------------")

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

print("-------------------------------")


for i in 1..<4 {
    print("The \(i) times table:")
    
    for j in 1...2 {
        print("  \(j) x \(i) is \(j * i)")
    }
    
    print()
}

print("-------------------------------")

var lyric = "Haters gonna"

for _ in 1...5 { // her is variable is "_'
    lyric += " hate"
}

print(lyric)

print("-------------------------------")

var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}


print("-------------------------------")

for i in 1...8 {
    if i < 3 {
        print("\(i) is a small number")
    }
}

print("-------------------------------")

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

print("-------------------------------")

let id = Int.random(in: 1...1000)

print("-------------------------------")

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

print("-------------------------------")

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

print("-------------------------------")

let number1 = 10
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

print("-------------------------------")

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }
    
    count += 1
}

print("You had \(count) scores before you got 0.")

print("-------------------------------")

var password = "1"
while true {
    password += "1"
    if password == "11111" {
        print("That's a terrible password.")
    }
    break
}


print("-------------------------------")

//for i in 1...100 {
//    var i = 0
//    let multiple3 = 3
//    let multiple5 = 5
//    if multiple3.isMultiple(of: multiple3)
//    { print("Fizz") }
//    if multiple5.isMultiple(of: multiple5)
//    { print("Buzz") }
//    if multiple3.isMultiple(of: multiple3) && multiple5.isMultiple(of: multiple5)
//    { print("FizzBuzz") }
//    if !multiple3.isMultiple(of: multiple3) && !multiple5.isMultiple(of: multiple5)
//    { print(i) }
//}


for i in 1...100 {
    if i % 3 != 0 { if i % 5 != 0 { print(i)}}
    if i % 3 == 0 { print("\(i) = Fizz")}
    if i % 5 == 0 { print("\(i) = Buzz")}
    if i % 3 == 0 { if i % 5 == 0 { print("\(i) = FizzBuzz")}}
}
