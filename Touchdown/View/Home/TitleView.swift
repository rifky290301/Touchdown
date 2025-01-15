//
//  TitleView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 15/01/25.
//

import SwiftUI

struct TitleView: View {
  var title: String
  
    var body: some View {
      HStack{
        Text(title)
          .font(.largeTitle)
          .fontWeight(.heavy)
        
        Spacer()
      }
      .padding(.horizontal)
      .padding(.top)
      .padding(.bottom, 10)
    }
}

#Preview {
  TitleView(title: "Helmet")
}
