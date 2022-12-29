//
//  PokemonAPI.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation
import Factory

class PokemonAPI: PokemonAPIProtocol {
    
    @Injected(Container.pokemonMapper) private var pokemonMapper
    
    private var session = URLSession.shared
    private let baseURL = "pokeapi.co"
    private let scheme = "https"
    
    func fetchPokemons() async throws -> [Pokemon] {
        guard let url = URL(string: .createComplicatedUrl(scheme: scheme, host: baseURL, path: PokemonAPIEndpoints.pokemon)) else { return [] }
        
        let (data, _) = try await session.data(from: url)
        let pokemons = try JSONDecoder().decode(Response.self, from: data)
        
        return pokemons.results.compactMap({ pokemonMapper.map(entity: $0) })
    }
}

struct PokemonAPIEndpoints {
    static let pokemon = "/api/v2/pokemon"
}
