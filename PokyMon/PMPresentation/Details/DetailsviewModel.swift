//
//  DetailsviewModel.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation
import Foundation
import Factory

@MainActor class DetailsViewModel: ObservableObject {
   
    @Published private(set) var pokemon: PokemonDetailsModel? = nil
    @Injected(Container.getPokemonByIDWorker) private var getPokemonByIDWorker
    @Injected(Container.pokemonDetailsModelMapper) private var pokemonDetailsMapper
    
    func getPokemonByID(id: Int) async {
        do {
            if let pokemon = try await getPokemonByIDWorker.getPokemonByID(id: id) {
                print("💯 Jamal: \(pokemon)")
                self.pokemon = pokemonDetailsMapper.map(pokemonDetails: pokemon)
            }
        } catch {
            print("💯 Error: \(error)")
        }
    }
}
