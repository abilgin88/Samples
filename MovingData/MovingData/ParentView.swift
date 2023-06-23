//
//  ParentView.swift
//  MovingData
//
//  Created by Abdullah Bilgin on 5/27/23.
//

import SwiftUI

struct ChildView: View {
    @Binding var isButtonTapped: Bool
    
    var body: some View {
        Button(action: {
            isButtonTapped.toggle()
            
        }) {
            ZStack {
                Text(isButtonTapped ? "Tapped" : "Not Tapped")
//                isButtonTapped  ? Color.red : Color.yellow
            }
            
        }

    }
}

struct ParentView: View {
    @State var isButtonTapped = false
    
    var body: some View {
        ChildView(isButtonTapped: $isButtonTapped)
    }
}

struct ParentView3_Previews: PreviewProvider {
    static var previews: some View {
        ParentView(isButtonTapped: false)
    }
}
