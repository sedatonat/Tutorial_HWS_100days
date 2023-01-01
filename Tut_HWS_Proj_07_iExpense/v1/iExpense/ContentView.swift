//
//  ContentView.swift
//  iExpense
//
//  Created by Sedat Onat on 1.01.2023.
//

import SwiftUI

struct User {
    var firstName = "Bilbo"
    var lastName = "Bagging"
}

struct ContentView: View {
    @State private var user = User()  // Connects to User struct
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
