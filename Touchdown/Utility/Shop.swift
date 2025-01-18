//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 15/01/25.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil 
}
