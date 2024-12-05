//
//  NeuBox.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 5/12/24.
//

import SwiftUI

struct NeuBox: View {
    
    var height: CGFloat
    var width: CGFloat
    var color: Color
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                Color(color)
            )
            .frame(width: width, height: height)
            .shadow(color: Color.primary.opacity(0.3), radius: 10, x: 10, y: 10)
    }
        
    }


#Preview {
    NeuBox( height: 300, width: 300, color: .red)
}
