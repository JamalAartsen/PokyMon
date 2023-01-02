//
//  StatisticsEntity.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 30/12/2022.
//

import Foundation

struct StatisticsEntity: Codable {
    var base_stat: Int
    var stat: StatisticEntity
}

struct StatisticEntity: Codable {
    var name: String
}
