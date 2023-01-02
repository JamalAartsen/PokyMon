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
                    
                    AsyncImage(url: URL(string: viewModel.pokemon?.imageURL ?? "")) { image in
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
        }.toolbar {
            Button {
                self.isFavoriteClicked.toggle()
            } label: {
                Label("Favorite", systemImage: self.isFavoriteClicked ? "heart.fill" : "heart")
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(id: 1)
    }
}
