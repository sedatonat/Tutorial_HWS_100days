import Cocoa

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

print(showWelcome())

print("----------------------------")

func showWelcome2() {
    print("""
    Welcome to my app!
    By default This prints out a conversion
    chart from centimeters to inches, but you
    can also set a custom range if you want.
    """)
}

print(showWelcome2())

print("----------------------------")

let roll = Int.random(in: 1...20)

print("----------------------------")

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 10)

print("----------------------------")

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

/*
 
 5: argument
 number: parameter
 
 20: argument
 end: parameter
 
 Always prioritize parameters over arguments
 
 */




print("----------------------------")

func listOriginalStarWarsMovies() {
    for i in 4...6 {
        print("Episode \(i)")
    }
}

listOriginalStarWarsMovies()

print("----------------------------")

func scoreGoal(count: Int) {
    print("Gooooaaaal! \(count)")
}
scoreGoal(count:1)
scoreGoal(count:2)
scoreGoal(count:3)

print("----------------------------")

func shipOrders() {
    let orders = [1, 2, 3, 4, 5]
    for order in orders {
        print("Shipping order \(order)")
    }
}
shipOrders()

print("----------------------------")

func playMusic() {
    print("Here's some Ed Sheeran.")
}

print("----------------------------")

func count(to: Int) {
    for i in 1...to {
        print("I'm counting: \(i)")
    }
}

print("----------------------------")

func square(numbers: [Int]) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared).")
    }
}
square(numbers: [2, 3, 4])

print("----------------------------")

func sendTweet(text: String) {
    for tweetText in text {
        print("Posting to Twitter: \(tweetText)")
    }
}

print("----------------------------")

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
 
print("----------------------------")

let isAdmin = true
let isOwner = false
let isEditingEnabled = false

isOwner == true && isEditingEnabled || isAdmin == true
isOwner == true && (isEditingEnabled || isAdmin == true)

print("----------------------------")

// Standart if-else conditional
func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

print(greet(name:"Sedat"))

print("----------------------------")

// Ternary Conitional
func greet2(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

print(greet2(name:"Sedat"))

print("----------------------------")

// withou return, it does not outputs the result outside of the func
func greet3(name: String) {
    if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
}

print(greet3(name:"Sedat"))


