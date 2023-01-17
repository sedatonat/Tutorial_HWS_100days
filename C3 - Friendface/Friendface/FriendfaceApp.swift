//
//  FriendfaceApp.swift
//  Friendface
//
//  Created by Paul Hudson on 30/11/2021.
//

import SwiftUI

@main
struct FriendfaceApp: App {
    @StateObject var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
