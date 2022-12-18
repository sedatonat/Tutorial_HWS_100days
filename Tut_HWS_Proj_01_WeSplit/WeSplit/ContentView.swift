//
//  ContentView.swift
//  WeSplit
//
//  Created by Sedat Onat on 15.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused: Bool
    
    let localCurrency: FloatingPointFormatStyle<Double>.Currency = .currency(code: Locale.current.currency?.identifier ?? "USD")
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var grandTotal: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        return checkAmount + tipValue
    }
    
    var totalPerPerson: Double {
        grandTotal / Double(numberOfPeople)
    }
    
    
    var body: some View {
        NavigationView {  // Without it Picker started from 4
            Form {
                Section {
                    TextField(
                        "Aomunt", // title
                        value: $checkAmount, // value
                        format: localCurrency
                    )
                    .keyboardType(.decimalPad)
                    // as default TextField has "text:" but since the value we put into is not a text we had to change it into "value"
                    // "??" helps if currency is not defined so the default is "USD"
                    .focused($amountIsFocused) // trigers the state
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0-2) people")
                        }
                    }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            header: {
                Text("How much tip do you want to leave?")
            }
                
                
                
                Section {
                    Text(grandTotal, format: localCurrency)
                } header: {
                    Text("Total amount")
                }

                
                
                Section {
                    Text(
                        totalPerPerson,
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                    )
                }
                header: {
                    Text("Amount per person")
                }
                
                
                
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer() // brought Done to the right side
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
