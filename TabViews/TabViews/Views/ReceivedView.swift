//
//  ReceivedView.swift
//  TabViews
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import SwiftUI

struct ReceivedView: View {
  @Binding var badge: Badge
  
    var body: some View {
      VStack {
          Spacer()
          Text(String(badge.received))
              .font(.largeTitle)
              .bold()
          Spacer()
        Button {
          badge.inc()
        } label: {
          Text("Increase")
        }
          Spacer()

      }
    }
}

struct ReceivedView_Previews: PreviewProvider {
  static private var badge = Binding.constant(Badge())

    static var previews: some View {
      
      ReceivedView(badge: badge )
    }
}
