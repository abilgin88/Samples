//
//  ColorChange.swift
//  Gesture
//
//  Created by Abdullah Bilgin on 5/2/23.
//

import SwiftUI

struct ColorChange: View {
    
    let colors: [Color] = [.gray, .red, .orange, .yellow,
                           .green, .blue, .purple, .pink]
    @State private var fgColor: Color = .gray
    
    
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .frame(width: 200, height: 200)
            .foregroundColor(fgColor)
            .onTapGesture(count: 1) {
                fgColor = colors.randomElement()!
            }
    }
    
    struct ColorChange_Previews: PreviewProvider {
        static var previews: some View {
            ColorChange()
        }
    }
}
