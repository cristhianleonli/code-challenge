//
//  RoundButton.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import UIKit

class RoundButton: UIButton {

    // MARK: - Life cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.height / 2
    }
}

