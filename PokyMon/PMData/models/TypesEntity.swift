//
//  TypesEntity.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

struct TypesEntity: Codable {
    var type: TypeEntity
}

struct TypeEntity: Codable {
    var name: String
}
