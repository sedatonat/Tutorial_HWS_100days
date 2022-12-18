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
    
    @FocusState private var inputIsFocused: Bool
    
    let units = ["Feet", "Kilometers", "Meters", "Miles", "Yards"]
    
    var result: String {
        let inputToMetersMultiplier: Double
        let metersToOutputMultiplier: Double
        // meters are central location. All the coversion will be made over meters
 
        switch inputUnit {
        case "Feet":
            inputToMetersMultiplier = 0.3048  // Feet to Meter
        case "Kilometers":
            inputToMetersMultiplier = 1000  // Kilometer to Meter
        case "Miles":
            inputToMetersMultiplier = 1609.34  // Mile to Meter
        case "Yards":
            inputToMetersMultiplier = 0.9144  // Yard to Meter
        default:
            inputToMetersMultiplier = 1  // default value
    }
        
        switch outputUnit {
        case "Feet":
            metersToOutputMultiplier = 3.28084  // Meter to Feet
        case "Kilometers":
            metersToOutputMultiplier = 0.001  // Meter to Kilometer
        case "Miles":
            metersToOutputMultiplier = 0.000621371  // Meter to Mile
        case "Yards":
            metersToOutputMultiplier = 1.09361  // Meter to Yard
        default:
            metersToOutputMultiplier = 1  // default value
    }

        let inputInMeters = input * inputToMetersMultiplier
        let output = inputInMeters * metersToOutputMultiplier
        
        let outputString = output.formatted()
        return "\(outputString) \(outputUnit.lowercased())"

}
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value:$input, format: .number)
                        .keyboardType(.decimalPad)
                } header: {
                    Text("Amount to convert")
                }
                .keyboardType(.decimalPad)
                .focused($inputIsFocused) // trigers the state
                
                
                Picker("Convert from", selection: $inputUnit) {
                    ForEach(units, id: \.self) {
                        Text($0)
                    }
                }
                
                
                Picker("Convert to", selection: $outputUnit) {
                    ForEach(units, id: \.self) {
                        Text($0)
                    }
                }
                
                
                Section {
                    Text(result)
                } header: {
                    Text("Results")
                }
                
                
            }
            .navigationTitle("Converter") // It should be attached to Form
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer() // brought Done to the right side
                    Button("Done") {
                        inputIsFocused = false
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
