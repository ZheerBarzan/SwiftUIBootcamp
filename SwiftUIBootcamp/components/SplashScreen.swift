//
//  SplashScreen.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 24/12/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
       
       var body: some View {
           
           if isActive{
                ContentView()
           }else{
               
               ZStack{
                   Color.white
                       .ignoresSafeArea()
                   Image("kimi")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 300, height: 300)
               }
               .onAppear{
                   DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                       withAnimation{
                           isActive = true
                       }
                   }
                   
               }
           }
       }
   }
#Preview {
    SplashScreen()
}
