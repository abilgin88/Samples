//
//  data.swift
//  test
//
//  Created by Abdullah Bilgin on 4/15/23.
//

import Foundation
let cards = [
  CardData(title: "Card 1", subtitle: "Subtitle 1", description: "Description 1", imageName: "image-1"),
  CardData(title: "Card 2", subtitle: "Subtitle 2", description: "Description 2", imageName: "image-1"),
  CardData(title: "Card 3", subtitle: "Subtitle 3", description: "Description 3", imageName: "image-1"),
  CardData(title: "Card 4", subtitle: "Subtitle 4", description: "Description 4", imageName: "image-1"),
  CardData(title: "Card 5", subtitle: "Subtitle 5", description: "Description 5", imageName: "image-1"),
  CardData(title: "Card 6", subtitle: "Subtitle 6", description: "Description 6", imageName: "image-1"),
  CardData(title: "Card 7", subtitle: "Subtitle 7", description: "Description 7", imageName: "image-1"),
  CardData(title: "Card 8", subtitle: "Subtitle 8", description: "Description 8", imageName: "image-1"),
  CardData(title: "Card 9", subtitle: "Subtitle 9", description: "Description 9", imageName: "image-1"),
  CardData(title: "Card 10", subtitle: "Subtitle 10", description: "Description 10", imageName: "image-1")
]


struct CardData: Hashable {
    let title: String
    let subtitle: String
    let description: String
    let imageName: String
}
