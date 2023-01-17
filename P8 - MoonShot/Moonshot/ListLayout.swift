//
//  ListLayout.swift
//  Moonshot
//
//  Created by Sedat Onat on 7.01.2023.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        
                        Text(mission.formattedLaunchDate)
                    }
                }
            }
            
            .listRowBackground(Color.darkBackground)
            
        }
        
        .listStyle(.plain)  // edge to adge solor
    }
}

struct ListLayout_Previews: PreviewProvider {
    static var previews: some View {
        ListLayout(
            astronauts: Bundle.main.decode("astronauts.json"),
            missions: Bundle.main.decode("missions.json")
        )
        .preferredColorScheme(.dark)
    }
}
