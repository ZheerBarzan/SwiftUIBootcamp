//
//  padding.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 6/12/24.
//

import SwiftUI

struct paddingFeature: View {
    var body: some View {
        
        VStack (spacing: 20, content:{
            HStack(spacing: 0) {
                NeuBox(height: 100, width: 100, color: .red).padding()
                NeuBox(height: 100, width: 100, color: .green)
                NeuBox(height: 100, width: 100, color: .blue)
            }
            
            Text("Hello, World!")
                .padding(.horizontal,100)
                .padding(.vertical, 20)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(10)
            
            Text("Hello, Zheer!")
                .frame(maxWidth: .infinity, maxHeight: 100)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal, 20)
        })
        
    }
}

#Preview {
    paddingFeature()
}
