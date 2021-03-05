//
//  Client.swift
//  somerville-hack
//
//  Created by Joseph Shambrook on 04/03/2021.
//

import Foundation
import SwiftUI

struct Client: Hashable, Codable {
    var id: Int
    var name: String
    var description: String
    var tech: Array<String>
    var colorRef: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
