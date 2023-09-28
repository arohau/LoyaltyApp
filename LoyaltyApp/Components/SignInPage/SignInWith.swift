//
//  SignInWith.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 29/09/2023.
//

import SwiftUI

struct SignInWith: View{
    var horizontalPadding: CGFloat
    var body: some View{
        VStack (spacing: 0){
            HStack(spacing:0){
                Text("Sign In ")
                    .font(.LAMainFont(size: Constants.Font.defaultSize, bold: true))
                    .foregroundColor(Constants.Colors.mainColor)
                Text("with:")
                    .font(.LAMainFont(size: Constants.Font.defaultSize, bold: false))
            }
            HStack (spacing: 0){
                Spacer()
                Button(action: {
                    // Действие для входа через Google
                }) {
                    Image("google_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: Constants.WidthAndHeigth.iconMaxWidth, maxHeight: Constants.WidthAndHeigth.iconMaxHeigth)
                }
                
                Spacer()
                
                Button(action: {
                    // Действие для входа через Facebook
                }) {
                    Image("facebook_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: Constants.WidthAndHeigth.iconMaxWidth, maxHeight: Constants.WidthAndHeigth.iconMaxHeigth)
                }
                
                Spacer()
                
                Button(action: {
                    // Действие для входа через Apple
                }) {
                    Image("apple_filled_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: Constants.WidthAndHeigth.iconMaxWidth, maxHeight: Constants.WidthAndHeigth.iconMaxHeigth)
                }
                Spacer()
            }
            .padding(.top, 30)
        }
        .padding(.leading, horizontalPadding)
        .padding(.trailing, horizontalPadding)
    }
}

struct SignInWith_Preview: PreviewProvider{
    static var previews: some View {
        SignInWith(horizontalPadding: 20)
    }
}
