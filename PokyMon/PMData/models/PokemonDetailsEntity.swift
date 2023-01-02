//
//  PokemonDetailsEntity.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

struct PokemonDetailsEntity: Codable {
    var id: Int
    var base_experience: Int
    var name: String
    var height: Int
    var weight: Int
    var types: [TypesEntity]
    var abilities: [AbilitiesEntity]
    var stats: [StatisticsEntity]
}
