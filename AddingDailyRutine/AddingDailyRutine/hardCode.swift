//
//  SwiftUIView.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/2/23.
//

import SwiftUI

struct hardCode: View {
    var name = "abdullah"
    var surname = "bilgin"
    var age = 14
    
    var body: some View {
        VStack {
            Text(name)
            Text(surname)
            Text(String(age))
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        hardCode()
    }
}


