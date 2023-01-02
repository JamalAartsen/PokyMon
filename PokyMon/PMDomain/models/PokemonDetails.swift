//
//  PokemonDetails.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

public struct PokemonDetails {
    var id: Int
    var base_experience: Int
    var name: String
    var height: Int
    var weight: Int
    var types: [Types]
    var abilities: [Abilities]
    var stats: [Statistics]
}
