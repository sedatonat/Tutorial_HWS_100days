import Cocoa

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "You win!"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the lof of an
Apple designer
"""

let nameLength = actor.count
print(nameLength)

print(result.uppercased())

print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))


//-----------------

let score = 10
let reallyBig = 100_000_000 // For sake of understanding the numbar, you can add underscores to numbar. It also does not have to be in every 3 digits. Even if you add underscores to a number, swift understands that it is a number and ignores them

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
var squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter = counter + 5
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let number1 = 0.1 + 0.2
print(number1) // Since Xcode considers it as "Double precision floating number" it ats some digits to it

let a = 1
let b = 2.0
//let c = a + b
let d = a + Int(b) // To calculate it Swifth requres us to explicitely define the format

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

let luggaeCode = "1" + "2" + "3" + "4"
luggaeCode +1




