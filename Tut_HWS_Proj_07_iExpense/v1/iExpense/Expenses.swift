//
//  Expenses.swift
//  iExpense
//
//  Created by Sedat Onat on 1.01.2023.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "items")
            }
        }
    }  // End of @Published
    
    var personalItems: [ExpenseItem] {
        items.filter {$0.type == "Personal"}
    }
    
    var businessItems: [ExpenseItem] {
        items.filter {$0.type == "Business}
    }

    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {  // if we cannot read the first if
                items = decodedItems
                return
            }
        }  // End of first if
        items = []  // Empty Array
            
        
        
    }
    
    
}
