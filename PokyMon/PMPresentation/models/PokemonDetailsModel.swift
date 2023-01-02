//
//  PokemonDetailsModel.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

public struct PokemonDetailsModel {
    var id: Int
    var base_experience: Int
    var name: String
    var height: Int
    var weight: Int
    var types: [TypesModel]
    var abilities: [AbilitiesModel]
    var stats: [StatisticsModel]
    var imageURL: String
}
