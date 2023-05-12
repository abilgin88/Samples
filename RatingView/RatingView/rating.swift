//
//  rating.swift
//  RatingView
//
//  Created by Abdullah Bilgin on 5/6/23.
//

import SwiftUI

struct RatingView: View {
    
    // MARK: Properties
    
    @Binding var rating: Int
    let starCount: Int
    let starSize: CGFloat
    let spacing: CGFloat
    
    // MARK: Body
    
    var body: some View {
        HStack(spacing: spacing) {
            ForEach(0..<starCount) { index in
                Button(action: {
                    self.rating = index + 1
                }) {
                    Image(systemName: self.rating > index ? "star.fill" : "star")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: starSize, height: starSize)
                        .foregroundColor(.yellow)
                }
            }
        }
    }
    
}


struct rating_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3), starCount: 5, starSize: 55, spacing: 10)
    }
}
