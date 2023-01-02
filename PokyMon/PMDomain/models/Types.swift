//
//  Types.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

public struct Types: Codable {
    var type: TypePokemon
}

/// Can not be called Type
public struct TypePokemon: Codable {
    var name: String
}
