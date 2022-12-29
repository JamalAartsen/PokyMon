//
//  GetPokemonWorker.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

public protocol GetPokemonsWorker {
    func getPokemons() async throws -> [Pokemon]
}
