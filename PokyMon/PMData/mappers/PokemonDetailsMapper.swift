//
//  PokemonDetailsMapper.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation
import Factory

class PokemonDetailsMapper {
    
    @Injected(Container.typesMapper) private var typesMapper
    @Injected(Container.abilitiesMapper) private var abilitiesMapper
    @Injected(Container.statisticsMapper) private var statisticsMapper
    
    func map(pokemonDetailsEntity: PokemonDetailsEntity) -> PokemonDetails {
        return PokemonDetails(
            id: pokemonDetailsEntity.id,
            base_experience: pokemonDetailsEntity.base_experience,
            name: pokemonDetailsEntity.name, height: pokemonDetailsEntity.height,
            weight: pokemonDetailsEntity.weight,
            types: pokemonDetailsEntity.types.compactMap({ typesMapper.mapTypes(type: $0) }),
            abilities: pokemonDetailsEntity.abilities.compactMap({ abilitiesMapper.mapAbilities(ability: $0) }),
            stats: pokemonDetailsEntity.stats.compactMap({ statisticsMapper.mapStatistics(statistic: $0) }))
    }
}

class TypesMapper {
    func mapTypes(type: TypesEntity) -> Types {
        return Types(type: mapType(type: type.type))
    }
    
    func mapType(type: TypeEntity) -> TypePokemon {
        return TypePokemon(name: type.name)
    }
}

class AbilitiesMapper {
    func mapAbilities(ability: AbilitiesEntity) -> Abilities {
        return Abilities(ability: mapAbility(ability: ability.ability))
    }
    
    func mapAbility(ability: AbilityEntity) -> Ability {
        return Ability(name: ability.name)
    }
}

class StatisticsMapper {
    func mapStatistics(statistic: StatisticsEntity) -> Statistics {
        return Statistics(base_stat: statistic.base_stat, stat: mapStatistic(statstic: statistic.stat))
    }
    
    func mapStatistic(statstic: StatisticEntity) -> Statistic {
        return Statistic(name: statstic.name)
    }
}
