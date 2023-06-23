//
//  fromUser.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/2/23.
//

import SwiftUI

struct fromUser: View {
    @State var name: String
    @State var surname:String
    @State var age: String
    @State var show = false
    
    struct Person {
        var name: String
        var surname: String
        var age: String
    }
    
    
    
    var body: some View {
        VStack {
            VStack(spacing: 20){
                TextField("Name", text: $name)
                TextField("Surname", text: $surname)
                TextField("Age", text: $age)
            }
            .padding()
            .font(.headline)
            .foregroundColor(.blue)
            
          
            Button("Send ShowData") {
                show.toggle()
                
            }
            .sheet(isPresented: $show) {
                ShowData(name: $name, surname: $surname, age: $age)
            }
        }
    }
}

struct fromUser_Previews: PreviewProvider {
    static var previews: some View {
        fromUser(name: "", surname: "", age: "")
    }
}
