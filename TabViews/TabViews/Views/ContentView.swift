//
//  ContentView.swift
//  TabViews
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var badge = Badge()
    
    var body: some View {
        TabView {
            ReceivedView(badge: $badge)
                .badge(badge.received)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            SentView(recieved: $badge)
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            AccountView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

