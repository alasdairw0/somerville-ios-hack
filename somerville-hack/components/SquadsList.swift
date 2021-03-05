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
            Text(title).font(.title2).padding(.horizontal)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0 ..< squads.count) { index in
                        NavigationLink(
                            destination: SquadDetail(squad: squads[index])) {
                            Image(squads[index].name)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                    }
                }.padding()
            }
        }
    }
}





struct SquadsList_Previews: PreviewProvider {
    static var previews: some View {
        SquadsList(squads: squadsList)
    }
}

