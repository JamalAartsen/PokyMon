//
//  PokemonMapper.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

class PokemonMapper {
    func map(entity: PokemonEntity) -> Pokemon? {
        return Pokemon(
            id: entity.url.slice(from: "pokemon/", to: "/").stringToInt(),
            name: entity.name,
            url: entity.url
        )
    }
}
