//
//  ContentView.swift
//  Color Gradiets
//
//  Created by Abdullah Bilgin on 4/3/23.
//

import SwiftUI

struct ContentView: View {
  
  
  var body: some View {
    ZStack {
      Color("BackGround")
        .ignoresSafeArea()
      
      VStack {
        Spacer()
        buttons()
        Spacer()
      
        HStack {
          buttons()
          buttons()
        }
        
      }
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 14")
  }
}
