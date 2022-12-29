//
//  String+Extensions.swift
//  PokyMon
//
//  Created by Jamal Aartsen on 29/12/2022.
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
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
    func createID() -> String {
        switch self.count {
        case 1: return "00\(self)"
        case 2: return "0\(self)"
        case 3: return "\(self)"
        default:
            return "00\(self)"
        }
    }
}
