//
//  PokemonDetailsEntity.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

struct PokemonDetailsEntity: Codable {
    let id = UUID()
    
    var base_experience: Int
    var name: String
    var height: Int
    var weight: Int
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case base_experience
//        case name
//        case height
//        case weight
//    }
}
