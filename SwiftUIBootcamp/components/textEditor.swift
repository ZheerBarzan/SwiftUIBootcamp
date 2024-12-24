//
//  textEditor.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 24/12/24.
//

import SwiftUI

struct textEditor: View {
    
    @State private var text = ""
    @State private var savedText = ""
    var body: some View {
        
        NavigationView{
            
            VStack (spacing : 20){
                
                TextEditor(text: $text)
                    .frame(height: 200)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .padding()
                    .navigationTitle("Text Editor")
                
                Button(action: {
                    savedText = text
                    
                }, label: {
                    Text("Save")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
                
                Text(savedText)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                 
                
                Spacer()
                
            }.padding()
                .background(Color(.secondarySystemBackground))
            
        }
    }
}

#Preview {
    textEditor()
}
