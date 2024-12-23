//
//  contextMenu.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 23/12/24.
//

import SwiftUI

struct contextMenu: View {
    @State var backgroundColor = Color.blue
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            Image(systemName: "person.fill")
                .font(.title)
            Text("Zheer Barzan")
                .font(.headline)
            Text("iOS Developer")
                .font(.subheadline)
        }.foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu(menuItems:{
            Button(action:{
                backgroundColor = .red
                print("Copy")
            }, label: {
                Label("Copy", systemImage: "doc.on.doc")
            })
            Button(action:{
                backgroundColor = .green
                print("Paste")
            }, label: {
                Label("Paste", systemImage: "doc.on.clipboard")
            })
            Button(action:{
                backgroundColor = .yellow
                print("Cut")
            }, label: {
                Label("Cut", systemImage: "scissors")
            })
        })
    }
}

#Preview {
    contextMenu()
}
