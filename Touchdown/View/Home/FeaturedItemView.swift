//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import SwiftUI

struct FeaturedItemView: View {
  // MARK: - PROPERTY
  let player: Player
  
  // MARK: - BODY
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
  FeaturedItemView(player: players[0])
}
