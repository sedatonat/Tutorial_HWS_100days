//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Paul Hudson on 26/11/2021.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
