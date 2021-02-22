//
//  Application.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import UIKit

class Application {
    
    // MARK: Properties
    
    static let shared = Application()
    
    // MARK: Life Cycle
    
    private init() {}
}

extension Application {
    
    func setupMainInterface(window: UIWindow?) {
        let navController = UINavigationController()
        let coordinator = MainCoordinator(navigationController: navController)
        coordinator.start()
        
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}
