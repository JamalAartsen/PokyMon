//
//  Card.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
//

import Foundation
import SwiftUI


struct Card: View {
    
    var name: String
    var image: String
    
    // TODO: URL must be outside view
    var body: some View {
        VStack {
            ZStack {
                Color(hex: "#FAEAB1").frame(maxWidth: .infinity)
                AsyncImage(url: URL(string: image))
            }
            Text(name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color(hex: "#C58940"))
                .padding([.bottom, .leading], 10)
        }
        .frame(width: 170, height: 170)
        .background(.white)
        .cornerRadius(10)
        .shadow(
            color: Color.gray.opacity(0.7),
            radius: 5,
            x: 0,
            y: 0
        )
    }
}
