//
//  space.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 6/12/24.
//

import SwiftUI

struct space: View {
    var body: some View {
        
        VStack (spacing: 20, content:{
            
            VStack(spacing: 0) {
                NeuBox(height: 100, width: 100, color: .red)
                Spacer()
                    .frame(width: 10)
                    .background(Color.orange)
                NeuBox(height: 100, width: 100, color: .green)
                Spacer()
                    .frame(width: 10)
                    .background(Color.orange)
                
                NeuBox(height: 100, width: 100, color: .blue)
            }.background(Color.white)
            HStack(spacing: 0) {
                NeuBox(height: 100, width: 100, color: .red)
                Spacer()
                NeuBox(height: 100, width: 100, color: .green)
                Spacer()
                NeuBox(height: 100, width: 100, color: .blue)
            }
        
        })
    }
}

#Preview {
    space()
}
