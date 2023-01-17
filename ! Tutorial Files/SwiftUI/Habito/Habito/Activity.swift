//
//  Activity.swift
//  Habito
//
//  Created by Paul Hudson on 16/11/2021.
//

import Foundation

struct Activity: Codable, Identifiable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var completionCount = 0

    static let example = Activity(title: "Example activity", description: "This is an example activity.")
}
