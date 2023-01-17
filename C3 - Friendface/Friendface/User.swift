//
//  User.swift
//  Friendface
//
//  Created by Paul Hudson on 30/11/2021.
//

import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]

    static let example = User(id: UUID(), isActive: true, name: "Paul Hudson", age: 35, company: "Hudson Heavy Industries", email: "paul@hackingwithswift.com", address: "555, Taylor Swift Avenue, Nashville, Tennessee", about: "Paul writes about Swift and iOS development, and has books such as Hacking with Swift, Testing Swift, Swift Coding Challenges, and Swift Design Patterns. Suffice it to say he likes Swift a lot. And coffee. (But mostly Swift) (And coffee.)", registered: Date.now, tags: ["swift", "swiftui", "dogs"], friends: [])
}
