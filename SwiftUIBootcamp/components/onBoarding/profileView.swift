//
//  profileView.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 11/1/25.
//

import SwiftUI

struct profileView: View {
    //AppStorage for the inputs
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
            VStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Text("User Name: \(currentUserName ?? "name goes here")")
                Text("Age: \(currentUserAge ?? 0)")
                Text("Gender: \(currentUserGender ?? "gender goes here")")

                Button(action:{
                    signOut()
                    
                }, label: {
                    Text("sign out")
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                })
            }
        }
    
    
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
    }
}

#Preview {
    profileView()
}
