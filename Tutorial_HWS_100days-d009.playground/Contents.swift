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

sayHello("Hellox§")


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
