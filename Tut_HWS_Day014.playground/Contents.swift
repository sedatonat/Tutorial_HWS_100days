import Cocoa


let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}


var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}


func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
//print(square(number: number))



print("-------------------------------")

var name: String? = nil
var age: Int? = nil


print("-------------------------------")

// Nil-Coalescing
struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)


print("-------------------------------")

let input = ""
let number2 = Int(input) ?? 0
print(number2)


print("-------------------------------")

let names1 = ["Arya", "Bran", "Robb", "Sansa"]
let names2 = [String]()

let chosen1 = names1.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen1)")

let chosen2 = names2.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen2)")


print("-------------------------------")

let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names["Vincent"]?.first?.uppercased() ?? "?"


print("-------------------------------")

// CHECKPOINT 9

// Version 1
//func getNumber(in array: [Int]?) -> Int {
//    array?.randomElement() ?? Int.random(in: 1...100)
//}


// Version 2
//func getNumber(in array: [Int?]?) -> Int {
//    let random = Int.random(in: 1...100)
//    return (array?.randomElement() ?? random) ?? random
//}


// Version 3
func getNumber(in array: [Int?]?) -> Int {
    lazy var random = Int.random(in: 1...100)
    return (array?.randomElement() ?? random) ?? random
}
