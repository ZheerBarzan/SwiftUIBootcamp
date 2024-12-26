//
//  slider.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 26/12/24.
//

import SwiftUI

struct slider: View {
    
    @State var sliderValue = 3.0
    var body: some View {
        
        Slider(value: $sliderValue, in: 0...5, step: 1)
            .padding()
        
        
        Text(
            
            String(format: "%.0f", sliderValue))
            .padding()
            .font(.system(.title, design: .monospaced))
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    slider()
}
