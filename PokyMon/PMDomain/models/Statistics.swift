//
//  Statistics.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

public struct Statistics: Codable {
    var base_stat: Int
    var stat: Statistic
}

public struct Statistic: Codable {
    var name: String
}
