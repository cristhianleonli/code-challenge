//
//  Reusable+Storyboard.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import UIKit

extension UIStoryboard {
    
    func instantiateViewController<T>(ofType type: T.Type = T.self) -> T where T: UIViewController {
        let controller = instantiateViewController(withIdentifier: type.reuseId)
        
        guard let viewController = controller as? T else {
            fatalError()
        }
        
        return viewController
    }
}
