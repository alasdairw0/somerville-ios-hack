//
//  SquadDetail.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 04/03/2021.
//

import SwiftUI

struct SquadDetail: View {
    var squad: Squad
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(squad.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(squad.description)
                                
                VStack {
                    Text("About  \(squad.name)")
                        .font(.title2)
                    Text(squad.about)
                }
                .padding(.top)
                
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading).padding()
        }
    }
}

struct SquadDetail_Previews: PreviewProvider {
    static var previews: some View {
        SquadDetail(squad: squadsList[0])
    }
}
