//
//  onApear.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 4/1/25.
//

import SwiftUI

struct onApear: View {
    @State var text: String = "hello, world!"
    @State var count: Int = 0
    var body: some View {
        NavigationView{
            ScrollView {
                Text(text)
                LazyVStack{
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                        // random color everytime
                            .foregroundColor(Color(.sRGB, red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1), opacity: 1))
                        
                            .onAppear {
                                count += 1
                                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                    
                                    //with animation
                                    withAnimation(.easeInOut(duration: 2)){
                                        text = "Hello, Zheer!"
                                    }
                                }
                            }
                    }
                }.navigationTitle("on Apear: \(count)")
            }
        }
    }
}

#Preview {
    onApear()
}
