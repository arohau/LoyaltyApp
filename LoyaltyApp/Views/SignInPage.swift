//
//  ContentView.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 28/09/2023.
//

import SwiftUI

struct SignInPage: View {
    private let title: String = "SIGN IN"
    private let horizontalPadding = UIScreen.main.bounds.width * 0.1;
    private let verticalPadding = UIScreen.main.bounds.height
    private let screenStakes: [Double] = [ 2/7 , 5/7 ]
    
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        
        VStack(spacing: 0){
            // Logo
            VStack(spacing: 0){
            }
            .frame(height: verticalPadding * screenStakes[0])
            
            VStack (spacing: 0){
                Title(text: title, horizontalPadding: horizontalPadding)
                SignInPasswordForm(username: $username, password: $password, horizontalPadding: horizontalPadding)
                
                TextSeparator(text: "or", padding: horizontalPadding, bold: false)
                
                SignInWith(horizontalPadding: horizontalPadding)
                
                HStack(spacing:0){
                    Text("Don't have an account? ")
                    Button(action: {
                        
                    }){
                        LAText(text: "Sign Up", color: Constants.Colors.mainColor, bold: true)
                    }
                }
                .padding(.top, 35)
                Spacer()
            }
            .frame(height: verticalPadding * screenStakes[1])
            .background(Constants.Colors.secondColor)
            .clipShape(RoundCorners(cornerRadius: 40, corners: [.topLeft, .topRight]))
        }
        .background(Constants.Colors.mainColor)
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
