//
//  groups.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 18/1/25.
//

import SwiftUI

struct groups: View {
    var body: some View {
        VStack(spacing: 50){
            Text("hello world")
            
            Group{
                
                Text("hello world")
                Text("hello world")
            }.padding()
            .foregroundColor(.black)
            .background(Color.red)
            .cornerRadius(10)
            
            
        }.padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

#Preview {
    groups()
}
