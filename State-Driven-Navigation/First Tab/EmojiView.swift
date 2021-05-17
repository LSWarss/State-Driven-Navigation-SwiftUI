//
//  EmojiView.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 16/05/2021.
//

import SwiftUI

struct EmojiView: View {
    
    let item : String
    
//    @Environment(\.presentationMode) var presentationMode
//    @Binding var selectedEmoji : String?
    @EnvironmentObject var stateManager : StateManager
    
    
    var body: some View {
        VStack(spacing: 30) {
            Text(item)
                .font(.system(size: 120))
            Button(action: {
                stateManager.goToFirstRootView()
            }, label: {
                Text("Go back to root")
            })
            Button(action: {
                stateManager.selectedItem = nil
//                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Go one step back")
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.pink)
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(item: "🛹")
            .environmentObject(StateManager())
    }
}
