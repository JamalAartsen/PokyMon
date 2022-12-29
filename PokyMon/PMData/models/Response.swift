//
//  Response.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

struct Response: Codable {
    let count: Int
    var results: [PokemonEntity]
}
