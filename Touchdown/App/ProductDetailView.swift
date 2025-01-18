//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 15/01/25.
//

import SwiftUI

struct ProductDetailView: View {
  
  @EnvironmentObject var shop : Shop
  
  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {
      // NAVBAR
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0)
      
      // HEADER
      HeaderDetailView()
        .padding(.horizontal)
      
      // DETAIL TOP PART
      TopPartDetailView()
        .zIndex(1)
        .padding(.horizontal)
      
      // DETAIL BOTTOM PART
      VStack(alignment: .center,spacing: 0, content: {
        // RATING + SIZE
        RatingsSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        
        // DESCRIPTION
        ScrollView(.vertical, showsIndicators: false, content: {
          Text(shop.selectedProduct?.description ?? sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        })
        
        // QUANTITY + FAVORITE
        QuantityFavouriteDetailView()
          .padding(.vertical, 10)
        
        // ADD TO CART
        AddToCartDetailView()
          .padding(.bottom, 20)
        
        Spacer()
      }) //: VSTACK
      .padding(.horizontal)
      .background(Color.white
        .clipShape(CustomShape())
        .padding(.top, -105)
      )
    }) //: VSTACK
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      ).ignoresSafeArea(.all, edges: .all)
    )
  }
}

#Preview {
  ProductDetailView()
    .environmentObject(Shop())
}
