//
//  Types.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

struct Types: Codable {
    var types: [TypeEntity]
}

struct TypeEntity: Codable {
    var name: String
}
