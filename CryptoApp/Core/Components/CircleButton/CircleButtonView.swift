//
//  CircleButtonView.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 4/30/24.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .frame(width: 50,height: 50)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .background {
                Circle()
                    .foregroundColor(Color.theme.background)
            }
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10, x: 0, y: 0)
            .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Group {
        CircleButtonView(iconName: "info")
        
        CircleButtonView(iconName: "plus")
            .colorScheme(.dark)
    }
    
}
