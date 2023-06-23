//
//  timeline.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/5/23.
//

import SwiftUI

struct CountDownView: View {
    let date: Date
    @Binding var timeRemaining: Int
    let size: Double
    
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: size, design: .rounded))
            .padding()
            .onChange(of: date) { _ in
                timeRemaining -= 1
            }
    }
}
struct timeline: View {
    @State private var timeRemaining: Int = 10  // 1
    @State var timerDone = false  // 2
    let size: Double
    
    var body: some View {
        
        VStack {
            if timerDone {
                Text("Timer done")
            }
            TimelineView(
                .animation(
                    minimumInterval: 1.0,
                    paused: timeRemaining <= 0)) { context in
                        CountDownView(
                            date: context.date,
                            timeRemaining: $timeRemaining,
                            size: size)
                }
                    .onChange(of: timeRemaining) { _ in
                        if timeRemaining < 1 {
                            timerDone = true
                        }
                }
        }
    }
}

struct timeline_Previews: PreviewProvider {
    static var previews: some View {
        timeline(size: 90)
    }
}
