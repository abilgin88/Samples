//
//  ContentView.swift
//  MovingData
//
//  Created by Abdullah Bilgin on 5/27/23.
//

import SwiftUI

struct enviromentView: View {
    @State private var text = ""
    
    var body: some View {
        ZStack {
            TextField("Enter text", text: $text)
            VStack(alignment: .center){
                Text(text)
                ChildView1(text: $text, font: .title, color: .red)
                Spacer()
                ChildView1(text: $text, font: .largeTitle, color: .blue)
            }
        }
    }
}

struct ChildView1: View {
    @Binding var text: String
    let font: Font
    let color: Color
    
    var body: some View {
        Text("\(text)")
            .font(font)
            .padding()
            .foregroundColor(color)
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
