//
//  ContentView.swift
//  Swift Practice 165 Same ViewModel In Different View
//
//  Created by Dogpa's MBAir M1 on 2022/7/13.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = IntViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            FirstView(intVM: vm)
            Spacer()
            SecondView(intVM: vm)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//BindingView(intVM:  vm)
