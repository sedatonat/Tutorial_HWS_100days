//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Sedat Onat on 1.01.2023.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()  // Here we ask SwiftUI to create UUID
    let name: String
    let type: String
    let amount: Double
}
