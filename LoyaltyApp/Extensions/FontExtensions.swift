//
//  FontExtensions.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 30/09/2023.
//

import SwiftUI

extension Font{
    static func LAMainFont(size: CGFloat, bold: Bool) -> Font{
        let font = bold
        ? Constants.Font.Families.mainFontFamilyBold
        :Constants.Font.Families.mainFontFamily
        
        return Font.custom(font, size: size)
    }
}
