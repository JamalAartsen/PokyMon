//
//  PMData+Injection.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation
import Factory

extension Container {
    static let pokemonMapper = Factory { PokemonMapper() }
    static let getPokemonsWorker = Factory { PokemonsRepository() as GetPokemonsWorker }
    static let pokemonAPI = Factory { PokemonAPI() as PokemonAPIProtocol }
}
