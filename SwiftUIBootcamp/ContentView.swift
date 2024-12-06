//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TextComponent(text: "Hello, zheer!")
        CustomComponent(name: "Zheer", job: .developer)
    }
}

#Preview {
    ContentView()
}
