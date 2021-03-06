//
//  FirstTabDetailView.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 16/05/2021.
//

import SwiftUI

struct FirstTabDetailView: View {
    
    let items : [String] = ["🤖", "🛹", "❤️", "🐼"]
    
//    @State private var selectedItem : String? = nil
    @EnvironmentObject var stateManager : StateManager
    
    var body: some View {
        List(items, id: \.self) { item in
            
            NavigationLink(
                destination: EmojiView(item: item),
                tag: item,
                selection: $stateManager.selectedItem,
                label: {
                    Text(item)
                    
                })
//
//            NavigationLink(
//                destination: EmojiView(item: item),
//                label: {
//                    Text(item)
//                })
                
        }.navigationTitle("First detail view")
    }
}

struct FirstTabDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        FirstTabDetailView()
            .environmentObject(StateManager())
        }
        
    }
}
