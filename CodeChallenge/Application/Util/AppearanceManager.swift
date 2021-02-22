//
//  AppearanceManager.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import UIKit
import Foundation

struct AppearanceManager {
    static func setNavigationColors() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = Colors.Navigation.mainTitleText
        navigationBarAppearace.barTintColor = Colors.Navigation.background
        
        // change navigation item title color
        navigationBarAppearace.titleTextAttributes = [
            .foregroundColor: Colors.Navigation.mainTitleText,
            .font: Fonts.navbarTitle
        ]
    }
}
