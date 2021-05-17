//
//  SecondTabView.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 16/05/2021.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var isPresenting : Bool = false
    
    var body: some View {
        
        VStack {
            Text("This is the second tab view")
            Button(action: {
                isPresenting.toggle()
            }, label: {
                Text("Show overlay")
            })
                .fullScreenCover(isPresented: $isPresenting, content: {
                    VStack {
                        Text("This is taking all the space")
                        Button(action: {
                            isPresenting.toggle()
                        }, label: {
                            Text("Done")
                        })
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
            })
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
