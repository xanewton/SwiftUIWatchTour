//
//  ContentView.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by newtan on 2021-02-15.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        List {
            Button("Charts") {
                self.isPresented.toggle()
            }
            .fullScreenCover(isPresented: $isPresented, content:       ChartsView.init)
            
            NavigationLink(destination: ColorsView()) {
                Text("Colors")
            }.navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
