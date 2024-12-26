//
//  stepper.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 26/12/24.
//

import SwiftUI

struct stepper: View {
    @State private var age = 18
    @State private var widthIncrement: CGFloat = 0
    @State private var heightIncrement: CGFloat = 0
    var body: some View {
            
            VStack{
                
                Stepper("Age: \(age)", value: $age, in: 18...100)
                    .padding()
                Spacer()
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.red)
                    .frame(width: 200 + widthIncrement, height: 100 + heightIncrement)
                    
                
                Spacer()
                
                Stepper("Width: \(Int(widthIncrement))"){
                    incrementWidth(for: 10)
                } onDecrement: {
                    incrementWidth(for: -10)
                }
                .padding()
                
                Stepper("Height: \(Int(heightIncrement))"){
                    incrementHeight(for: 10)
                } onDecrement: {
                    incrementHeight(for: -10)
                }.padding()
                
                Spacer()
               
                
            }
    }
    
    func incrementWidth(for amount: CGFloat){
        withAnimation(.easeInOut(duration: 1)){
            widthIncrement += amount
        }
    }
    
    func incrementHeight(for amount: CGFloat){
        withAnimation(.easeInOut(duration: 1)){
            heightIncrement += amount
        }
    }
}

#Preview {
    stepper()
}
