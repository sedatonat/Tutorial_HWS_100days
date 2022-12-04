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
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")

//struct Doctor {
//    var name: String
//    var location: String
//    private var currentPatient = "No one"
//    init(name: String, location: String) {
//        self.name = name
//        self.location = location
//    }
//}
//let drJones = Doctor(name: "Esther Jones", location: "Bristol")
//
//print(drJones)
