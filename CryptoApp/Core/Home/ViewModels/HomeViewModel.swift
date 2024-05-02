//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 5/2/24.
//

import Foundation

class HomeViewModel : ObservableObject {
    @Published var allCoins : [CoinModel] = []
    @Published var portfolioCoins : [CoinModel] = []
    
    init(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allCoins.append(DeveloperProvider.instance.coin)
            self.portfolioCoins.append(DeveloperProvider.instance.coin)
        }
    }
}
