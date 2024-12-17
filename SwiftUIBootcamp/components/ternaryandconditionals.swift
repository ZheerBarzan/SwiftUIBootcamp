//
//  ternaryandconditionals.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 16/12/24.
//

import SwiftUI

struct ternaryandconditionals: View {
    @State var isDarkMode = false

    var body: some View {
        VStack(spacing: 20) {
            
            // the text changing as the toggle changes
            Text(isDarkMode ? "Dark Mode is ON" : "Light Mode is ON")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(isDarkMode ? .white : .black)
            
            // the toggle button to change the text
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
                    .font(.headline)
                    .foregroundColor(isDarkMode ? .white : .black)
            }
            .toggleStyle(.switch)
            .padding()
            .background(isDarkMode ? Color.gray.opacity(0.4) : Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding()
        }
        // background of the view changes based on the toggle
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isDarkMode ? Color.black : Color.white) // Use ternary for background
        .ignoresSafeArea() // Ensure background fills the screen
    }
}

#Preview {
    ternaryandconditionals()
}
