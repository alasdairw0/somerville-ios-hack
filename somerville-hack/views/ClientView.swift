//
//  ClientsView.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 04/03/2021.
//

import SwiftUI

struct ClientView: View {
    var name: String
    var description: String
    var colorRef: String = "and"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Rectangle()
                    .fill(Color(colorRef))
                    .frame(width: .infinity, height: 100)
                
                Text(description)
                    .offset(y: -10)
                
                Spacer()
            }
            .navigationTitle(name)
        }
        
    }
}

struct ClientsView_Previews: PreviewProvider {
    static var previews: some View {
        ClientView(
            name: clientsList[0].name,
            description: clientsList[0].description,
            colorRef: clientsList[0].colorRef
        )
    }
}
