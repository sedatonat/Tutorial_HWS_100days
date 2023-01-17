//
//  Activities.swift
//  Habito
//
//  Created by Paul Hudson on 16/11/2021.
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

        activities = []
    }
}
