//
//  CharacterDetailsInformationView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import SwiftUI
import Factory

struct CharacterDetailsInformationView: View {
    
    var selectedDetails: CharacterDetails
    var pokemonDetailsModel: PokemonDetailsModel
    @Injected(Container.arrayToStringMapper) private var arrayToStringMapper
    
    var body: some View {
        switch selectedDetails {
        case .about:
            About(aboutDetails: AboutDetails(
                name: pokemonDetailsModel.name,
                id: pokemonDetailsModel.id.description.createID(),
                base: "\(pokemonDetailsModel.base_experience) XP",
                weight: "\(pokemonDetailsModel.weight) kg",
                /// Hier moet misschien een berekening gedaan worden
                height: "\(pokemonDetailsModel.height) m",
                types: arrayToStringMapper.mapTypesModelArray(array: pokemonDetailsModel.types),
                abilities: arrayToStringMapper.mapAbilitiesModelArray(array: pokemonDetailsModel.abilities)
            ))
        case .stats:
            Text("Stats")
        case .evolution:
            Text("Evolution")
        }
    }
}
