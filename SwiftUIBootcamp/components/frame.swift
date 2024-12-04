//
//  frame.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 4/12/24.
//

import SwiftUI

struct frameComponent: View {
    var body: some View {
        Text("کەسی تێدانیە... ئەم شارە بێ تۆ... ")
            .multilineTextAlignment(.center)
            .frame(width: 300, height: 300, alignment: .center)
            .background(Color.red)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(150)
        
            // if you want to get the whole screen
            // .frame(maxWidth: .infinity, maxHeight: .infinity)
            // .background(Color.red)
    }
}

#Preview {
    frameComponent()
}
