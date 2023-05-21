//
//  timeline.swift
//  TimelineView
//
//  Created by Abdullah Bilgin on 5/12/23.
//

import SwiftUI

struct timeline: View {
    
    @State private var timeRemaining = 10 // seconds
    
    var body: some View {
        Text("Time Remaining: \(timeRemaining)")
            .onAppear {
                let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                }
                // Invalidate timer when view disappears
                RunLoop.current.add(timer, forMode: .common)
            }
    }
}


struct timeline_Previews: PreviewProvider {
    static var previews: some View {
        timeline()
    }
}
