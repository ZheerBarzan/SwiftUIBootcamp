//
//  stacks.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 5/12/24.
//

import SwiftUI

struct stacks: View {
    
    // VStack -> Vertical Stack
    // HStack -> Horizontal Stack
    // ZStack -> Z-Index Stack Back to front
    var body: some View {
        VStack( spacing: 30, content:{
            VStack{
                NeuBox(height: 100, width: 100, color: .red)
                NeuBox(height: 100, width: 100, color: .green)
                NeuBox(height: 100, width: 100, color: .blue)
            }
            
            HStack(spacing: 0, content:{
                NeuBox(height: 100, width: 100, color: .red)
                NeuBox(height: 100, width: 100, color: .green)
                NeuBox(height: 100, width: 100, color: .blue)
            })
            
            ZStack(alignment: .bottomLeading, content: {
                NeuBox(height: 200, width: 200, color: .red)
                NeuBox(height: 150, width: 150, color: .green)
                NeuBox(height: 100, width: 100, color: .blue)
            })
        })
        
    }
}

#Preview {
    stacks()
}
