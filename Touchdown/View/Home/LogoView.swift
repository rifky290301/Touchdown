//
//  LogoView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
      HStack(spacing: 4){
        Text("Touch".uppercased())
          .font(.title3)
          .fontWeight(.black)
          .fontWeight(.black)
        
        Image("logo-dark")
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
        
        Text("Down".uppercased())
          .font(.title3)
          .fontWeight(.black)
          .fontWeight(.black)
      }
    }
}

#Preview {
    LogoView()
}
