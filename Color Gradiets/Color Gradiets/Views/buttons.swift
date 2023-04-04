//
//  buttons.swift
//  Color Gradiets
//
//  Created by Abdullah Bilgin on 4/4/23.
//

import SwiftUI

struct buttons: View {
    var body: some View {
     // VStack {
        Button("click me".capitalized) {
          
        }
        .frame(width: 128, height: 69)
        .bold()
        .font(.title3)
        .background(
          ZStack {
            Color("ButtonColor")
            LinearGradient(
              gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]),
              startPoint: .top,
              endPoint: .bottom)
          }
        )
        .foregroundColor(Color.accentColor)
        .cornerRadius(21)
        
        
        
     // }

    }
}

struct buttons_Previews: PreviewProvider {
    static var previews: some View {
        buttons()
    }
}
