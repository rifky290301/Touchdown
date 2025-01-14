//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import SwiftUI

struct NavigationBarView: View {
  // MARK: - PROPERTIES
  
  @State private var isAnimated: Bool = false
  
  // MARK: - BODY
  var body: some View {
    HStack{
      Button(action: {
        
      }, label : {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundStyle(.black)
      })
      
      Spacer()
      LogoView()
        .opacity(isAnimated ? 1 : 0)
        .offset(x: 0, y: isAnimated ? 0 : -25)
        .onAppear {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimated.toggle()
          }
        }
      Spacer()
      
      Button(action: {
        
      },label : {
        Image(systemName: "cart")
          .font(.title)
          .foregroundStyle(.black)
        
        Circle()
          .fill(Color.red)
          .frame(width: 14, height: 14, alignment: .center)
          .offset(x: -15, y: -10)
      })
    }
  }
}

#Preview {
  NavigationBarView()
}
