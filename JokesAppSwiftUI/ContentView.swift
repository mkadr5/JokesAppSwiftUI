//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Muhammet Kadir on 24.03.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()
    var body: some View {
        NavigationView{
            List(jokesVM.jokes){element in
                Text(element.joke)
            }.toolbar(content: {
                Button {
                    addJoke()
                } label: {
                    Text("Get New Joke")
                }

            })
            .navigationTitle(Text("Jokes App"))
        }
    }
    func addJoke() {
        // API KALDIRILDIĞI İÇİN YENİ KAYIT EKLEYEMİYORUZ
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
