//
//  View-ExpenseStyling.swift
//  iExpense
//
//  Created by Sedat Onat on 3.01.2023.
//

import Foundation
import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 30 {
            return self.font(.body)
        } else if item.amount < 100 {
            return self.font(.title3)
        } else {
            return self.font(.title)
        }
    }
}
