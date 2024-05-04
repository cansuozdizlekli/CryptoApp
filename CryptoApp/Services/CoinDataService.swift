//
//  CoinDataService.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 5/3/24.
//

import Foundation
import Combine

class CoinDataService {
    @Published var allCoins : [CoinModel] = []
    
    var coinSubscription: AnyCancellable?
    
    init(){
        getCoins()
    }
    
    private func getCoins() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&x_cg_demo_api_key=CG-JPFh11biBQuXmT83NJhywciW") else {
            return
        }
        
        coinSubscription = NetworkManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })


    }
}
