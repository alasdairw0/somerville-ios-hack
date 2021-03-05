//
//  Tag.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 05/03/2021.
//

import SwiftUI

struct Tag: View {
    var content: String
    
    var body: some View {
        Text(content)
            .font(.body)
            .fontWeight(.bold)
            .padding()
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(15.0)
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
            Tag(content: "React")
            Tag(content: "Node.js")
    }
}
