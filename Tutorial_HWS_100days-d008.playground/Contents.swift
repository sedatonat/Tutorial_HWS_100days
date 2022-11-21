import Cocoa

// In "end: Int = 3" 3 is the default value. If nothing defined for "end" value so 3 is the value
func printTimesTables(for number: Int, end: Int = 3) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

//printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

print("-----------------------------------------------------------")

func parkCar(_ type: String, automatically: Bool = true) {
    if automatically {
        print("Nice - my \(type) parked itself!")
    } else {
        print("I guess I'll have to do it.")
    }
}
parkCar("Tesla")


print("-----------------------------------------------------------")

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error: \(error.localizedDescription)")
}


print("-----------------------------------------------------------")

// HWS Checkpoint 4 Test

enum RootError: Error {
    case tooLow, tooHigh, notFound
}


func squareRoot(of number: Int) throws -> Int {
    if number < 1 {
        throw RootError.tooLow
    }

    if number > 10_000 {
        throw RootError.tooHigh
    }

    
    // Math
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    
    // No match in loop
    throw RootError.notFound
}

let number = 6561

do {
    let root = try squareRoot(of: number)
    print("The square root of \(number) is \(root).")
} catch RootError.tooLow {
    print("Sorry, \(number) is too low – please specify a value from 1 through 10,000.")
} catch RootError.tooHigh {
    print("Sorry, \(number) is too high – please specify a value from 1 through 10,000.")
} catch RootError.notFound {
    print("Sorry, we could not find an integer square root for \(number).")
} catch {
    print("Sorry, there was a problem.")
}

print("-----------------------------------------------------------")


func squareRoot2(of number2: Int) throws -> Int {

    // Math
    for i in 1...10 {
        if i * i == number {
            return i
        }
    }

}

let number2 = 100


