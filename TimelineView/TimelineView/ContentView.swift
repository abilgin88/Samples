//
//  ContentView.swift
//  TimelineView
//
//  Created by Abdullah Bilgin on 5/12/23.
//

import SwiftUI

struct Event: Identifiable {
    var id = UUID()
    var date: Date
    var title: String
    var description: String
}

struct TimelineView: View {
    let events: [Event]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(events) { event in
                    VStack(alignment: .leading, spacing: 10) {
                        Text(dateFormatter.string(from: event.date))
                            .font(.headline)
                        Text(event.title)
                            .font(.subheadline)
                        Text(event.description)
                            .font(.body)
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("Timeline")
    }
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(events: [
            Event(date: Date(), title: "Event 1", description: "This is the first event"),
            Event(date: Date().addingTimeInterval(60*60*24), title: "Event 2", description: "This is the second event"),
            Event(date: Date().addingTimeInterval(60*60*24*2), title: "Event 3", description: "This is the third event")
        ])
    }
}
