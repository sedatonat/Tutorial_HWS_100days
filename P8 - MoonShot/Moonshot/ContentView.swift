//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Hudson on 09/11/2021.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    // to make the app remember the setting, we changed @State to @AppStorage
    @AppStorage("showingGrid") private var showingGrig = true
    
    
    var body: some View {
        NavigationView {
            Group {  // in order to attach view modifiers we had to group them
                if showingGrig {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                    
                }
            }
            .toolbar {
                Button {
                    showingGrig.toggle()
                } label: {
                    if showingGrig {
                        Label(" Show as table", systemImage: "list.dash")
                    } else {
                        Label("Show as grid", systemImage: "square.grid.2x2")
                    }
                }
            }
                .navigationTitle("Moonshot")
                .background(.darkBackground)  // Actually it doesn't work on lists
                .preferredColorScheme(.dark)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
