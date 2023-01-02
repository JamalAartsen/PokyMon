//
//  TypeView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import Foundation
import SwiftUI

struct TypeView: View {
    
    var name: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color(hex: "#0E0940"))
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
        }
        .background(Color(hex: "#2AF9C9"))
        .cornerRadius(20)
    }
}
