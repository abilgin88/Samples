//
//  ContentView.swift
//  shapes
//
//  Created by Abdullah Bilgin on 4/6/23.
//

import SwiftUI

struct ContentView: View {
  var a = [1,2,3,4]
  
  var body: some View {
    ZStack {
      HStack {
        ForEach(0..<10) { index in
          Circle()
            .fill(Color.blue)
            .frame(width: 50, height: 50)
            .background(Color.gray)
        }
      }
      HStack {
        VStack {
          ForEach(0..<10) { index in
            Circle()
              .strokeBorder(Color.red, lineWidth: 20)
              .frame(width: 50, height: 50)
          }
        }
        VStack {
          ForEach(0..<10) { index in
            Circle()
              .strokeBorder(Color.green, lineWidth: 10)
              .frame(width: 50, height: 50)
          }
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
