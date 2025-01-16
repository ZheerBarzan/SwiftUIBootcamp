//
//  foucsSate.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 16/1/25.
//

import SwiftUI

struct foucsSate: View {
    @FocusState var isUserNameFouced: Bool
    @State var userName: String = ""
    @FocusState var isPasswordFouced: Bool
    @State var password: String = ""
    var body: some View {
        VStack{
            TextField("Enter your name", text: $userName)
                .focused($isUserNameFouced)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
            
            TextField("Enter your Password", text: $password)
                .focused($isPasswordFouced)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
            
            Button("Login"){
                let userNameVarlid = !userName.isEmpty && userName.count > 3
                let passwordVarlid = !password.isEmpty && password.count > 3
                if userNameVarlid && passwordVarlid {
                    print("Login Success")
                }else if userNameVarlid {
                    isUserNameFouced = false
                    isPasswordFouced = true
                }else{
                    isUserNameFouced = true
                    isPasswordFouced = false
                }
            }
               
        }.padding(40)
    }
}

#Preview {
    foucsSate()
}
