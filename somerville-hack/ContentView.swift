//
//  ContentView.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Hello, world!")
                .padding()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/24/*@END_MENU_TOKEN@*/)
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
