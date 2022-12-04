import Cocoa

var numberpositive: Int = 6
var numbernegative = -numberpositive


print("-------------------------------------")

struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 70)

if success {
    print("Withdrew money successfully. Remaining in your account is \(account)")
} else {
    print("Failed to get the money")
}

print(account)


print("-----------------------------------------------------------------------")



struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")

print(drJones)


print("-----------------------------------------------------------------------")

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
//    var isBreaking: Bool
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
//        self.isBreaking = isBreaking
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}


print("-----------------------------------------------------------------------")

// CHECKPOINT 6

struct Car {
    let model: String
    let seats: Int
    private(set) var gear = 1 // can be seen from everywhere but can be changed only from changegear
    let maximumGears: Int
    
    init(model: String, seats: Int, maximumGears: Int) {
        self.model = model
        self.seats = seats
        self.maximumGears = maximumGears
    }
    
    mutating func changeGear(difference: Int) {
        gear = gear + difference
        
        if gear < 0 {
            gear = 0
        } else if gear > maximumGears {
            gear = maximumGears
        }
    }
    
}

var car = Car(model: "BMW X3", seats: 5, maximumGears: 8)
car.changeGear(difference: 1)
print(car.gear)
car.changeGear(difference: -5)
print(car.gear) // Since we have limited the minimum gear to 0, the gear cannot be less than 0

