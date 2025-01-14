//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import SwiftUI

struct CategoryGridView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false, content: {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
        Section(
          header: SectionView(),
          footer: SectionView(rotateClockwise: true)
        ) {
          ForEach(categories) { category in
            CategoryItemView(category: category)
          }
        }
      })
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    })
  }
}

#Preview {
  CategoryGridView()
}
