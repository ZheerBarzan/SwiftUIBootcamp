//
//  stateProperty.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 10/12/24.
//

import SwiftUI

struct stateProperty: View {
    @State private var count = 0
    @State private var backgroundColor = Color.white
    var body: some View {
        
        
        VStack(spacing:20){
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Count: \(count)")
                .font(.title)
                .fontWeight(.bold)
            
            
            HStack(spacing: 20){
                Button(action:{
                    count += 1
                    backgroundColor = .blue
                }, label: {
                    Text("Plus 1")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                Button(action:{
                    count -= 1
                    backgroundColor = .red

                }, label: {
                    Text("Minus 1 ")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                Button(action:{
                    count = count * count
                    backgroundColor = .orange
                }, label: {
                    Text("Squre")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                Button(action:{
                    count = 0
                    backgroundColor = .green
                }, label: {
                    Text("Reset")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor
            .ignoresSafeArea())
    }
}

#Preview {
    stateProperty()
}
