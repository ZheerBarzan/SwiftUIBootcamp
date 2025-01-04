//
//  tapGesture.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 4/1/25.
//

import SwiftUI

struct tapGesture: View {
    @State var isTapped: Bool = false
    @State var backgroundColor: Color = .red
    var body: some View {
        VStack(spacing: 20){
            
            RoundedRectangle(cornerRadius: 25)
                .fill(backgroundColor)
                .frame(width: 300, height: 300)
            
            
            Button(action: {
                isTapped.toggle()
                backgroundColor = .blue
                
            }, label: {
                Text("I'm a button click me")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
            })
            .cornerRadius(15)
            
            Text("I'm a text tap me")
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(15)
                .onTapGesture {
                    isTapped.toggle()
                    backgroundColor = .green
                }
            
            Text("Reset I'm also a Text")
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(15)
                .onTapGesture {
                    isTapped.toggle()
                    backgroundColor = .red
                }
            
            
            
        }
    }
}

#Preview {
    tapGesture()
}
