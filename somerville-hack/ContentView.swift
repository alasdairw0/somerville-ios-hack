//
//  ContentView.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    @State private var currentPage = ""
    
    var body: some View {
        VStack {
            MyComponent(title: "This is my Title", subtitle: "This is my subtitle")
            
            Button("About page") {
                self.currentPage = "about"
                showingSheet.toggle()
            }
            Button("Squads page") {
                showingSheet.toggle()
            }
            Button("Clients page") {
                showingSheet.toggle()
            }
            Text(squadsList[0].name)
            
            Spacer()
            
        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
        
        .sheet(isPresented: $showingSheet) {
            switch self.currentPage {
            case "about":
                AboutView()
            default:
                Text("default")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
