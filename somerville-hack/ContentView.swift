//
//  ContentView.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button("About page") {
                    showingSheet.toggle()
                }
                Spacer()
        
                SquadsList(squads: squadsList)
                .navigationTitle("Club Somerville")
            }
            
        }
        
        .sheet(isPresented: $showingSheet) {
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
