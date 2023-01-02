//
//  MainView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import SwiftUI
import UIKit

struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Pokemons", systemImage: "soccerball")
                    }
            }
            .onAppear {
                if #available(iOS 15.0, *) {
                    let appearance = UITabBarAppearance()
                    appearance.shadowImage = nil
                    appearance.shadowColor = nil
                    UITabBar.appearance().scrollEdgeAppearance = appearance
                    UITabBar.appearance().backgroundColor = UIColor(Color(hex: "#EDF6FF"))
                }
            }
            .background(Color(hex: "#EDF6FF"))
            .tint(Color(hex: "#5631E8"))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
