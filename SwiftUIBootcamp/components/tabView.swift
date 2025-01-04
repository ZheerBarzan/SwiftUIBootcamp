//
//  TabViewExample.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 26/12/24.
//

import SwiftUI

struct TabViewExample: View {
    // MARK: PROPERTIES
    @State private var selectedTab = 0

    
    // MARK: body
    var body: some View {
        TabView(selection: $selectedTab) {
            IconComponent()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                        .font(.system(size: 14, weight: .bold, design: .monospaced))
                }
                .tag(0)

            ShapesComponent()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                        .font(.system(size: 14, weight: .bold, design: .monospaced))
                }
                .tag(1)

            ImageComponent(imageName: "kimi")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                        .font(.system(size: 14, weight: .bold, design: .monospaced))
                }
                .tag(2)
        }
        .accentColor(.black)
    }
}

//MARK: preview

#Preview {
    TabViewExample()
}
