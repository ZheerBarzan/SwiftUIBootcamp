//
//  popOver.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 19/1/25.
//

import SwiftUI

struct popOver: View {
    @State var showPopover = false
    var body: some View {
        ZStack{
            Color.cyan.ignoresSafeArea()
            
            Button("show popover"){
                showPopover.toggle()
            }.padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .popover(isPresented: $showPopover) {
                    myPopover(showPopover: $showPopover)
                        .presentationCompactAdaptation(.popover)
                    
                }
        }
    }
}

struct myPopover: View{
    @Binding var showPopover: Bool
    var body: some View{
        VStack(spacing: 20){
            
            Text("hello im a popover")
            
            Button("Dismiss"){
                showPopover.toggle()
            }
        }.padding()
    }
}

#Preview {
    popOver()
}
