//
//  PokemonAPIProtocol.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

protocol PokemonAPIProtocol {
    func fetchPokemons() async throws -> [Pokemon]
    func fetchPokemonByID(id: Int) async throws -> PokemonDetails?
}
