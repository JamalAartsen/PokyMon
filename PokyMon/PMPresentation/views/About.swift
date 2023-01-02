//
//  About.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import SwiftUI

struct About: View {
    
    var aboutDetails: AboutDetails
    
    var body: some View {
        VStack {
            AboutTextView(key: "Name", value: aboutDetails.name)
            AboutTextView(key: "ID", value: aboutDetails.id)
            AboutTextView(key: "Base", value: aboutDetails.base)
            AboutTextView(key: "Weight", value: aboutDetails.weight)
            AboutTextView(key: "Height", value: aboutDetails.height)
            AboutTextView(key: "Types", value: aboutDetails.types)
            AboutTextView(key: "Abilities", value: aboutDetails.abilities)
        }
    }
}

struct AboutTextView: View {
    
    var key: String
    var value: String
    
    var body: some View {
        HStack {
            SingleTextAbout(value: key, opacity: 1)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 16))
                .frame(width: 100, alignment: .leading)
            SingleTextAbout(value: value, opacity: 0.5)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 16))
            Spacer()
        }
    }
}

struct SingleTextAbout: View {
    
    var value: String
    var opacity: Double
    
    var body: some View {
        Text(value)
            .foregroundColor(Color(hex: "#0E0940").opacity(opacity))
            .font(.system(size: 14, weight: .medium))
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About(aboutDetails: AboutDetails(name: "Jamal", id: "001", base: "65xp", weight: "86", height: "182", types: "", abilities: ""))
    }
}
