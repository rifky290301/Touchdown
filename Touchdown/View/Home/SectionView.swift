//
//  SectionView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import SwiftUI

struct SectionView: View {
  
  @State var rotateClockwise: Bool = false
  var body: some View {
    VStack(spacing: 0, content: {
      Spacer()
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundStyle(.white)
        .rotationEffect(.init(degrees: rotateClockwise ? 90 : -90))
      Spacer()
    })
    .background(colorGray.cornerRadius(12))
    .frame(width: 85)
  }
}

#Preview {
  SectionView()
}
