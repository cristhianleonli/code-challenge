//
//  FetchProductsInteractor.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation

protocol FetchProductsInteractor {
    func fetchAll(completion: (([Product]) -> Void))
}
