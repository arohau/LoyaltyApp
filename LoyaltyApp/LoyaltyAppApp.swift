//
//  LoyaltyAppApp.swift
//  LoyaltyApp
//
//  Created by Andrey Rogov on 28/09/2023.
//

import SwiftUI

@main
struct LoyaltyAppApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        loadFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            SignInPage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    
    func loadFonts() {
        let fontNames = [
            "\(Constants.Font.Families.mainFontFamilyBold).otf",
            "\(Constants.Font.Families.mainFontFamily).otf"
        ]
        for fontName in fontNames {
            guard let fontURL = Bundle.main.url(forResource: fontName, withExtension: nil) else { continue }
            CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, nil)
        }
    }
}
