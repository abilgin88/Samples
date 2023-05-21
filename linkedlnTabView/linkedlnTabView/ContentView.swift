//
//  ContentView.swift
//  linkedlnTabView
//
//  Created by Abdullah Bilgin on 5/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            Text("My Network")
                .tabItem {
                    Image(systemName: "person.2")
                    Text("My Network")
                }

            Text("Post")
                .tabItem {
                    Image(systemName: "plus.square")
                    Text("Post")
                }
            Text("Notification")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notification")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "handbag")
                    Text("Jobs")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
