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
            
            Spacer()
            
            RoundedRectangle(cornerRadius:isAnimated ? 50 : 25.0)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .animation(.easeInOut(duration: 1))
                .transition(.scale)
           
            
            
        }
    }
}

#Preview {
    animations()
}
