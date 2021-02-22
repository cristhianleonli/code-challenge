//
//  ApiUrlBuilder.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation

class ApiUrlBuilder {
    
    // MARK: Properties
    
    private let baseUrl: String = "https://www.yogaeasy.de"
    private let apiPath: String = "api"
    
    private var components: [String]
    
    // MARK: Lide cycle
    
    init(version: Version) {
        components = [baseUrl, apiPath]
    }
}

// MARK: Builder

extension ApiUrlBuilder {
    func addComponent(_ path: Endpoint) -> ApiUrlBuilder {
        components.append(path.rawValue)
        return self
    }
    
    func build() -> String {
        return components.joined(separator: "/")
    }
}

// MARK: Enums

extension ApiUrlBuilder {
    enum Version: String {
        case v1
    }
    
    enum Endpoint: String {
        case products
    }
}
