//
//  DetailCoordinator.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import UIKit

class DetailCoordinator {
    
    // MARK: - Properties
    private var navigationController: UINavigationController
    
    // MARK: - Life Cycle
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

// MARK: - Navigation in
extension DetailCoordinator {
    func start(product: Product) {
        let configurator = DetailConfigurator(
            product: product
        )
        
        let viewModel = DetailViewModel(
            coordinator: self,
            configurator: configurator
        )
        
        let storyboard = R.storyboard.productDetail()
        let viewController: DetailViewController = storyboard.instantiateViewController()
        viewController.viewModel = viewModel
        
        navigationController.pushViewController(viewController, animated: true)
    }
}

