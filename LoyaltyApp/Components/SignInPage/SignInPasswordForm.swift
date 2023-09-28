//
//  LoginPasswordForm.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 28/09/2023.
//

import SwiftUI

struct SignInPasswordForm : View {
    @Binding var username: String
    @Binding var password: String
    var horizontalPadding: CGFloat
    
    var body : some View{
        VStack(spacing: 0) {
            
            LATextField(placeHolder: "Username or email address", text: $username)
            LASecureField(placeHolder: "Password", text: $password)
                .padding(.top, 10)
            HStack{
                Spacer()
                Button(action: {
                    // Действие для восстановления пароля
                }) {
                    Text("Forgot password?")
                        .foregroundColor(Constants.Colors.mainColor)
                }
            }
            .padding(.top,5)
            Button(action:{
                
            }){
                Text("Sign In")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Constants.Colors.mainColor)
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
            }
            .padding(.top)
        }
        .font(.LAMainFont(size: Constants.Font.defaultSize, bold: false))
        .padding(.leading, horizontalPadding)
        .padding(.trailing, horizontalPadding)
    }
}

struct SignInPasswordForm_Preview: PreviewProvider{
    static var previews: some View{
        SignInPasswordForm(username: .constant(""), password: .constant(""), horizontalPadding: 20)
    }
}
