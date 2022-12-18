//
//  ContentView.swift
//  Tut_HWS_Chal_01_Converter
//
//  Created by Sedat Onat on 18.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 100.0
    @State private var inputUnit = "Meters"
    @State private var outputUnit = "Kilometers"
    
    let units = ["Feet", "Kilometers", "Meters", "Miles", "Yards"]
    
    
    var body: some View {
        NavigationView {
            
            Section {
                TextField("Amount", value:$input, format: .number)
                    .keyboardType(.decimalPad)
            } header: {
                Text("Amount to convert")
            }
            
            
            Picker("Convert from", selection: $inputUnit) {
                ForEach(units, id: \.self) {
                    Text($0)
                }
            }
          
            
            Picker("Convert to", selection: $inputUnit) {
                ForEach(units, id: \.self) {
                    Text($0)
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
