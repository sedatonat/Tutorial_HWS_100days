//
//  ContentView.swift
//  BetterRest
//
//  Created by Sedat Onat on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    
    var body: some View {
        Stepper("\(sleepAmount) hours", value: $sleepAmount)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
