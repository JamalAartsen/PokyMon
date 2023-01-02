//
//  NumberCard.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
//

import SwiftUI

struct NumberCard: View {
    
    var id: Int
    
    // TODO: createID in viewmodel
    var body: some View {
        HStack {
            Text("\(id)".createID())
                .font(.system(size: 10, weight: .bold))
                .foregroundColor(.white)
                .padding(5)
        }
        .background(Color(hex: "#5631e8"))
        
        .cornerRadius(10)
        .padding(8)
    }
}
