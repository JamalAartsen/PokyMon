//
//  AbilitiesEntity.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

struct AbilitiesEntity: Codable {
    var ability: AbilityEntity
}

struct AbilityEntity: Codable {
    var name: String
}
