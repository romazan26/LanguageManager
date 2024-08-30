//
//  ContentView.swift
//  LanguageManager
//
//  Created by Роман on 30.08.2024.
//

import SwiftUI
import LanguageManagerSwiftUI

struct FirstView: View {
    @EnvironmentObject var languageSettings: LanguageSettings
    var body: some View {
        NavigationView {
            VStack {
                Text("Press the button to change the language")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                //MARK: - Language groupe
                HStack {
                    //MARK: - English button
                    Button(action: {withAnimation {
                        languageSettings.selectedLanguage = .en
                    }}, label: {
                        Image(.gb)
                            .resizable()
                            .frame(width: 50, height: 50)
                    })
                    
                    //MARK: - Russian button
                    Button(action: {
                        withAnimation {
                            languageSettings.selectedLanguage = .ru
                        }
                    }, label: {
                        Image(.ru)
                            .resizable()
                            .frame(width: 50, height: 50)
                    })
                    
                    //MARK: - French button
                    Button(action: {
                        withAnimation {
                            languageSettings.selectedLanguage = .fr
                        }
                    }, label: {
                        Image(.fr)
                            .resizable()
                            .frame(width: 50, height: 50)
                    })
                }
                
                //MARK: - Localizable text
                Text("text")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                Spacer()
                NavigationLink("textButton") {
                    SecondView()
                }
            }
            .onAppear(perform: {
                print("appear")
            })
        .padding()
        }
    }
}

#Preview {
    FirstView()
}
