//
//  ImageURLCreater.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
//

import Foundation

class ImageURLCreater {
    func createURL(baseURL: String, id: Int) -> String {
        return "\(baseURL)\(id).png"
    }
}
