//
//  ContentView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  
  var body: some View {
    ZStack{
      VStack(spacing:0) {
        NavigationBarView()
          .padding(.horizontal, 15)
          .padding(.bottom)
          .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(.white)
          .shadow(color: Color.white.opacity(0.05), radius: 5, x:0, y:5)
        
        ScrollView(.vertical, showsIndicators: false, content: {
          VStack(spacing:0, content: {
            FeaturedTabView()
              .frame(height: 260)
            
            CategoryGridView()
            
            TitleView(title: "Helmets")

            LazyVGrid(columns: gridLayout, spacing: 15, content:{
              ForEach(products) { product in
                ProductItemView(product: product)
              } //: LOOP
            }) //: GRID
            .padding(15)
            
            FooterView()
              .padding(.horizontal)
          }) //: VSTACK
        }) //: SCROLL

      } //: VSTACK
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }//: ZSTACK
    .ignoresSafeArea(.all, edges: .top)
  }
}

#Preview {
  ContentView()
}
