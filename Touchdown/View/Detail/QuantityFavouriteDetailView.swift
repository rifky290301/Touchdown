//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 15/01/25.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
  
  @State private var counter: Int = 0
  
  var body: some View {
    HStack(alignment: .center, spacing: 6, content: {
      Button(action: {
        if counter>0 {
          feedback.impactOccurred()
          counter-=1
        }
      }, label: {
        Image(systemName: "minus.circle")
      })
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button(action: {
        if counter<100 {
          feedback.impactOccurred()
          counter+=1
        }
      }, label: {
        Image(systemName: "plus.circle")
      })
      
      Spacer()
      
      Button(action: {
        feedback.impactOccurred()
      }, label: {
        Image(systemName: "heart.circle")
          .foregroundStyle(.pink)
      })
      
    })
    
  }
}

#Preview {
  QuantityFavouriteDetailView()
}