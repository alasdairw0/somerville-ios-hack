//
//  ModelData.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import Foundation

var squadsList: [Squad] = load("squadsData.json")

func load<T: Decodable>(_ filename: String) -> T {
    print("loading")
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
