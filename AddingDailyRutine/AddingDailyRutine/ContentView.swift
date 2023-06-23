//
//  ContentView.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var surname = ""
    @State private var age = 0
    @State private var selectedDate = Date()
    @State private var showItemView = false
    @State private var user : [information] = []
    
    struct information {
        var name: String
        var Surname: String
        var Age: Int
        var date: Date
        
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Spacer()
                Button("Items") {
                    user.append(information(name: name, Surname: surname, Age: age, date: selectedDate))
                    showItemView.toggle()
                    print(user.count)
                }
                .sheet(isPresented: $showItemView) {
                    itemsView(
                       // user: Binding.constant(.init(name: name, Surname: surname, Age: age, date: selectedDate))
                    )
                }
            }
            VStack {
                TextField("Name", text: $name)
                    .padding()
                
                TextField("Surname", text: $surname)
                    .padding()
                
                Stepper(value: $age, in: 0...100, step: 1) {
                    Text("Age: \(age)")
                }
                .padding()
                
                DatePicker("Date:", selection: $selectedDate, displayedComponents: .date)
                    .padding()
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
