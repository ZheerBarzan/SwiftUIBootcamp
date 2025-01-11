//
//  appStorage.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 11/1/25.
//

import SwiftUI

struct appStorage: View {
    // we can use AppStorage for when we want our data to pressit
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20){
            
            Text(currentUserName ?? "unknown")
            
            //TextField("enter a name", text: $currentUserName)
            
            Button("save".uppercased()){
                let name = "emily"
                currentUserName = name
                
            }
        }
        
    }
}

#Preview {
    appStorage()
}
