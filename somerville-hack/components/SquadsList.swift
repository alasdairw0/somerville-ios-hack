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
        VStack {
            Text(title)
            List(squads, id: \.id) { squad in
                Text(squad.name)
            }
        }
        
    }
}


struct SquadsList_Previews: PreviewProvider {
    static var previews: some View {
        SquadsList(squads: squadsList)
    }
}
