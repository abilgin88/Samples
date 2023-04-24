//
//  ContentView.swift
//  miniBook
//
//  Created by Abdullah Bilgin on 7/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            VStack {
                Text("Aardvark")
                Text("The aardvark gets its name from a South African word meaning “earth pig.” Although the aardvark looks like a pig, especially with its body and snout, aardvarks actually share common ancestors with elephants and golden moles. Aardvarks live throughout much of sub-Saharan Africa.")
            }
            
            VStack {
                Text("African Elephant")
                Text("An adult African elephant's trunk is about seven feet (two meters) long! It's actually an elongated nose and upper lip. Like most noses, trunks are for smelling.")
            }
            
            
            VStack {
                Text("American Bison")
                Text("Bison are the iconic image of the Great Plains and the Old West. They are massive, shaggy beasts and the heaviest land animals in North America.")
            }
            VStack {
                Text("Amur Leopard")
                Text("Slowly stalking down the snowy hillside, the Amur leopard watches its prey through the trees. In the clearing below, a sika deer munches on tree bark, one of its few remaining food sources during the cold Russian winter. The leopard crouches, its body so low to the ground that its belly fur brushes the snow. Suddenly it bounds and springs forward, tackling the deer from 10 feet away. It’s dinnertime.")
            }
            VStack {
                Text("Arctic Fox")
                Text("Not far from the North Pole, the world is frozen for thousands of miles. Suddenly a snowy mound wiggles and reveals two dark eyes. The lump is transformed into the furry white body of a lone arctic fox. ")
            }
        }.tabViewStyle(PageTabViewStyle())
            .indexViewStyle(
                PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
