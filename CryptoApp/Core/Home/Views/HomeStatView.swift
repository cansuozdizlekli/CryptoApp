//
//  HomeStatView.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 5/6/24.
//

import SwiftUI

struct HomeStatView: View {
    
    @EnvironmentObject private var viewModel : HomeViewModel
    @Binding var showPortfolio : Bool
    
    var body: some View {
        HStack {
            ForEach(viewModel.statistics) { stat in
            StatisticView(stat: stat)
                .frame(width: UIScreen.main.bounds.width / 3)
            }
        }.frame(width: UIScreen.main.bounds.width, alignment: showPortfolio ? .trailing : .leading)
    }
}

#Preview {
    HomeStatView(showPortfolio: .constant(false))
        .environmentObject(HomeViewModel())
}
