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
        print("💯 This is the jamal method inside homeViewModel!")
        
        do {
            let allPokemons = try await getPokemonsWorker.getPokemons()
            print("💯 All pokemons in viewmodel: \(allPokemons)")
            pokemons = allPokemons.compactMap({ pokemonModelMapper.map(pokemon: $0) })
        } catch {
            print("💯 Error: \(error)")
        }
        
        print("💯 You get the pokemons!")
        
    }
}
