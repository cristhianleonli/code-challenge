//
//  MockProductInteractor+FetchAll.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import RxSwift

extension MockProductInteractor {
    func fetchAll(page: Int) -> Observable<[Product]> {
        if let url = Bundle.main.url(forResource: "products", withExtension: "json") {
            let jsonData = try? Data(contentsOf: url)
            if let productList = ProductList.parse(from: jsonData, strategy: .convertFromSnakeCase) {
                return Observable.just(productList.products)
            }
        }
        
        return Observable.error(ApplicationError.parsing)
    }
}
