//
//  SwiftUIView.swift
//  MovingData
//
//  Created by Abdullah Bilgin on 5/27/23.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var counter = 0
}

struct ContentView1: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack {
            Text("Counter: \(userData.counter)")
            Button(action: {
                userData.counter += 1
            }) {
                Text("Increment")
            }
        }
    }
}

struct AppView: View {
    var body: some View {
        ContentView1()
            .environmentObject(UserData())
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
