//
//  ContentView.swift
//  MoonShot
//
//  Created by Sedat Onat on 4.01.2023.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    
    var body: some View {
        Text("\(astronauts.count)")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
