import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])


beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")


let firstBeatle = beatles[0]
let firstNumber = numbers[0]
//let notAllowed = firstBeatle + firstNumber


var scores = Array<Int>() // Creates an array in a defined data type. You must define the data type in advance
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fear")
albums.append("Red")
print(albums.count)


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

//characters.remove(at: 1, 2) // #learn how to delete multiple items
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
//print(presidents.reversed())
// I could not understand how it works #learn

var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

//print("Name: \(employee[0])")
//employee.remove(at: 1)
//print("Job title: \(employee[1])")
//print("Location: \(employee[2])")


//let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

//print(employee2["name"])
//print(employee2["job"])
//print(employee2["location"])


print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]


print("----------------------")


let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])
print(olympics[2013, default: "Unknown"]) // in error the result is "Unknown" #learn


print("----------------------")


var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin" // It overwrote the previous Batman value


var readings: [Bool] = [false, false, true, false]


//let ships = ["Star Trek", "Enterprise"]
//let enterprise = ships["Star Trek"]


print("----------------------")


let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]


print("----------------------")


let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]


print("----------------------")


let prices = ["Milk": 1, "Pepsi": 2]
//let first = prices[1]  // #learn


print("----------------------")

let albums2 = ["Prince": "Purple Rain"]
let beatles2 = albums2["Beatles"]


print("----------------------")


let abbreviations = ["m": "meters", "km": "kilometers"]
//let meters = abbreviations["m", default "m"]


print("----------------------")


let characters2 = ["Captain": "Malcolm", "Engineer": "Kaylee"]
let captain2 = characters2["Captain"]


print("----------------------")


let scores3 = ["Paul": 80, "Sophie": 100]
//let john3 = scores3[john]


print("----------------------")

let people4 = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people4)


print("----------------------")


var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")

print(actors)


print("----------------------")

var readings2 = Set([true, false, true, true])

var attendees = Set([100, 100, 101, 100])
