//
//  BindingView.swift
//  Swift Practice 165 Same ViewModel In Different View
//
//  Created by Dogpa's MBAir M1 on 2022/7/13.
//

import SwiftUI

struct BindingView: View {
    @Binding var intVM:IntViewModel
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    intVM.addOne()
                } label: {
                    Text("加 1")
                }
                Spacer()
                Button {
                    intVM.minOne()
                } label: {
                    Text("減 1")
                }
                Spacer()
                Button {
                    intVM.resetObserveInt()
                } label: {
                    Text("重置")
                }
                Spacer()
            }
            Text("目前observeInt：\(intVM.observeInt)")
                .font(.system(size: 30))
                .foregroundColor(.yellow)
        }
    }
}
