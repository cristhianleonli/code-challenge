//
//  ProductInteractor.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import RxSwift

protocol ProductInteractor {
    func fetchAll(page: Int) -> Observable<[Product]>
}

