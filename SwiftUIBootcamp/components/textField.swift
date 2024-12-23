//
//  TextFieldView.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 23/12/24.
//

import SwiftUI

struct TextFieldView: View {
    @State private var name = ""
    @State private var showingAlert = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Enter your name", text: $name)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .shadow(color: Color.primary.opacity(0.3), radius: 10, x: 10, y: 10)
                
                Button(action: {
                    showingAlert.toggle()
                }) {
                    Text("Submit")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text("Hello"),
                        message: Text(name.isEmpty ? "Please enter your name." : "Your name is \(name)."),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
            .padding()
            .navigationTitle("TextField Example")
        }
    }
}

#Preview {
    TextFieldView()
}
