//
//  GetPokemonByIDWorker.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

public protocol GetPokemonByIDWorker {
    func getPokemonByID(id: Int) async throws -> PokemonDetails?
}
