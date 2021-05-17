//
//  FirstTabView.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 16/05/2021.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var firstDetailIsShown : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("This is the first tab view")
                
                NavigationLink(
                    destination: FirstTabDetailView(),
                    isActive: $firstDetailIsShown,
                    label: {
                        Text("Go to detail")
                    })
                
//                NavigationLink("Go to detail", destination: FirstTabDetailView())
            }
        }
       
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
