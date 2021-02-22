//
//  DetailViewModel.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation

class DetailViewModel {
    
    // MARK: - Properties
    
    private let coordinator: DetailCoordinator
    private let  configurator: DetailConfigurator
    
    // MARK: - Life Cycle
    
    init(coordinator: DetailCoordinator, configurator: DetailConfigurator) {
        self.coordinator = coordinator
        self.configurator = configurator
    }
}

extension DetailViewModel {
    var navbarTitle: String {
        return configurator.product.name
    }
}
