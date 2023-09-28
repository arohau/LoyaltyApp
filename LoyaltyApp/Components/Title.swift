//
//  Title.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 28/09/2023.
//

import SwiftUI

struct Title: View{
    var text: String
    var horizontalPadding: CGFloat
    private let lineThikness: CGFloat = 2
    private let textVerticalPadding: CGFloat = 28
    private let lineColor = Constants.Colors.fourthColor
    
    var body: some View{
        HStack(spacing: 0){
            Rectangle()
                .fill(lineColor)
                .frame(height: lineThikness)
            
            Text(text)
                .frame(minWidth: 100 + Constants.Font.defaultSize)
                .padding(.top, textVerticalPadding)
                .padding(.bottom, textVerticalPadding)
                .font(.LAMainFont(size: Constants.Font.titleSize, bold: true))
                .foregroundColor(Constants.Colors.mainColor)
            
            Rectangle()
                .fill(lineColor)
                .frame(height: lineThikness)
        }
        .padding(.leading, horizontalPadding)
        .padding(.trailing, horizontalPadding)
    }
    
    
}

struct Title_Preview : PreviewProvider{
    static var previews: some View{
        Title(text: "Sign in", horizontalPadding: UIScreen.main.bounds.width/10)
    }
}
