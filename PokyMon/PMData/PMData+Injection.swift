//
//  PMData+Injection.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation
import Factory

extension Container {
    static let getPokemonsWorker = Factory { PokemonsRepository() as GetPokemonsWorker }
    static let getPokemonByIDWorker = Factory { PokemonByIDRepository() as GetPokemonByIDWorker }
    static let pokemonAPI = Factory { PokemonAPI() as PokemonAPIProtocol }
    
    // - MARK: Mappers
    static let pokemonMapper = Factory { PokemonMapper() }
    static let pokemonDetailsMapper = Factory { PokemonDetailsMapper() }
    static let typesMapper = Factory { TypesMapper() }
    static let abilitiesMapper = Factory { AbilitiesMapper() }
    static let statisticsMapper = Factory { StatisticsMapper() }
}
