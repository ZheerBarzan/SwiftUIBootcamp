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
                    plusButtonPressed()
                }, label: {
                    Text("Plus 1")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                Button(action:{
                    minusButtonPressed()

                }, label: {
                    Text("Minus 1 ")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                Button(action:{
                    squareButtonPressed()
                }, label: {
                    Text("Squre")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                Button(action:{
                    resetButtonPressed()
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
    
    // extracting fuctions to achive modularity and clean code
    func plusButtonPressed(){
        count += 1
        backgroundColor = .blue
    }
    func minusButtonPressed(){
        count -= 1
        backgroundColor = .red
    }
    func squareButtonPressed(){
        count = count * count
        backgroundColor = .orange
    }
    func resetButtonPressed(){
        count = 0
        backgroundColor = .green
    }
}

#Preview {
    stateProperty()
}


