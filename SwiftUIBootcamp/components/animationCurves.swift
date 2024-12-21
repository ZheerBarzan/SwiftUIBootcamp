//
//  animationCurves.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 21/12/24.
//

import SwiftUI

struct animationCurves: View {
    
    @State var isAnimated = false
    var body: some View {
        VStack{
            Button("button"){
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.red)
                .frame(width: isAnimated ? 200 : 50, height: 100)
                .animation(Animation.linear)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.green)
                .frame(width: isAnimated ? 200 : 50, height: 100)
                .animation(Animation.easeIn)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.blue)
                .frame(width: isAnimated ? 200 : 50, height: 100)
                .animation(Animation.easeOut)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.red)
                .frame(width: isAnimated ? 200 : 50, height: 100)
                .animation(Animation.easeInOut)
        }
    }
}

#Preview {
    animationCurves()
}
