//
//  itemsView.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/1/23.
//

import SwiftUI

struct itemsView: View {
    
    var body: some View {
        VStack {
            ForEach(information.People.indices, id: \.self) { index in
                Text(information.People[index].date.formatted(date: .numeric, time: .standard))
                    .padding()
                VStack {
                        ForEach(information.People.indices, id: \.self) { index in
                            HStack{
                                Text(information.People[index].name)
                                Text(information.People[index].Surname)
                                Text(information.People[index].Age.formatted(.number))
                            }
                    }
                }
            }
        }
    }
}


struct itemsView_Previews: PreviewProvider {
    static var previews: some View {
        itemsView(
        )
    }
}
