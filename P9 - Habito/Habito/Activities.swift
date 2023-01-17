//
//  Activities.swift
//  Habito
//
//  Created by Sedat Onat on 8.01.2023.
//

import Foundation

class Activities: ObservableObject {
    @Published var activities: [Activity] {
        didSet {
            if let encoded = try? JSONEncoder().encode(activities) {
                UserDefaults.standard.set(encoded, forKey: "Activities")
            }
        }
    }
    
    
    
    init() {
        if let saved = UserDefaults.standard.data(forKey: "Activities") {
            if let decoded = try? JSONDecoder().decode([Activity].self, from: saved) {
                activities = decoded
                return
                
            }
            
            
        }
        
        activities = []  // if nothing saved or saved in a wrong format
    }
}
