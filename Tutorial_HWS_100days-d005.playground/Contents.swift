import Cocoa

var numbers = [1,2,3]
numbers.append(4)
numbers.remove(at: 2)
print(numbers)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)


// --------------------------------------------

var deneme1 = ["ahmet","mehmet"]
deneme1.count

var deneme2 = "ahmet"
deneme2.count
// .count in Array's counts record but normally counts characters

// --------------------------------------------

let a = true
let b = true

if a && b {
    print("Hello, Swift!")
}

// --------------------------------------------

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.rain

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain { // dublicated criteria, if-else allows but switch does not
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}


switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

// --------------------------------------------

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default: // this is the default value for all other cases
    print("Who are you?")
}

//switch place {
//default: // this is the default value for all other cases
//    print("Who are you?")
//case "Gotham":
//    print("You're Batman!")
//case "Mega-City One":
//    print("You're Judge Dredd!")
//case "Wakanda":
//    print("You're Black Panther!")
//}

// --------------------------------------------

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

print("--")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
//    fallthrough
case 2:
    print("2 turtle doves")
//    fallthrough
default:
    print("A partridge in a pear tree")
}


print("------------------------------------")

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)
print(age >= 18 ? "Yes" : "No")

print("------------------------------------")

let names = ["Jayne", "Kaylee", "Mal"] // array
let crewCount = names.isEmpty ? "No one" : "\(names.count) people" // criteris
print(crewCount) // result


