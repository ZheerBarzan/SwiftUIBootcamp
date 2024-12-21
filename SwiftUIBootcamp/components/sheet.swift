//
//  sheet.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 21/12/24.
//

import SwiftUI

struct sheet: View {
    
    @State var showSheet = false
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("button")
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }).sheet(isPresented: $showSheet, content:{
                secondScreen()
            })
    }
}
}

struct secondScreen: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Text("button")
                    .foregroundColor(.red)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            })
    }
}
}

#Preview {
    sheet()
}
