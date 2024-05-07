//
//  StatisticView.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 5/6/24.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading,spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .rotationEffect(Angle(degrees:
                                            (stat.percentageChange ?? 0) > 0 ? 0 : 180
                                         ))
                    .font(.caption)
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor((stat.percentageChange ?? 0) > 0 ? Color.theme.greenColorAsset : Color.theme.redColorAsset)
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

#Preview {
    StatisticView(stat: StatisticModel(title: "Market Cap", value: "$12.58n",percentageChange: -25.34))
}
