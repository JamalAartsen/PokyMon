//
//  TitleView.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    var topPadding: CGFloat = 0
    var bottomPadding: CGFloat = 0
    var leftPadding: CGFloat = 0
    var rightPadding: CGFloat = 0
    
    var body: some View {
        Text(title)
            .font(.system(size: 25, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: topPadding, leading: leftPadding, bottom: bottomPadding, trailing: rightPadding))
    }
}
