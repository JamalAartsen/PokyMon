//
//  TypesModel.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

struct TypesModel: Codable, Identifiable {
    var id = UUID()
    var type: TypeModel
}

struct TypeModel: Codable {
    var name: String
}
