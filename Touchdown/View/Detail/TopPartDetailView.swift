//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 15/01/25.
//

import SwiftUI

struct TopPartDetailView: View {

  @EnvironmentObject var shop: Shop
  @State private var inAnimation: Bool = false
  
  var body: some View {
    HStack(alignment: .center, spacing: 6, content: {
      VStack(alignment: .leading, spacing: 6, content: {
        Text("Price")
          .fontWeight(.semibold)
        
        Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
          .font(.largeTitle)
          .fontWeight(.black)
          .scaleEffect(1.35, anchor: .leading)
      }) //: VSTACK
      .offset(y: inAnimation ? -50 : -75)
      
      Spacer()
      
      Image(shop.selectedProduct?.image ?? sampleProduct.image)
        .resizable()
        .scaledToFit()
        .offset(y: inAnimation ? 0 : -35)
      
    }) //: HSTACK
    .onAppear(perform: {
      withAnimation(.easeInOut(duration: 0.75)) {
        inAnimation.toggle()
      }
    })
  }
}

#Preview {
  TopPartDetailView()
    .environmentObject(Shop())
}
