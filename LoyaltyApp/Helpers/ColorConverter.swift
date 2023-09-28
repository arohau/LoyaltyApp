//
//  ColorConverter.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 28/09/2023.
//

import SwiftUI

struct ColorConverter{
    static func hexToRgb(hex: String) -> Color?{
        var hexSanitized = hex.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.uppercased()
        
        var rgbValue: UInt64 = 0
        
        Scanner(string: hexSanitized).scanHexInt64(&rgbValue)
        
        if (hexSanitized.count == 6) {
            let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
            let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
            let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
            
            return Color.init(red: red, green: green, blue: blue)
        } else {
            return nil // or handle the error in an appropriate way
        }
    }
}
