//
//  ContentView.swift
//  iTunesList
//
//  Created by Sedat Onat on 10.01.2023.
//

import SwiftUI

struct Response: Codable {
    var results: [Result]
}


struct Result: Codable {
    var trackID: Int
    var trackName: String
    var collestionName: String
}

struct ContentView: View {
    @State private var results = [Result]()
    
    
    var body: some View {
        List(results, id: \.trackID) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collestionName)
                    
            }
        }
        .task {
            await loadData()  // Swift knows that it might go to sleep
        }
    }
    
    func loadData() async {
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
