//
//  MainButton.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import Foundation
import UIKit

class MainButton: RoundButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
    func setupUI() {
        backgroundColor = Colors.main
        titleLabel?.font = Fonts.create(weight: .regular, size: 16)
        titleLabel?.textColor = Colors.white
    }
}
