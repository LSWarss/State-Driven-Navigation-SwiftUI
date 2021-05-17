//
//  State_Driven_NavigationApp.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 16/05/2021.
//

import SwiftUI

@main
struct State_Driven_NavigationApp: App {
    
    @StateObject var stateManager = StateManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateManager)
        }
    }
}
