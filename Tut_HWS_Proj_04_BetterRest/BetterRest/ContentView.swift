//
//  ContentView.swift
//  BetterRest
//
//  Created by Sedat Onat on 22.12.2022.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var cofeeeAmount = 1
    
    
    // reading a property from another property will cinfuse Swift becuase it cannot know the priority of it. Statis helps us in this
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    var sleepResults: String {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60  // "?? 0" is for just in case we cannot read the value
            let minute = (components.minute ?? 0) * 60  // "?? 0" is for just in case we cannot read the value
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(cofeeeAmount))  // Since prediction model works in double number format, we had to change the formats to the double
            
            let sleepTime = wakeUp - prediction.actualSleep
            return "Your ideal bedtime is..." + sleepTime.formatted(date: .omitted, time: .shortened)
            
            
        } catch {  // ctach errors
            return "There was en error"
        }
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section("When do you want to wake up?") {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()  // Hides the label
                }
                
                Section {
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                } header: {
                    Text("Desired amount of sleep")
//                        .font(.headline)
                }
                
                
//                Section {
//                    Stepper(cofeeeAmount == 1 ? "1 cup" : "\(cofeeeAmount) cups", value: $cofeeeAmount, in: 1...20)
//                } header: {
//                    Text("Daily cofee intake")
//                        .font(.headline)
//                }
                
                
                Section("Daily cofee intake") {
                    Picker("Number of cups", selection: $cofeeeAmount) {
                        ForEach(1..<21) {
                            Text(String($0))
                        }
                    }
                }
                
                Text(sleepResults)
                    .font(.title3)
                
                .navigationTitle("BetterRest")
               
       
                
            }
     
        }
    }
    

    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
