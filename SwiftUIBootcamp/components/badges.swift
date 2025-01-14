//
//  badges.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 14/1/25.
//

import SwiftUI

//only works in list and TabView

struct badges: View {
    var body: some View {
        TabView{
            Color.red
            .tabItem{
                Image(systemName: "heart.fill")
                Text("like")
            }.badge(3)
            
            Color.green
                .tabItem{
                    Image(systemName: "person")
                    Text("profile")
                }.badge(1)
            Color.blue
                .tabItem{
                    Image(systemName: "book")
                    Text("profile")
                }.badge(0)
            
        }
    }
}

#Preview {
    badges()
}
