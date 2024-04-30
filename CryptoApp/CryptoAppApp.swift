//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 4/29/24.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
