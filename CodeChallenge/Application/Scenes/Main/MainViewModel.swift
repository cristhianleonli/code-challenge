//
//  MainViewModel.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import RxCocoa
import RxSwift

class MainViewModel {
    
    // MARK: Properties
    
    private let coordinator: MainCoordinator
    private let configurator: MainConfigurator
    
    let disposeBag = DisposeBag()
    let products: BehaviorRelay<[Product]> = BehaviorRelay(value: [])
    
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
    func loadProducts() {
        configurator
            .fetchProdutsInteractor
            .fetchAll(page: 0)
            .subscribe(onNext: { products in
                self.products.accept(products)
            })
            .disposed(by: disposeBag)
    }
}
