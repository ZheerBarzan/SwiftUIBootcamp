//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 11/1/25.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
        ZStack{
            //background
            LinearGradient(gradient: Gradient(colors: [Color.black,Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing).ignoresSafeArea()
            
            //if user is signed in
            // profile view
            // else onboarding view
            
            if currentUserSignedIn{
                profileView()
            }else{
                OnBoarding()
            }
            
        }
    }
}

#Preview {
    IntroView()
}
