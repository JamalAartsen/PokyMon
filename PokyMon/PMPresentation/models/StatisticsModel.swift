//
//  StatisticsModel.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

struct StatisticsModel: Codable {
    var base_stat: Int
    var stat: StatisticModel
}

struct StatisticModel: Codable {
    var name: String
}
