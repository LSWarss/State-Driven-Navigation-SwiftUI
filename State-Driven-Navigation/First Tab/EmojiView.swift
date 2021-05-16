//
//  EmojiView.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 16/05/2021.
//

import SwiftUI

struct EmojiView: View {
    
    let item : String
    
    var body: some View {
        Text(item)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.pink)
            .font(.system(size: 120))
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(item: "🛹")
    }
}
