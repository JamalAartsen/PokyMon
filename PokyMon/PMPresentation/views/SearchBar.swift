//
//  SearchBar.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 5))
            
            TextField("Search for Pokemon..", text: $text)
                .font(.system(size: 14))
            
            if isEditing {
                Button(action: {
                    self.text = ""
                }, label: {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 15, leading: 5, bottom: 15, trailing: 15))
                })
            }
        }
        .background(.white)
        .cornerRadius(10)
        .foregroundColor(.black)
        .padding()
        .shadow(
            color: Color.gray.opacity(0.7),
            radius: 5,
            x: 0,
            y: 0
        ).onTapGesture {
            self.isEditing = true
        }
    }
}
