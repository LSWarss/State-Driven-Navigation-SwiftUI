//
//  StateManager.swift
//  State-Driven-Navigation
//
//  Created by Łukasz Stachnik on 17/05/2021.
//

import Foundation
import Combine


class StateManager : ObservableObject {
    
    @Published var selection : Int = 2
    @Published var firstDetailIsShown : Bool = false
    @Published var selectedItem : String? = nil
    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        $firstDetailIsShown
            .filter({ !$0 })
            .removeDuplicates()
            .sink{ value in
                self.selectedItem = nil
            }.store(in: &subscriptions)
    }
    
    
    func goToFirstRootView() {
        selectedItem = nil
        firstDetailIsShown = false
    }
}
