//
//  MainViewModel.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

class MainViewModel {
    
    // MARK: Properties
    
    private let coordinator: MainCoordinator
    private let configurator: MainConfigurator
    
    // MARK: Life Cycle
    
    init(coordinator: MainCoordinator, configurator: MainConfigurator) {
        self.coordinator = coordinator
        self.configurator = configurator
    }
}

// MARK: - Output

extension MainViewModel {
    var navbarTitle: String {
        return R.string.localizable.main_bar_title()
    }
}

// MARK: - Input

extension MainViewModel {
    func loadTodos() {
    }
}
