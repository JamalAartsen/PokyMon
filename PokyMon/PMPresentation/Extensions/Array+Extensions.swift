//
//  Array+Extensions.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 02/01/2023.
//

import Foundation

extension Array where Element == String {
    func arrayToString() -> String {
        return self.joined(separator: ", ")
    }
}
