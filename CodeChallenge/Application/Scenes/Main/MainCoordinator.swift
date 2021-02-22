//
//  MainCoordinator.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import UIKit

class MainCoordinator {
    
    // MARK: Properties
    private var navigationController: UINavigationController
    
    // MARK: Life Cycle
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

// MARK: - Navigation in
extension MainCoordinator {
    func start() {
        let configurator = MainConfigurator(
            fetchProdutsInteractor: MockFetchProductsInteractor()
        )
        
        let viewModel = MainViewModel(
            coordinator: self,
            configurator: configurator
        )
        
        let storyboard = R.storyboard.main()
        let viewController: MainViewController = storyboard.instantiateViewController()
        viewController.viewModel = viewModel
        
        navigationController.pushViewController(viewController, animated: false)
    }
}
