//
//  DetailViewController.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var viewModel: DetailViewModel!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = viewModel.navbarTitle
    }
}
