//
//  alert.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 22/12/24.
//

import SwiftUI

struct alert: View {
     
    @State private var showingAlert = false
    var body: some View {
        Button("Show Alert") {
            showingAlert.toggle()
        }.alert(isPresented: $showingAlert, content:
                    {
            //Alert(title: Text("how cool is this?"), message: Text("This is a message"), dismissButton: .default(Text("OK")))
            Alert(title: Text("how cool is this?"),
                message: Text("choose an option"),
                  primaryButton: .cancel(),
                  secondaryButton: .destructive(Text("Delete"), action: {
                    print("Deleting")
                  }))
            
        })
    }
}

#Preview {
    alert()
}
