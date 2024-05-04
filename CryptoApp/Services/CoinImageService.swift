//
//  CoinImageService.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 5/4/24.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    @Published var image : UIImage? = nil
    
    var imageSubscription : AnyCancellable?
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage(){
        guard let url = URL(string: coin.image) else {
            return
        }
        
        imageSubscription = NetworkManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })

    }
}
