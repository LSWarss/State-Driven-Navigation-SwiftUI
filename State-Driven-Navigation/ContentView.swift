//
//  ContentView.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 16/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection : Int = 1
    
    var body: some View {
        TabView(selection: $selection) {
            FirstTabView()
                .tabItem { Text("First") }
                .tag(1)
            SecondTabView()
                .tabItem { Text("Second") }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
