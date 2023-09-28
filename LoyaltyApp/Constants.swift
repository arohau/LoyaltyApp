//
//  Constants.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 28/09/2023.
//

import SwiftUI

struct Constants{
    struct Colors{
        static let mainColor: Color = ColorConverter.hexToRgb(hex: "#08857C")!
        static let secondColor: Color = ColorConverter.hexToRgb(hex: "#ffffff")!
        static let thirdColorLight: Color = ColorConverter.hexToRgb(hex: "#000000")!
        static let thirdColorDark: Color = ColorConverter.hexToRgb(hex: "#ffffff")!
        static let fourthColor: Color = Color.gray
    }
    
    struct WidthAndHeigth{
        static let iconMaxWidth: CGFloat = 40
        static let iconMaxHeigth: CGFloat = 40
    }
    
    struct Font{
        struct Families{
            static let mainFontFamily = "Montserrat-Regular"
            static let mainFontFamilyBold = "Montserrat-SemiBold"

        }
        static let titleSize: CGFloat = UIScreen.main.bounds.width / 15
        static let defaultSize: CGFloat = UIScreen.main.bounds.width / 25
    }
}
