//
//  SquadsList.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI

struct SquadsList: View {
    var title: String
//    var squad: Squad
    var body: some View {
        VStack {
            Text(title)
//            Text(squad.name)
//            List(squads, id: \.id) { squad in
//                Text(squad.name)
//            }
        }
        
    }
}


struct SquadsList_Previews: PreviewProvider {
    static var previews: some View {
        SquadsList(title: "Overrioded title")
    }
}
