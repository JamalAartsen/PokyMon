//
//  HomeViewModel.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation
import Factory

@MainActor class HomeViewModel: ObservableObject {
    
    @Published private(set) var pokemons = [PokemonModel]()
    @Injected(Container.getPokemonsWorker) private var getPokemonsWorker
    @Injected(Container.pokemonModelMapper) private var pokemonModelMapper

    func getAllPokemons() async {
        do {
            let allPokemons = try await getPokemonsWorker.getPokemons()
            pokemons = allPokemons.compactMap({ pokemonModelMapper.map(pokemon: $0) })
        } catch {
            print("💯 Error: \(error)")
        }
    }
}
