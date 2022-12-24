//
//  ContentView.swift
//  BetterRest
//
//  Created by Sedat Onat on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var cofeeeAmount = 1
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()  // Hides the label
                
                Text("Desired amount of sleep")
                    .font(.headline)
                
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                Text("Daily cofee intake")
                    .font(.headline)
                
                Stepper(cofeeeAmount == 1 ? "1 cup" : "\(cofeeeAmount) cups", value: $cofeeeAmount, in: 1...20)
                
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedTime)
            }
            
        }
    }
    
    func calculateBedTime() {
     
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
