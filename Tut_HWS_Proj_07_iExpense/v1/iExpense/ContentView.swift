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
                ForEach(expenses.items, id: \.name) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }  // End of VStack
                        
                        Spacer()
                        
                        Text(item.amount, format: .currency(code: "USD"))
                        
                    }
                    
                    
                }  // Enf of ForEach
                .onDelete(perform: removeItems)
                
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
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
