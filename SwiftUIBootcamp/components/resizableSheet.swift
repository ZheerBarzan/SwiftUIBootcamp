//
//  resizableSheet.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 18/1/25.
//

import SwiftUI

struct resizableSheet: View {
    @State var showSheet = false
    var body: some View {
        ZStack{
            Color.pink.ignoresSafeArea()
            
            Button("show sheet"){
                showSheet.toggle()
            }
            
        }.sheet(isPresented: $showSheet) {
            mySheet()
                .presentationDetents([.medium,.large])
        }
    }
}


struct mySheet: View{
    var body: some View{
        Text("hello im a sheet")
    }
}
#Preview {
    resizableSheet()
}
