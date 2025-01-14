//
//  CategoryModel.swift
//  Touchdown
//
//  Created by MarthaBakManis on 14/01/25.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
