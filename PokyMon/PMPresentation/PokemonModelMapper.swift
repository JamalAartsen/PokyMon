//
//  PokemonModelMapper.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
//

import Foundation
import Factory

class PokemonModelMapper {
    @Injected(Container.imageURLCreater) private var imageURLCreater
    private var baseURL = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"
    
    func map(pokemon: Pokemon) -> PokemonModel {
        return PokemonModel(
            id: pokemon.id,
            name: pokemon.name.capitalizingFirstLetter(),
            url: pokemon.url,
            imageURL: imageURLCreater.createURL(baseURL: baseURL, id: pokemon.id)
        )
    }
}
