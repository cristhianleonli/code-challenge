//
//  MainConfigurator.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation

struct MainConfigurator {
    
    let fetchProdutsInteractor: FetchProductsInteractor
    
    init(fetchProdutsInteractor: FetchProductsInteractor) {
        self.fetchProdutsInteractor = fetchProdutsInteractor
    }
}
