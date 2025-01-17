//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 15/01/25.
//

import SwiftUI

struct AddToCartDetailView: View {
  
  @EnvironmentObject var shop : Shop
  
  var body: some View {
    Button(action: {
      feedback.impactOccurred()
    }, label: {
      Spacer()
      Text("Add to Cart")
        .font(.system(.title2, design: .rounded))
        .fontWeight(.bold)
        .foregroundStyle(.white)
      Spacer()
    }) //:BUTTON
    .padding(15)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      )
    )
    .clipShape(Capsule())
  }
}

#Preview {
  AddToCartDetailView()
    .environmentObject(Shop())
}
