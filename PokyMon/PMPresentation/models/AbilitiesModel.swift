//
//  AbilitiesModel.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

struct AbilitiesModel: Codable {
    var ability: AbilityModel
}

struct AbilityModel: Codable {
    var name: String
}
