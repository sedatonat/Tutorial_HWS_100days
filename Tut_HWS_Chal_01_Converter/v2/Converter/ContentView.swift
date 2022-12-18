//
//  ContentView.swift
//  Tut_HWS_Chal_01_Converter
//
//  Created by Sedat Onat on 18.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 100.0
    @State private var selectedUnits = 0
    @State private var inputUnit: Dimension = UnitLength.meters
    @State private var outputUnit: Dimension = UnitLength.kilometers
    
    @FocusState private var inputIsFocused: Bool
    
    let conversions = ["Distance", "Mass", "Temperature", "Time"]
    
    let unitTypes = [
        // Distance
        [UnitLength.feet, UnitLength.kilometers, UnitLength.meters, UnitLength.miles, UnitLength.yards],
        // Mass
        [UnitMass.grams, UnitMass.kilograms, UnitMass.ounces, UnitMass.pounds],
        // Temperature
        [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin],
        // Time
        [UnitDuration.hours, UnitDuration.minutes, UnitDuration.seconds]
    ]
    
    
    
    let formatter: MeasurementFormatter
    
    var result: String {
        let inputMeasurement = Measurement(value: input, unit: inputUnit)
        let outputMeasurement = inputMeasurement.converted(to: outputUnit)
        return formatter.string(from: outputMeasurement)
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
                
                
                Picker("Conversion", selection: $selectedUnits) {
                    ForEach(0..<conversions.count) {
                        Text(conversions[$0])
                    }
                }
                
                
                Picker("Convert from", selection: $inputUnit) {
                    ForEach(unitTypes[selectedUnits], id: \.self) {
                        Text(formatter.string(from:$0).capitalized)
                    }
                }
                
                
                Picker("Convert to", selection: $outputUnit) {
                    ForEach(unitTypes[selectedUnits], id: \.self) {
                        Text(formatter.string(from:$0).capitalized)
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
            .onChange(of: selectedUnits) { newSelection in
                let units = unitTypes[newSelection]
                inputUnit = units[0]
                outputUnit = units[1]
            }
        }
    }
    init() {
        formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.unitStyle = .long
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
