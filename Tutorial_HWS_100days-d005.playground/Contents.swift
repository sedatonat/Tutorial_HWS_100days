import Cocoa

var numbers = [1,2,3]
numbers.append(4)
numbers.remove(at: 2)
print(numbers)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)


// --------------------------------------------

var deneme1 = ["ahmet","mehmet"]
deneme1.count

var deneme2 = "ahmet"
deneme2.count
// .count in Array's counts record but normally counts characters

// --------------------------------------------

let a = true
let b = true

if a && b {
    print("Hello, Swift!")
}
