//
//  othershape.swift
//  shapes
//
//  Created by Abdullah Bilgin on 4/6/23.
//

import SwiftUI

struct othershape: View {
  var body: some View {
    VStack(spacing: 10) {
      ZStack {
        Color.gray
        Text("Abdullah Bilgin")
        
      }
      
      
      
      
      ForEach(1..<4) { index in
        HStack(spacing: 10){
          ForEach(1..<5) { index in
            ZStack {
              Rectangle()
                .fill(Color.pink)
               .frame(width: 100,height: 100)
              VStack {
                ForEach(1..<5) { index in
                    Ellipse()
                    .fill(Color.blue)
                    .frame(width: 10, height: 10)
                }
              }
             
                          }
          }
        }
      }
    }
    
  }
}

struct othershape_Previews: PreviewProvider {
  static var previews: some View {
    othershape()
  }
}
