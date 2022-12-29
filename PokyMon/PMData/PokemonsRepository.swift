//
//  PokemonsRepository.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
//

import Foundation
import Factory

class PokemonsRepository: GetPokemonsWorker {
    @Injected(Container.pokemonAPI) private var pokemonAPI
    
    func getPokemons() async throws -> [Pokemon] {
        return try await pokemonAPI.fetchPokemons()
    }
}
