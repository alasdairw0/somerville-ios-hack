//
//  Address.swift
//  somerville-hack
//
//  Created by Alasdair West on 05/03/2021.
//

import SwiftUI

struct Address: View {
    var line1: String = ""
    var line2: String = ""
    var city: String = ""
    var postcode: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text(line1)
                .fontWeight(.bold)
            Text(line2)
            Text(city)
            Text(postcode)
        }
        
    }
}

struct Address_Previews: PreviewProvider {
    static var previews: some View {
        Address(line1: "AND Digital", line2: "9-10 St Andrews Square", city: "Edinburgh", postcode: "EH2 2AF")
    }
}
