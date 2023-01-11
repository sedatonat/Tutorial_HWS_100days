//
//  Test1.swift
//  LoadImgaeFromServer
//
//  Created by Sedat Onat on 11.01.2023.
//

import SwiftUI

struct Test1: View {
    var body: some View {
        AsyncImage(url: URL(string:"https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width:200, height: 200)
    }
}

struct Test1_Previews: PreviewProvider {
    static var previews: some View {
        Test1()
    }
}
