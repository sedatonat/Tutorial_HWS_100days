import Cocoa

class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
    
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()


print("---------------------------------------------------------")

//class User {
//    var username = "Anonymous"
//
//    func copy() -> User {
//        let user = User()
//        user.username = username
//        return user
//    }
//
//}
//
//var user1 = User()
//var user2 = user1.copy()
//user2.username = "Taylor"
//var user3 = user2
//
//print(user1.username)
//print(user2.username)
//print(user3.username)


print("---------------------------------------------------------")

class Ewok {
    var fluffinessPercentage = 100
}
var chirpa = Ewok()
var wicket = chirpa
chirpa.fluffinessPercentage = 90
print(wicket.fluffinessPercentage)
print(chirpa.fluffinessPercentage)


print("---------------------------------------------------------")

//class User {
//    let id: Int
//
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//
//}
//
//var users = [User]()
//
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//    users.append(user)
//}
//
//print("Loop is finished!")
//users.removeAll()
//print("Array is clear!")


print("---------------------------------------------------------")


class User {
    var name = "Sedat"
}

var user = User()
user.name = "Veysel"
user = User()
print(user.name)


print("---------------------------------------------------------")

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)


print("---------------------------------------------------------")

// CHECKPOINT 7


class Animal {
    let legs: Int

    init(legs: Int) {
        self.legs = legs
    }
    
// This will undeintionally crash the code
//    func speak () {
//        assertionFailure("This should never be called.")
//    }
    
}

class Dog: Animal {
    func speak() {
        print("Woof!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Yip!")
    }
}

class Cat: Animal {
    let isTame: Bool

    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }

    func speak() {
        print("Meow")
    }
}

class Persian: Cat {
    override func speak() {
        print("Purr")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!")
    }
}


