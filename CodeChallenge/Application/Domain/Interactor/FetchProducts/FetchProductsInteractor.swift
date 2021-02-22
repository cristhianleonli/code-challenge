//
//  FetchProductsInteractor.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import RxSwift

protocol FetchProductsInteractor {
    func fetchAll(page: Int) -> Observable<[Product]>
}
