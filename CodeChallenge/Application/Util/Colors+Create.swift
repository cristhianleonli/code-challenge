//
//  Colors+Create.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import UIKit
import Foundation

extension UIColor {
    public static func create(hexString: String) -> UIColor {
        let hex = hexString.trimmingCharacters(in: .whitespaces)
        let scanner = Scanner(string: hex)
        
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        return UIColor.init(red: red, green: green, blue: blue, alpha: 1)
    }
}
