//
//  FavoritesView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        ZStack {
            Color(hex: "#EDF6FF").ignoresSafeArea()
            VStack {
                TitleView(title: "My favorites", topPadding: 20, bottomPadding: -5, leftPadding: 15)
                Spacer()
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
