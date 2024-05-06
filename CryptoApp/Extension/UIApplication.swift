//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 5/6/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
