//
//  Fonts+Create.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import UIKit
import Foundation

extension Fonts {
    enum FontWeight: String {
        case thin
        case light
        case regular
        case semibold
        case bold
    }
    
    static func create(weight: FontWeight, size: CGFloat) -> UIFont {
        switch weight {
        case .thin: return R.font.avertaPEThin(size: size)!
        case .light: return R.font.avertaPELight(size: size)!
        case .regular: return R.font.avertaPERegular(size: size)!
        case .semibold: return R.font.avertaPESemibold(size: size)!
        case .bold: return R.font.avertaPEBold(size: size)!
        }
    }
}
