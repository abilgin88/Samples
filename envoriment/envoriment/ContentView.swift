//
//  ContentView.swift
//  envoriment
//
//  Created by Abdullah Bilgin on 5/27/23.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var counter = 0
}

struct ContentView: View {
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
        ContentView()
            .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
