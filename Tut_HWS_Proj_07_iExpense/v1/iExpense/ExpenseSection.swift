//
//  ExpenseSection.swift
//  iExpense
//
//  Created by Sedat Onat on 3.01.2023.
//

import SwiftUI

struct ExpenseSection: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    
    var body: some View {
        
        Section(title) {
            ForEach(expenses, id: \.name) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }  // End of VStack
                    
                    Spacer()
                    
                    Text(item.amount, format: .localCurrency)
                        .style(for: item)
                    
                }
                
                
            }  // Enf of ForEach
            .onDelete(perform: deleteItems)
            
        }
    }
}

struct ExpenseSection_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseSection(title: "Example", expenses: []) { _ in }
    }
}
