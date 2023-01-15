//
//  DataController.swift
//  Bookworm
//
//  Created by Paul Hudson on 23/11/2021.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    // NS Prefix means "NextStep" the company that Steve Jobs founded and later that merged with Apple when Steve Jobs returned to Apple

    
    // In case the data fails
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
