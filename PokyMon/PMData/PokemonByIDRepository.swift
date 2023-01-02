//
//  PokemonByIDRepository.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation
import Factory

class PokemonByIDRepository: GetPokemonByIDWorker {
    @Injected(Container.pokemonAPI) private var pokemonAPI
    
    func getPokemonByID(id: Int) async throws -> PokemonDetails? {
        return try await pokemonAPI.fetchPokemonByID(id: id)
    }
}
