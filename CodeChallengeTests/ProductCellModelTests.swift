//
//  ProductCellModelTests.swift
//  CodeChallengeTests
//
//  Created by Cristhian on 22.02.21.
//

import XCTest
@testable import CodeChallenge

class ProductCellModelTests: XCTestCase {

    override class func setUp() {
        super.setUp()
    }
    
    override class func tearDown() {
        super.tearDown()
    }
}

extension ProductCellModelTests {
    func test_visibleName_GivenNameAndPrice_ShouldMatch() {
        // Given
        let model = ProductCellModel(product: commonProduct)
        
        // When
        let result = model.visibleName
        
        // Then
        XCTAssertEqual(result, "name | $19.99")
    }
    
    func test_visibleName_GivenPriceNil_ShouldMatch() {
        // Given
        var product = commonProduct
        product.price = 0
        let model = ProductCellModel(product: product)
        
        // When
        let result = model.visibleName
        
        // Then
        XCTAssertEqual(result, "name | $0.0")
    }
    
    func test_VisibleDescription_GivenNameAndPrice_ShouldMatch() {
        // Given
        let model = ProductCellModel(product: commonProduct)
        
        // When
        let result = model.visibleDescription
        
        // Then
        XCTAssertEqual(result, "descriptionHtml")
    }
}

private extension ProductCellModelTests {
    var commonProduct: Product {
        return Product(
            id: 1, name: "name",
            descriptionHtml: "descriptionHtml",
            subscriptionCycleLength: 10,
            googleSubscriptionId: "googleSubscriptionId",
            appleProductId: "appleProductId",
            amazonProductId: "amazonProductId",
            price: 19.99,
            currency: "$"
        )
    }
}
