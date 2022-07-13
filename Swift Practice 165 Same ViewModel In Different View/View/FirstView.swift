//
//  FirstView.swift
//  Swift Practice 165 Same ViewModel In Different View
//
//  Created by Dogpa's MBAir M1 on 2022/7/13.
//

import Foundation
import SwiftUI

struct FirstView: View {
    
    @StateObject var intVM:IntViewModel
    
    var body: some View {
        VStack{
            Text("First View")
            HStack{
                Spacer()
                Button {
                    intVM.addOne()
                } label: {
                    Text("加 1")
                }
                .frame(width: 100, height: 60, alignment: .center)
                .background(Capsule().fill(.green))
                .foregroundColor(.black)
                Spacer()
                Button {
                    intVM.minOne()
                } label: {
                    Text("減 1")
                        .frame(width: 100, height: 60, alignment: .center)
                        .background(Capsule().fill(.green))
                        .foregroundColor(.black)
                }
                Spacer()
                Button {
                    intVM.resetObserveInt()
                } label: {
                    Text("重置")
                        .frame(width: 100, height: 60, alignment: .center)
                        .background(Capsule().fill(.green))
                        .foregroundColor(.black)
                }
                Spacer()
            }
            Text("目前observeInt：\(intVM.observeInt)")
                .font(.system(size: 30))
                .foregroundColor(.green)
        }
        .frame(minWidth: 0, idealWidth: .infinity)
    }
}
