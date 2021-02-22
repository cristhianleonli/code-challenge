//
//  MockFetchProductsInteractor.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation

class MockFetchProductsInteractor: FetchProductsInteractor {
    func fetchAll(completion: (([Product]) -> Void)) {
        completion([
            
        ])
    }
}
