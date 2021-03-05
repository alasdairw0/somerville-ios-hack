//
//  AboutView.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 04/03/2021.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView() {
            VStack {
                MapView(lat: 55.9535, lng: -3.1917, pinLat: 55.9536, pinLng: -3.1942)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 200)
                
                CircleImage(image: Image("MarySomerville"))
                    .offset(y: -110)
                    .padding(.bottom, -130)
                
                
                VStack(alignment: .leading) {
                    Text("Club Somerville was founded in February 2020 and is the best club in AND. Named after Mary Somerville, it represents ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan ante orci, nec hendrerit metus fermentum ut. Nullam a massa ullamcorper, vestibulum libero quis, bibendum magna. Maecenas sagittis mattis auctor. Ut sed pulvinar est. Vivamus lobortis bibendum pretium. Sed fermentum nibh at ex auctor, ac pretium orci maximus.")
                        .font(.body).padding(.bottom, 20)
                    
                    Text("Who is Mary Somerville?")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                    Text("Sed arcu sem, convallis sed rutrum ac, interdum nec nisi. Ut risus odio, feugiat sodales sagittis sit amet, eleifend vel justo. Quisque euismod pellentesque diam, ut posuere mauris lacinia mattis. Sed vulputate mi sed lorem consequat, imperdiet tristique elit accumsan. Maecenas ullamcorper eget lacus ut ullamcorper. Nunc arcu dolor, pellentesque a felis suscipit, vestibulum faucibus sapien. Etiam dignissim faucibus nibh in porttitor. Proin gravida dignissim nunc. Fusce eu fermentum tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque dignissim interdum efficitur. Aenean suscipit, dolor et congue tincidunt, augue tortor iaculis dui, eget sodales mi orci congue lectus. Quisque maximus scelerisque nisi. Maecenas auctor lorem id tellus dictum tempus.")
                        .font(.body).padding(.bottom, 20)
                    Text("Come find us")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                    Text("We're right in the heart of Edinburgh based on St Andrews Square, a stones throw from Princes St and Waverley Station.")
                        .font(.body).padding(.bottom, 10)
                    Address(line1: "AND Digital", line2: "9-10 St Andrews Square", city: "Edinburgh", postcode: "EH2 2AF").padding(.leading)
                }.padding(16).padding(.top, 32)
                
            }
            
            Spacer()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
