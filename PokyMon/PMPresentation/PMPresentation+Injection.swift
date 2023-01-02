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
    
    // - MARK: Mappers
    static let pokemonModelMapper = Factory { PokemonModelMapper() }
    static let pokemonDetailsModelMapper = Factory { PokemonDetailsModelMapper() }
    static let typesModelMapper = Factory { TypesModelMapper() }
    static let abilitiesModelMapper = Factory { AbilitiesModelMapper() }
    static let statisticsModelMapper = Factory { StatisticsModelMapper() }
}
