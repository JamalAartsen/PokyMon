//
//  DetailsView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import SwiftUI

struct DetailsView: View {
    
    var id: Int
    @StateObject private var viewModel = DetailsViewModel()
    @State var isFavoriteClicked = false
    @State private var selectedDetails: CharacterDetails = .about
    
    var body: some View {
        ZStack {
            Color(hex: "#EDF6FF").ignoresSafeArea()
            ScrollView {
                VStack {
                    HStack {
                        Text("\(viewModel.pokemon?.name ?? "")")
                            .foregroundColor(Color(hex: "#0E0940"))
                            .font(.system(size: 32, weight: .bold))
                            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                        Spacer()
                        Text("#\(viewModel.pokemon?.id.description.createID() ?? "")")
                            .foregroundColor(Color(hex: "#0E0940"))
                            .opacity(0.5)
                            .font(.system(size: 24))
                            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                    }.onAppear {
                        Task {
                            await viewModel.getPokemonByID(id: id)
                        }
                    }
                    
                    HStack {
                        // TODO: Als hier teveel van zijn moeten ze naar de volgende regel gaan. Dat is nog niet het geval hier.
                        ForEach(viewModel.pokemon?.types ?? []) { type in
                            TypeView(name: type.type.name)
                        }
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
                    
                    DetailsCharacterImage(imageURL: viewModel.pokemon?.imageURL)
                    
                    Picker("Choose details", selection: $selectedDetails) {
                        ForEach(CharacterDetails.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    
                    if let pokemon = viewModel.pokemon {
                        CharacterDetailsInformationView(
                            selectedDetails: selectedDetails,
                            pokemonDetailsModel: pokemon
                        ).padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                    } else {
                        ProgressView()
                    }
                    
                }
            }
        }.toolbar {
            FavoriteButton(isFavoriteClicked: $isFavoriteClicked)
        }
    }
}

struct FavoriteButton: View {
    
    @Binding var isFavoriteClicked: Bool
    
    var body: some View {
        Button {
            isFavoriteClicked.toggle()
        } label: {
            Label("Favorite", systemImage: isFavoriteClicked ? "heart.fill" : "heart")
        }
    }
}

struct DetailsCharacterImage: View {
    
    var imageURL: String?
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL ?? "")) { image in
            if let image = image {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
        } placeholder: {
            ProgressView()
                .frame(width: 200, height: 200)
        }
        .padding(24)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(id: 1)
    }
}
