//
//  viewThatFits.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 20/1/25.
//

import SwiftUI

struct viewThatFits: View {
    var body: some View {
        ZStack{
            Color.indigo.ignoresSafeArea()
            
            ViewThatFits{
                Text("the quick brown fox jumps over lazy dog")
                Text("to be or not to be ")
            }
            
            
        }.frame(height: 300)
            .padding(16)
            .font(.title)
    }
}

#Preview {
    viewThatFits()
}
