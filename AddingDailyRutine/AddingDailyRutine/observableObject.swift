//
//  observableObject.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/5/23.
//

import SwiftUI

class MyData: ObservableObject {
    @Published var count: Int = 0
    
    func increment() {
        count += 1
    }
}

struct observableObject: View {
    @ObservedObject var data = MyData()
    @State var show = false
    
    var body: some View {
        VStack {
            Text("Count: \(data.count)")
            Button("Increment") {
                data.increment()
            }
            Button("new") {
                show.toggle()
            }
            .sheet(isPresented: $show) {
                ObservableObject_2()
            }
        }
        
    }
}

struct observableObject_Previews: PreviewProvider {
    static var previews: some View {
        observableObject()
    }
}
