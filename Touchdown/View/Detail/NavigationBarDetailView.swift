//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 15/01/25.
//

import SwiftUI

struct NavigationBarDetailView: View {
  
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    HStack{
      Button(action: {
        withAnimation(.easeIn, {
          feedback.impactOccurred()
          shop.selectedProduct = nil
          shop.showingProduct = false
        })
      }, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundStyle(.white)
      }) //: BUTTON
      
      Spacer()
      
      Button(action: {}, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundStyle(.white)
      })
    } //: HSTACK
  }
}

#Preview {
  NavigationBarDetailView()
    .environmentObject(Shop())
}
