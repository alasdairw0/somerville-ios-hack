//
//  MyComponent.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI


struct MyComponent: View {
    var title: String
    var subtitle: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(subtitle)
                .font(.title)
        }
    }
}


struct MyComponent_Previews: PreviewProvider {
    static var previews: some View {
        MyComponent(title: "Test Title", subtitle: "Test SubTitle")
    }
}
