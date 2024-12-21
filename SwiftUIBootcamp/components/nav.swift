//
//  nav.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 21/12/24.
//

import SwiftUI

struct nav: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink(
                    destination: FirstView(),
                    label: {
                        Text("First View")
                    })
                NavigationLink(
                    destination: SecondView(),
                    label: {
                        Text("Second View")
                    })
            }.navigationTitle("Navigation")
            
        }
    }
}

struct FirstView: View {
    var body: some View {
        
        
            Color.green
                .edgesIgnoringSafeArea(.all)
                    Text("First View")
    
        
    }
}

struct SecondView: View{
    var body: some View {
        
        
            Color.red
                .edgesIgnoringSafeArea(.all)
                    Text("Second View")
        
        
    }
}


#Preview {
    nav()
}
