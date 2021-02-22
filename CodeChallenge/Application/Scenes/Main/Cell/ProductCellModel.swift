//
//  ProductCellModel.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation

struct ProductCellModel {
    
    private let name: String
    private let price: Double
    private let currency: String
    private let description: String
    
    init(product: Product) {
        name = product.name
        description = product.descriptionHtml
        price = product.price ?? 0
        currency = product.currency ?? "$"
    }
}

extension ProductCellModel {
    var visibleName: String {
        return [
            name,
            "\(currency)\(price)"
        ]
        .joined(separator: " | ")
    }
    
    var visibleDescription: String {
        return description
    }
}
