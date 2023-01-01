//
//  Expenses.swift
//  iExpense
//
//  Created by Sedat Onat on 1.01.2023.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
