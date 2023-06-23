//
//  ObservableObject-2.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/5/23.
//

import SwiftUI

struct ObservableObject_2: View {
    @ObservedObject var data = MyData()
    
    var body: some View {
        Text("\(data.count)")
    }
}

struct ObservableObject_2_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObject_2()
    }
}
