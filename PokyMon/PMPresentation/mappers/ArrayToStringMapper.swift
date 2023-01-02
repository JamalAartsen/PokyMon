//
//  ArrayToStringMapper.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import Foundation

class ArrayToStringMapper {
    func mapTypesModelArray(array: [TypesModel]) -> String {
        var newArray: [String] = []
        
        array.forEach { type in
            newArray.append(type.type.name)
        }
        
        return newArray.arrayToString()
    }
    
    func mapAbilitiesModelArray(array: [AbilitiesModel]) -> String {
        var newArray: [String] = []
        
        array.forEach { ability in
            newArray.append(ability.ability.name)
        }
        
        return newArray.arrayToString()
    }
}
