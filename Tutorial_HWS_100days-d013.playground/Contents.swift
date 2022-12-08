import Cocoa

protocol Vehicle {
    
    // Properties
    var name: String { get }  // car, bike, etc.
    var currentPassengers: Int { get set }  // number passengers in default
    
    // Methods
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
    
}



func commute(distance: Int, using vehicle: Vehicle) { // protocol made it possible to use it everywhere, no need to create a new func everytime #lesson
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}


func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}



struct Car: Vehicle {  // Not inheriting but comforming to the protocol. All the methods in the protocol must exist in struct, to conform the protocol. This is minimum requirement but you can add to it.
    
    let name = "Car"  // because this struct is Car
    var currentPassengers = 1  // default value
    func estimateTime(for distance: Int) -> Int {  // between theese paranthesis, the actual work is being done
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}


struct Bicycle: Vehicle {
    
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}


let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 120)


print("----------------------------------------------------------------")

func getRandomNumber() -> some Equatable {  // It will be Equitable but some specific kind of
    Double.random(in: 1...6)  // Here it says the Equatable is Integer, tus it gives us the ability to change our mind later
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


print("----------------------------------------------------------------")

var quote = "   The truth is rarely pure and never simple   "

//let trimmed1 = quote.trimmingCharacters(in: .whitespacesAndNewlines)
//
//print(trimmed1)


extension String {
    func fnc_trimmed2() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

let trimmed2 = quote.fnc_trimmed2()

print(trimmed2)
