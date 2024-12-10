//
//  safearea.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 10/12/24.
//

import SwiftUI

struct safearea: View {
    var body: some View {
        // one way to use safe area
//        ZStack {
//            Color.green
//                .edgesIgnoringSafeArea(.all)
//
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .padding()
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .padding()
//                Spacer()
//
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//
//        }
        
        // another way to use safe area
        ScrollView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                
                    .cornerRadius(10)
                    .padding()
                Spacer()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white
                .edgesIgnoringSafeArea(.all))
        }
        
    }
}

#Preview {
    safearea()
}
