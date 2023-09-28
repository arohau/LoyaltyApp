//
//  LATextField.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 28/09/2023.
//

import SwiftUI

struct LATextField: View {
    var placeHolder: String
    
    @Binding var text: String
    
    var body: some View {
        
        TextField(placeHolder, text: $text, onCommit: onCommit)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Constants.Colors.mainColor, lineWidth: 2)
            )
            .font(.LAMainFont(size: Constants.Font.defaultSize, bold: false))
    }
    
    var onCommit: () -> Void = {}
}

struct LATextFiled_Preview : PreviewProvider{
    static var previews: some View {
        LATextField(placeHolder: "Email", text: .constant("email"))
    }
}
