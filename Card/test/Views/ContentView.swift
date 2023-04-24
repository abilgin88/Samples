//
//  ContentView.swift
//  test
//
//  Created by Abdullah Bilgin on 4/14/23.
//

import SwiftUI

struct ContentView: View {
  
  
  var body: some View {
    ScrollView {
      LazyVStack {
        ForEach(cards, id: \.self) { card in
          CardView(title: card.title, subtitle: card.subtitle, description: card.description, imageName: card.imageName)
            .padding(.horizontal)
            .padding(.bottom)
        }
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
