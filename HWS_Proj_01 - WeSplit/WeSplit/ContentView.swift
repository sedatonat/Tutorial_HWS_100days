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
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                TextField(
                    "Aomunt", // title
                    value: $checkAmount, // value
                    format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                )
                // as default TextField has "text:" but since the value we put into is not a text we had to change it into "value"
                // "??" helps if currency is not defined so the default is "USD"
                
            }
        }
    }
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
