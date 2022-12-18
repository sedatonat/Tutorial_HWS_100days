import Cocoa


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989) // this part and func part are working together
print(user)


print("----------------------------------------------------------------")

let sayHello = { (name: String) -> String in
    "Hi \(name)"
}

sayHello("Hello")


print("----------------------------------------------------------------")

// Created sorted array
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


// Defined second stage sorting rule
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// Output
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

print("----------------------------------------------------------------")

let fixCar = { (problem: String) in
    print("I fixed the \(problem).")
}
fixCar("ignition")

print("----------------------------------------------------------------")

var flyDrone = { (hasPermit: Bool) -> Bool in
    if hasPermit {
        print("Let's find somewhere safe!")
        return true
    }
    print("That's against the law.")
    return false
}

flyDrone(true)
flyDrone(false)

print("----------------------------------------------------------------")

let measureSize = { (inches: Int) -> String in
    switch inches {
    case 0...26:
        return "XS"
    case 27...30:
        return "S"
    case 31...34:
        return "M"
    case 35...38:
        return "L"
    default:
        return "XL"
    }
}
measureSize(36)
print(measureSize(36))


print("----------------------------------------------------------------")

let goSurfing = { (waveHeight: Int) -> String in
    if waveHeight < 5 {
        return "Let's go!"
    } else if waveHeight < 10 {
        return "This could be tricky"
    } else if waveHeight < 20 {
        return "Only a pro could do that"
    } else {
        return "No way!"
    }
}
print(goSurfing(4))


print("----------------------------------------------------------------")

var difficultyRating = { (trick: String) -> Int in
    if trick == "ollie" {
        return 1
    } else if trick == "Yoyo Plant" {
        return 3
    } else if trick == "900" {
        return 5
    } else {
        return 0
    }
}
print(difficultyRating("ollie"))


print("----------------------------------------------------------------")

//var goToWork = { (hours: Int) -> Bool in
//    print("I'm going to work")
//    for _ in 1...hours {
//        print("I'm chatting to friends on Facebook.")
//    }
//    print("I'm going home")
//    return true
//}
//goToWork(2)
//#learn


print("----------------------------------------------------------------")

var costToShootMovie = { (location: String) -> Int in
    if location == "UK" {
        return 1_000_000
    } else if location == "US" {
        return 5_000_000
    } else {
        return 500_000
    }
}
print(costToShootMovie("UK"))


print("----------------------------------------------------------------")

func animate(duration: Double, animations: () -> Void ) {
    print("Starting a \(duration) second animation…")
    animations()
}

print("---")

animate(duration: 3, animations: {
    print("Fade out the image")
})

print("----------------------------------------------------------------")

let payment1 = { (user: String) -> Bool in
    print("Paying \(user)…")
    return true
}

payment1("sedat")


let payment2 = { (user: String) in
    print("Paying \(user)…")
}

payment2("sedat")


print("----------------------------------------------------------------")

var invoice_amount = 20.0

// ----------------------------

func VAT_Incl_20_a (sum_wo_vat: Double) -> Double {
    sum_wo_vat * 1.2
}

VAT_Incl_20_a(sum_wo_vat:invoice_amount)
print("VAT Incl \(VAT_Incl_20_a(sum_wo_vat: 20))")


print("---")


let VAT_Incl_20_b = {(sum_wo_vat: Double) in
    print("VAT Incl \((sum_wo_vat)*1.2)")
}

VAT_Incl_20_b(invoice_amount)


print("----------------------------------------------------------------")

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy: () -> Void = greetUser
greetCopy()


print("----------------------------------------------------------------")

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let rolls = makeArray(size: 5) {
    Int.random(in: 1...20)
}

print(rolls)


print("----------------------------------------------------------------")

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}


print("----------------------------------------------------------------")

var makeFromStraw = {
    print("Let's build it out of straw")
}
func buildHouse(using buildingStyle: () -> Void) {
    buildingStyle ()
    print("It's ready - can anyone blow it down?")
}


print("----------------------------------------------------------------")

let swanDive = {
    print("SWAN DIVE!")
}
func performDive(type dive: () -> Void) {
    print("I'm climbing up to the top")
    dive()
}
performDive(type: swanDive)


print("----------------------------------------------------------------")

var payCash = {
    print("Here's the money.")
}
func buyClothes(item: String, using payment: () -> Void) {
    print("I'll take this \(item).")
    payment()
}
buyClothes(item: "jacket", using: payCash)


print("----------------------------------------------------------------")

var learnWithUnwrap = {
    print("Hey, this is fun!")
}
func learnSwift(using approach: () -> Void) {
    print("I'm learning Swift")
    approach()
}
learnSwift(using: learnWithUnwrap)


print("----------------------------------------------------------------")

func doTricks(_ tricks: () -> Void) {
    print("Start recording now!")
    tricks()
    print("Did you get all that?")
}


print("----------------------------------------------------------------")

/* Hacking With Swift - Day-9 Challange Solution
 
 Job:
 - Filter out any numbers that are even
 - Sort the array in ascending order
 - Map them to strings in the format “7 is a lucky number”
 - Print the resulting array, one item per line
 
 */

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result = luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted().map { "\($0) is a lucky number." }

for item in result {
    print(item)
}

print("----------------------------------------------------------------")
