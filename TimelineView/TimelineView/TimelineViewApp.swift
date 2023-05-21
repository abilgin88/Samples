//
//  TimelineViewApp.swift
//  TimelineView
//
//  Created by Abdullah Bilgin on 5/12/23.
//

import SwiftUI

@main
struct TimelineViewApp: App {
    var body: some Scene {
        WindowGroup {
            TimelineView(events: [
                Event(date: Date(), title: "Event 1", description: "This is the first event"),
                Event(date: Date().addingTimeInterval(60*60*24), title: "Event 2", description: "This is the second event"),
                Event(date: Date().addingTimeInterval(60*60*24*2), title: "Event 3", description: "This is the third event")
            ])
        }
    }
}
