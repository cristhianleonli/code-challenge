//
//  MainViewController.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    // MARK: Properties
    
    var viewModel: MainViewModel!
    
    // MARK: IBOutlets
    
    @IBOutlet private var listTableView: UITableView!
    
    // MARK: Life Cycle
    
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
        // table viewdatasource
    }
    
    func setupTableView() {
    }
}
