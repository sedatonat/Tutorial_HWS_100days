import Cocoa

protocol Vehicle {
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



struct Car: Vehicle {  // Not inheriting but comforming to the protocol. All the methods in the protocol must exist in struct, to conform the protocol. This is minimum requirement but you can add to it.
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

