//
//  Product.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation

struct ProductList: Codable {
    let products: [Product]
}

struct Product: Codable {
    
    // MARK: - Properties
    
    let id: Int
    let name: String
    let descriptionHtml: String
    let subscriptionCycleLength: Int
    let googleSubscriptionId: String
    let appleProductId: String
    let amazonProductId: String?
}
