//
//  animations.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 16/12/24.
//

import SwiftUI

struct animations: View {
    
    @State var isAnimated = false
    var body: some View {
        
        VStack{
            Button(action:{
                withAnimation(.easeInOut(duration: 1)){
                    isAnimated.toggle()
                }
            }, label: {
                Text("Animate")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            if isAnimated {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
                    .overlay(Text("Hello, World!").foregroundColor(.white))
            }
            
            
        }
    }
}

#Preview {
    animations()
}
