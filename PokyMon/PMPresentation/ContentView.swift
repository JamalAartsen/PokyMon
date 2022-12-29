//
//  ContentView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 23/12/2022.
//

import SwiftUI
import Factory

struct ContentView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    @State private var searchText = ""
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(hex: "#EDF6FF").ignoresSafeArea()
                VStack {
                    SearchBar(text: $searchText)
                    Text("All Pokemons")
                        .font(.system(size: 25, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.bottom, -5)
                    ScrollView {
                        // TODO: This filter can maybe put in nde viewmodel
                        LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                            ForEach(viewModel.pokemons.filter({"\($0)".contains(searchText.capitalizingFirstLetter()) || searchText.isEmpty}), id: \.self) { pokemon in
                                Card(name: pokemon.name, image: pokemon.imageURL, id: pokemon.id)
                            }
                        }.onAppear {
                            Task {
                                await viewModel.getAllPokemons()
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
