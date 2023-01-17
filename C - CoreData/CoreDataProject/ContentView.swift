//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Paul Hudson on 26/11/2021.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = "A"
    @State private var filterType = FilterType.contains
    @State private var sortDescriptors = [SortDescriptor<Singer>]()

    var body: some View {
        VStack {
            FilteredList(type: filterType, filterKey: "lastName", filterValue: lastNameFilter, sortDescriptors: sortDescriptors) { (singer: Singer) in
                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
            }

            Button("Add Examples") {
                let taylor = Singer(context: moc)
                taylor.firstName = "Taylor"
                taylor.lastName = "Swift"

                let ed = Singer(context: moc)
                ed.firstName = "Ed"
                ed.lastName = "Sheeran"

                let adele = Singer(context: moc)
                adele.firstName = "Adele"
                adele.lastName = "Adkins"

                try? moc.save()
            }

            Button("Show A") {
                lastNameFilter = "A"
            }

            Button("Show S") {
                lastNameFilter = "S"
            }

            Button("Begins with") {
                filterType = .beginsWith
            }

            Button("Contains") {
                filterType = .contains
            }

            Button("Sort A-Z") {
                sortDescriptors = [SortDescriptor(\.firstName)]
            }

            Button("Sort Z-A") {
                sortDescriptors = [SortDescriptor(\.firstName, order: .reverse)]
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
