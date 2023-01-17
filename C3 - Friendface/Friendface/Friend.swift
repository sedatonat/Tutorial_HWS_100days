//
//  Friend.swift
//  Friendface
//
//  Created by Paul Hudson on 30/11/2021.
//

import Foundation

struct Friend: Identifiable, Codable {
    let id: UUID
    let name: String
}
