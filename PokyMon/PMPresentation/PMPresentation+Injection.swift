//
//  PMPresentation+Injection.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
//

import Foundation

import Foundation
import Factory

extension Container {
    static let imageURLCreater = Factory { ImageURLCreater() }
    static let pokemonModelMapper = Factory { PokemonModelMapper() }
}
