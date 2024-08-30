//
//  LanguageManagerApp.swift
//  LanguageManager
//
//  Created by Роман on 30.08.2024.
//

import SwiftUI
import LanguageManagerSwiftUI

@main
struct LanguageManagerApp: App {
    var body: some Scene {
        WindowGroup {
            LanguageManagerView(.deviceLanguage) {
                FirstView()
            }
            
        }
    }
}
