//
//  ToggleSwitchView.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 24/12/24.
//

import SwiftUI

struct ToggleSwitchView: View {
    @State private var darkModeIsOn = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Toggle(isOn: $darkModeIsOn) {
                    Text(darkModeIsOn ? "Dark Mode" : "Light Mode")
                        .foregroundColor(darkModeIsOn ? .white : .black)
                        .font(.headline)
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(darkModeIsOn ? Color.black : Color.white)
            .ignoresSafeArea()
            .navigationTitle("Toggle Switch")
        }
    }
}

#Preview {
    ToggleSwitchView()
}
