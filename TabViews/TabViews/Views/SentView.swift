//
//  SentView.swift
//  TabViews
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import SwiftUI

struct SentView: View {
    @Binding var recieved: Badge
    
    var body: some View {
        VStack {
            Text("Recieved \(recieved.received)")
            Text("Remain: \(recieved.send(amount: 10))")
        }
    }
}

struct SentView_Previews: PreviewProvider {
    static var previews: some View {
        SentView(recieved: .constant(Badge()))
    }
}
