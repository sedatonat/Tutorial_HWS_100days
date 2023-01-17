//
//  main.swift
//  Generics
//
//  Created by Paul Hudson on 02/07/2020.
//

import Foundation

struct Pair<T> {
    var first: T
    var second: T
}

struct ParticleState<T> {
    var start: T
    var end: T

    init(_ start: T, _ end: T) {
        self.start = start
        self.end = end
    }
}

struct Point<T: Numeric> {
    var x: T
    var y: T
}

struct Scoreboard<T: Numeric> {
    var highScore: T
    var allScores: [T]
}

struct CountedSet<Element: Hashable>: Equatable, Hashable {
    private var elements = [Element: Int]()
    var count: Int { elements.count }
    var isEmpty: Bool { elements.isEmpty }

    mutating func insert(_ element: Element) {
        elements[element, default: 0] += 1
    }

    mutating func remove(_ element: Element) {
        elements[element, default: 0] -= 1
    }

    func count(for element: Element) -> Int {
        elements[element, default: 0]
    }
}

var scores = CountedSet<Int>()
scores.insert(1)
scores.insert(1)
scores.insert(1)
scores.insert(2)

scores.remove(1)
scores.remove(1)
scores.remove(1)
scores.remove(1)
scores.remove(1)
scores.remove(1)
scores.remove(1)
scores.remove(1)


var array = [1, 2, 1, 3, 1, 4, 1, 5]

extension Array where Element: Equatable {
    mutating func removing(_ obj: Element) -> [Element] {
        filter { $0 != obj }
    }
}

extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var seen = Set<Element>()

        return filter {
            seen.insert($0).inserted
        }
    }
}

extension Sequence {
    func uniqueElements<T: Hashable>(byProperty propertyAccessor: (Element) -> T) -> [Element] {
        var seen = Set<T>()
        return filter {
            seen.insert(propertyAccessor($0)).inserted
        }
    }
}

struct User {
    var name: String
}

let user1 = User(name: "User1")
let user2 = User(name: "User2")
let user3 = User(name: "User3")
let users = [user1, user2, user1, user3, user2, user1]

let uniqueUsers = users.uniqueElements(byProperty: \.name)


let noOnes = array.removing(1)
print(noOnes)


struct SpeedTracker {
    @NonNegative var current = 0.0
    @NonNegative var highest = 0.0
}

var example = SpeedTracker()
print(example.current)
example.current = -5
print(example.current)
example.current = 10
print(example.current)

@propertyWrapper struct NonNegative<Value: SignedNumeric & Comparable> {
    var value: Value

    init(wrappedValue: Value) {
        self.value = max(0, wrappedValue)
    }

    var wrappedValue: Value {
        get { value }
        set { value = max(0, newValue) }
    }
}
