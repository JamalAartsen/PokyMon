//
//  String+Extensions.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 28/12/2022.
//

import Foundation

extension String {
    static func createComplicatedUrl(scheme: String, host: String, path: String, queryItems: [URLQueryItem]? = nil) -> Self {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = queryItems
        
        return components.url!.absoluteString
    }
    
    func slice(from: String, to: String) -> String {
        guard let rangeFrom = range(of: from)?.upperBound else { return "" }
        guard let rangeTo = self[rangeFrom...].range(of: to)?.lowerBound else { return "" }
        return String(self[rangeFrom..<rangeTo])
    }
    
    func stringToInt() -> Int {
        return Int(self) ?? 0
    }
}
