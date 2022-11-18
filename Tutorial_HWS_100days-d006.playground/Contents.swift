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
