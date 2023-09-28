//
//  TextSeparator.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 29/09/2023.
//

import SwiftUI

struct TextSeparator : View{
    var text: String
    var padding: CGFloat
    var bold: Bool
    private let lineThikness: CGFloat = 1
    private let textVerticalPadding: CGFloat = 28
    private let textSize: CGFloat = UIScreen.main.bounds.width / 20
    private let paddingSize: CGFloat = UIScreen.main.bounds.width / 25
    
    var body: some View{
        HStack(spacing: 0){
                Rectangle()
                .fill(Constants.Colors.thirdColorLight)
                    .frame(height: lineThikness)
                    .padding(.leading, padding)
                
                Text(text)
                    .frame(minWidth: paddingSize + textSize)
                    .padding(.top, textVerticalPadding)
                    .padding(.bottom, textVerticalPadding)
                    .font(.LAMainFont(size: textSize, bold: bold))
                    .foregroundColor(Constants.Colors.thirdColorLight)
                
                Rectangle()
                .fill(Constants.Colors.thirdColorLight)
                    .frame(height: lineThikness)
                    .padding(.trailing, padding)
            }
    }
}

struct TextSeparator_Preview: PreviewProvider{
    static var previews: some View {
        TextSeparator(text: "or", padding: 20, bold: false)
    }
}
