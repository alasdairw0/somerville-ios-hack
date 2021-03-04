//
//  SquadsList.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI

struct SquadsList: View {
    var title: String = "Squads"
    var squads: [Squad]
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .padding(.horizontal, 20)
            List(squads, id: \.id) { squad in
                NavigationLink(
                    destination: SquadDetail()) {
                    Text(squad.name)
                }
            }
            .listStyle(InsetListStyle())
        }
        
        
    }
}


struct SquadsList_Previews: PreviewProvider {
    static var previews: some View {
        SquadsList(squads: squadsList)
    }
}
