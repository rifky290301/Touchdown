//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import SwiftUI

struct CategoryItemView: View {
  // MARK: - PROPERTY
  let category: Category
  
  // MARK: - BODY
  
  
  var body: some View {
    Button(action: {}, label: {
      HStack(alignment: .center, spacing: 6, content: {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundStyle(.gray)
        
        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundStyle(.gray)
        
        Spacer()
      }) //: HSTACK
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.gray, lineWidth: 1)
      )
    })
  }
}

#Preview {
  CategoryItemView(category: categories[0])
}
