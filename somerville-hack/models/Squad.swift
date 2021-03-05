//
//  Squad.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import Foundation

struct Squad: Hashable, Codable {
    var id: Int
    var name: String
    var description: String
    var about: String
    var members: [Andi]
    
    struct Andi: Hashable, Codable {
        var id: Int
        var name: String
        var imageUrl: String
    }
}

