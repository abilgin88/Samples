//
//  ContentView.swift
//  Environment(dismiss)
//
//  Created by Abdullah Bilgin on 5/28/23.
/*
 Bu örnekte, ContentView adında bir görünüm tanımlanmıştır. isShowingDetail adında bir @State property wrapper'ı kullanarak bir durum değişkeni tanımlanır.

 ContentView görünümünde, "Show Detail View" metinli bir düğme yer alır. Bu düğmeye tıklandığında isShowingDetail değeri true olarak ayarlanır ve sheet modifikatörü ile DetailView açılır.

 DetailView görünümünde, @Environment(\.dismiss) yapısı kullanılarak dismiss değeri elde edilir. Bu değer, bir kapatma işlemi gerçekleştirmek için kullanılır.

 DetailView görünümünde, "Close" metinli bir düğme yer alır. Bu düğmeye tıklandığında dismiss() fonksiyonu çağrılır ve DetailView kapatılır.

 Bu örnekte, @Environment(\.dismiss) yapısı, üst görünümü kapatmak için kullanılır. Böylece, "Close" düğmesine tıklandığında DetailView kapatılır ve kullanıcı yeniden ContentView görünümüne döner.
 */

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetail = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    isShowingDetail = true
                }) {
                    Text("Show Detail View")
                }
            }
            .sheet(isPresented: $isShowingDetail) {
                DetailView()
            }
        }
    }
}

struct DetailView: View {
    @Environment(\.dismiss) private var dismis
    
    var body: some View {
        VStack {
            Text("Detai View")
            
            Button(action: {
                dismis()
            }) {
                Text("Close")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
