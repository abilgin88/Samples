//
//  ShowData.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/2/23.
//

import SwiftUI

struct ShowData: View {
    @Binding var name: String
    @Binding var surname: String
    @Binding var age: String
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text(name)
            Text(surname)
            Text(age)
        }
        .font(.largeTitle)
        .foregroundColor(.red)
        
    }
}

struct ShowData_Previews: PreviewProvider {
    static var previews: some View {
        ShowData(name: .constant("Abdullah"), surname: .constant("Bilgin"), age: .constant("34"))
    }
}
