//
//  ContentView.swift
//  Habito
//
//  Created by Sedat Onat on 8.01.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = Activities()
    
    var body: some View {
        NavigationView {
            List(data.activities) {activity in
                NavigationLink {
                    Text("Detail view")
                } label: {
                    HStack {
                        Text(activity.title)
                        Spacer()
                        Text(String(activity.completionCount))
                    }
                }
            }  // End of List
            .navigationTitle("Habito")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

