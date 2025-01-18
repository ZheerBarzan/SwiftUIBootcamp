//
//  animation.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 18/1/25.
//

import SwiftUI

struct animation: View {
    @State var animate1 = false
    @State var animate2 = false
    var body: some View {
        
        ZStack{
            VStack(spacing: 20){
                
                Button("animate action 1"){
                    animate1.toggle()
                }
                Button("animate action 2"){
                    animate2.toggle()
                }
                
                ZStack{
                    Color.red.ignoresSafeArea()
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity,alignment: animate1 ? .leading : .trailing)
                        .background(.white)
                        .frame(maxHeight: .infinity,alignment: animate2 ? .top : .bottom)
                }
            }
        }.animation(.spring, value: animate1)
        .animation(.spring, value: animate2)
            
    }
}

#Preview {
    animation()
}
