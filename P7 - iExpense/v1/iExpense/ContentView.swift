//
//  ContentView.swift
//  iExpense
//
//  Created by Sedat Onat on 1.01.2023.
//

import SwiftUI


struct ContentView: View {
    @StateObject var expenses = Expenses()  // watch expenses for any change
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                ExpenseSection(title: "Business", expenses: expenses.businessItems, deleteItems: removeBusinessItems)
                
                ExpenseSection(title: "Personal", expenses: expenses.personalItems, deleteItems: removePersonalItems)
                
            } // End of List
            .navigationTitle("iExpense")
            .toolbar {
                
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
                
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
            
        }
    }  // End of View
    func removeItems(at offsets: IndexSet, in inputArray: [ExpenseItem]) {
        var objectsToDelete = IndexSet()
        
        for offset in offsets {
            let item = inputArray[offset]
            
            if let index = expenses.items.firstIndex(of: item) {
                objectsToDelete.insert(index)
            }
        }
        
        expenses.items.remove(atOffsets: objectsToDelete)
    }
    
    func removePersonalItems(at offsets: IndexSet) {
        removeItems(at: offsets, in: expenses.personalItems)
    }
    
    func removeBusinessItems(at offsets: IndexSet) {
        removeItems(at: offsets, in: expenses.businessItems)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
