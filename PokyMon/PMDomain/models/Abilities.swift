//
//  Abilities.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

public struct Abilities: Codable {
    var ability: Ability
}

public struct Ability: Codable {
    var name: String
}
