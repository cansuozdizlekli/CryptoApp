//
//  Color.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 4/30/24.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let greenColorAsset = Color("GreenColor")
    let redColorAsset = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
