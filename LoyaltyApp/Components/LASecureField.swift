//
//  LASecureField.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 29/09/2023.
//

import SwiftUI

struct LASecureField: View {
    var placeHolder: String
    @State private var isPasswordVisible: Bool = false
    
    @Binding var text: String
    
    var body: some View {
        ZStack{
            if isPasswordVisible{
                LATextField(placeHolder: placeHolder, text: $text, onCommit: onCommit)
            }else{
                SecureField(placeHolder, text: $text, onCommit: onCommit)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(Constants.Colors.mainColor, lineWidth: 2)
                    )
                    .font(.LAMainFont(size: Constants.Font.defaultSize, bold: false))
            }
            HStack{
                Spacer()
                Button(action: {
                    isPasswordVisible.toggle()
                }) {
                    Image(systemName: isPasswordVisible ? "eye.slash":"eye")
                }
                .foregroundColor(Constants.Colors.thirdColorLight)
                .padding(.trailing, 10)
            }
        }
        
    }
    
    var onCommit: () -> Void = {}
}

struct LASecureField_Preview : PreviewProvider{
    static var previews: some View {
        LASecureField(placeHolder: "Email", text: .constant("email"))
    }
}
