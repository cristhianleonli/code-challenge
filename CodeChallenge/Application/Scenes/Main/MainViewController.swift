//
//  MainViewController.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import AloeStackView
import Foundation
import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    var viewModel: MainViewModel!
    private let productsStack: AloeStackView = AloeStackView()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        subscribeToChanges()
        viewModel.loadProducts()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = viewModel.navbarTitle
    }
}

// MARK: - Private methods

private extension MainViewController {
    func subscribeToChanges() {
        // table view rx datasource
        
        viewModel.products
            .subscribe(
                onNext: { [weak self] products in
                    self?.productsStack.removeAllRows()
                    
                    products.forEach { product in
                        let model = ProductCellModel(product: product)
                        let productView = ProductView()
                        productView.fillData(model: model)
                        
                        productView.onTap = { [weak self] in
                            self?.viewModel.showDetail(product: product)
                        }
                        
                        self?.productsStack.addRow(productView)
                    }
                    
                    self?.productsStack.hidesSeparatorsByDefault = true
                }
            )
            .disposed(by: viewModel.disposeBag)
    }
    
    func setupTableView() {
        view.addSubview(productsStack)
        productsStack.translatesAutoresizingMaskIntoConstraints = false
        
        let margin: CGFloat = 20
        
        NSLayoutConstraint.activate([
            productsStack.topAnchor.constraint(equalTo: view.topAnchor, constant: margin),
            productsStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -margin),
            productsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            productsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin)
        ])
    }
}
