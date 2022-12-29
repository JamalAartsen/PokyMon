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
    
    var body: some View {
        
        ZStack {
            Color(hex: "#EDF6FF").ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                    .onAppear {
                        Task {
                            await viewModel.getAllPokemons()
                            print("💯 contentview pokemons: \(viewModel.pokemons)")
                        }
                    }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
