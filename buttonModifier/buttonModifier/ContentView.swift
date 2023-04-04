//
//  ContentView.swift
//  buttonModifier
//
//  Created by Abdullah Bilgin on 4/2/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      Color("backgroundColor")
        .ignoresSafeArea()
      VStack {
        Button("open".uppercased()) {
        }
        .font(.subheadline)
        .kerning(-0.5)
        .frame(width: 73, height: 10)
        .padding(.vertical, 16)
        .padding(.horizontal,4)
        .background(.blue)
        .foregroundColor(.white)
        .cornerRadius(100)
        
        Button("Tap me") {
          print("Button Tapped!")
        }.padding()
          .font(.system(size: 20, weight: Font.Weight.bold))
          .foregroundColor(Color.white)
          .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
          .buttonStyle(PlainButtonStyle())
        
        Button("Tap me") {
          print("Button tapped!")
        }.font(.system(size: 30, weight: .bold, design: .default))
        
        
        
        Button("continue".capitalized) {
        }
        .frame(width: 73, height: 22)
        
        Button("other".capitalized) {
        }
        .font(.footnote)
        .fontWeight(.bold) /* All modifiers work except this one*/
        .foregroundColor(.white)
        .padding(.horizontal, 11)
        .padding(.vertical, 6)
        .background(Color.blue)
        .cornerRadius(.infinity)
        
      }
      .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 14 Pro Max")

  }
}
