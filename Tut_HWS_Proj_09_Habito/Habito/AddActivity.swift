//
//  AddActivity.swift
//  Habito
//
//  Created by Sedat Onat on 9.01.2023.
//

import SwiftUI

struct AddActivity: View {
    @ObservedObject var data: Activities
    @State private var title = ""
    @State private var description = ""
    
    @Environment(\.dismiss) var dismiss  // close the screen
    
    
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add Activity")
            .toolbar {
                Button("Save") {
                    
                    // to be sure that title will be withot spaces
                    let trimmedTitle = title.trimmingCharacters(in: .whitespaces)
                    
                    // title should have at least 1 non whitespace
                    guard trimmedTitle.isEmpty == false else { return }
                    
                    // defining the activity
                    let activity = Activity(title: trimmedTitle, description: description)
                    
                    // append the activity
                    data.activities.append(activity)
                    
                    // close the screen
                    dismiss()
                    
                    
                    }
                }
            }
        }
    }
}

struct AddActivity_Previews: PreviewProvider {
    static var previews: some View {
        AddActivity()
    }
}
