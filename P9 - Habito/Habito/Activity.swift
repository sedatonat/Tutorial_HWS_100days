//
//  Activity.swift
//  Habito
//
//  Created by Sedat Onat on 8.01.2023.
//

import Foundation

struct Activity: Codable, Identifiable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var completionCount = 0
    
    static let example = Activity(title: "Example activity", description:  "This is an example activity.")
    
    
    
}
