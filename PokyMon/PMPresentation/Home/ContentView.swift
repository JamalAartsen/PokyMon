//
//  ContentView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 23/12/2022.
//

import SwiftUI
import Factory

/// Moet een tabview worden, kijk: https://www.hackingwithswift.com/quick-start/swiftui/adding-tabview-and-tabitem
/// Sharing data between views: https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-environmentobject-to-share-data-between-views
struct ContentView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    @State private var searchText = ""
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        
        ZStack {
            Color(hex: "#EDF6FF").ignoresSafeArea()
            VStack {
                SearchBar(text: $searchText)
                TitleView(title: "All Pokemons", bottomPadding: -5, leftPadding: 15)
                ScrollView {
                    // TODO: This filter can maybe put in nde viewmodel
                    LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                        ForEach(viewModel.pokemons.filter({"\($0)".contains(searchText.capitalizingFirstLetter()) || searchText.isEmpty}), id: \.self) { pokemon in
                            NavigationLink(destination: DetailsView(id: pokemon.id), label: {
                                Card(name: pokemon.name, image: pokemon.imageURL, id: pokemon.id)
                            })
                        }
                    }.onAppear {
                        Task {
                            await viewModel.getAllPokemons()
                        }
                    }
                    .padding(15)
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
