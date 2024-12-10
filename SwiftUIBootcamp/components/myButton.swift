//
//  myButton.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 10/12/24.
//

import SwiftUI

struct myButton: View {
    @State private var isClicked = false
    var title: String
    var body: some View {
        
        Button(action:{
            isClicked.toggle()
            
        }, label: {
            Text(isClicked ? "clicked" :title)
                .padding()
                .background(isClicked ? .blue : .red)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
        })
    }
}

#Preview {
    myButton(title: "press me")
}
