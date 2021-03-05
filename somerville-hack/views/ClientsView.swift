//
//  ClientsView.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 04/03/2021.
//

import SwiftUI

struct ClientView: View {
    var clients: [Client]
    
    var body: some View {
        NavigationView {
            Text("Clients page")
                .navigationTitle("Our Clients")
        }
    }
}

struct ClientsView_Previews: PreviewProvider {
    static var previews: some View {
        ClientView(clients: clientsList)
    }
}
