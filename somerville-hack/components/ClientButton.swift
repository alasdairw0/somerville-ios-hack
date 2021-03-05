//
//  ClientButton.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 04/03/2021.
//

import SwiftUI

struct ClientButton: View {
    var client: Client
    var imageSize: CGFloat = 155

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .background(Circle().fill(Color.white))
                .shadow(color: Color.black.opacity(0.2), radius: 7)
                .frame(width: imageSize + 75, height: imageSize + 75)
            
            client.image
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                .frame(width: imageSize, height: imageSize)
        }
        .padding(.horizontal, 25)
    }
}

struct ClientButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ClientButton(client: clientsList[0])
            ClientButton(client: clientsList[1])
            ClientButton(client: clientsList[2])
        }
        .previewLayout(.fixed(width: 400, height: 400))
    }
}
