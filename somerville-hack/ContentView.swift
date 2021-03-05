//
//  ContentView.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI


struct ContentView: View {
    @State private var showingAbout = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("Edinburgh")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                    Spacer()
                }
                
                VStack(alignment: .trailing) {
                    Text("Welcome to Club Somerville, where you will learn everything that makes Somerville awesome. Hundred percent best club going by far. ").padding(.horizontal)
                    Button("Learn more") {
                        showingAbout.toggle()
                    }.padding(.trailing).padding(.bottom)
                    SquadsList(squads: squadsList)
                    Spacer()
        
                    .sheet(isPresented: $showingAbout) {
                        AboutView()
                    }
                    .navigationTitle("Club Somerville")
                }.padding(.top, 150)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
