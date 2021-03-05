//
//  ClientRow.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 04/03/2021.
//

import SwiftUI

struct ClientRow: View {
    @State
        private var height: CGFloat = .zero // < calculable height
    
    var clients: [Client]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Our clients")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(clients, id: \.id) { client in
                        NavigationLink(destination: ClientView(
                            name: client.name,
                            description: client.description,
                            colorRef: client.colorRef
                        )) {
                            ClientButton(client: client)
                        }
                    }
                }
                .frame(minHeight: 0,
                   maxHeight: .infinity)
            }
            .frame(height: 250)
        }
        .alignmentGuide(.top, computeValue: { d in
            DispatchQueue.main.async { // << dynamically detected - needs to be async !!
                self.height = max(d.height, self.height)
            }
            return d[.top]
        })
    }
}

struct ClientRow_Previews: PreviewProvider {
    static var previews: some View {
        ClientRow(clients: clientsList)
    }
}
