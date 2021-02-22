//
//  ApiFetchProductsInteractor.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Alamofire
import RxSwift

class ApiFetchProductsInteractor: FetchProductsInteractor {
    
    func fetchAll(page: Int) -> Observable<[Product]> {
        
        let url = ApiUrlBuilder(version: .v1)
            .addComponent(.products)
            .build()
            
        let parameters: Parameters = [
            "page": "\(page)"
        ]
        
        return Observable.create { observer -> Disposable in
            let request = AF.request(url, parameters: parameters)
            
            request.responseJSON { (data) in
                print(data)
            }
            
            return Disposables.create()
        }
    }
}
