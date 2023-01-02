//
//  PokemonDetailsModelMapper.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation
import Factory

class PokemonDetailsModelMapper {
    
    @Injected(Container.typesModelMapper) private var typesModelMapper
    @Injected(Container.abilitiesModelMapper) private var abilitiesModelMapper
    @Injected(Container.statisticsModelMapper) private var statisticsModelMapper
    
    @Injected(Container.imageURLCreater) private var imageURLCreater
    private var baseURL = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/"
    
    func map(pokemonDetails: PokemonDetails) -> PokemonDetailsModel {
        return PokemonDetailsModel(
            id: pokemonDetails.id,
            base_experience: pokemonDetails.base_experience,
            name: pokemonDetails.name.capitalizingFirstLetter(),
            height: pokemonDetails.height,
            weight: pokemonDetails.weight,
            types: pokemonDetails.types.compactMap({ typesModelMapper.mapTypes(type: $0) }),
            abilities: pokemonDetails.abilities.compactMap({ abilitiesModelMapper.mapAbilities(ability: $0) }),
            stats: pokemonDetails.stats.compactMap({ statisticsModelMapper.mapStatistics(statistic: $0) }),
            imageURL: imageURLCreater.createURL(baseURL: baseURL, id: pokemonDetails.id))
    }
}

class TypesModelMapper {
    func mapTypes(type: Types) -> TypesModel {
        return TypesModel(type: mapType(type: type.type))
    }
    
    func mapType(type: TypePokemon) -> TypeModel {
        return TypeModel(name: type.name.capitalizingFirstLetter())
    }
}

class AbilitiesModelMapper {
    func mapAbilities(ability: Abilities) -> AbilitiesModel {
        return AbilitiesModel(ability: mapAbility(ability: ability.ability))
    }
    
    func mapAbility(ability: Ability) -> AbilityModel {
        return AbilityModel(name: ability.name.capitalizingFirstLetter())
    }
}

class StatisticsModelMapper {
    func mapStatistics(statistic: Statistics) -> StatisticsModel {
        return StatisticsModel(base_stat: statistic.base_stat, stat: mapStatistic(statstic: statistic.stat))
    }
    
    func mapStatistic(statstic: Statistic) -> StatisticModel {
        return StatisticModel(name: statstic.name)
    }
}
