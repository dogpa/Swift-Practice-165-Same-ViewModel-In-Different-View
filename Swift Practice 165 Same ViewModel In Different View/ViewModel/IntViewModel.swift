//
//  IntViewModel.swift
//  Swift Practice 165 Same ViewModel In Different View
//
//  Created by Dogpa's MBAir M1 on 2022/7/13.
//

import Foundation

final class IntViewModel: ObservableObject {
    @Published var observeInt = 0
    
    func addOne () {
        observeInt += 1
        print(#function, "observeInt:\(observeInt)")
    }
    
    func minOne () {
        observeInt -= 1
        print(#function, "observeInt:\(observeInt)")
    }
    
    func resetObserveInt () {
        observeInt = 0
        print(#function, "observeInt:\(observeInt)")
    }
}
