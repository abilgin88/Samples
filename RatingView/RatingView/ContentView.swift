//
//  ContentView.swift
//  RatingView
//
//  Created by Abdullah Bilgin on 5/6/23.
//

import SwiftUI

struct ContentView: View {

    // MARK: Properties
    
    @State var rating = 0
    
    // MARK: Body
    
    var body: some View {
        VStack {
            Text("Rate this app:")
            RatingView(rating: $rating, starCount: 5, starSize: 25, spacing: 10)
            Button(action: {
                // Submit the user's rating
                print("You rated this app \(rating) stars.")
            }) {
                Text("Submit")
            }
        }
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
