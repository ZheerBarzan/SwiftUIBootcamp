//
//  NavigationStackBootCamp.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 17/1/25.
//

import SwiftUI

struct NavigationStackBootCamp: View {
    
    let fruits = ["Apple", "Banana", "Orange", "Mango"]
    
    @State var stackPath: [String] = []
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack{
                    
                    Button("super move"){
                        stackPath.append(contentsOf: ["watermelon", "grape"])
                        
                    }
                    ForEach(fruits, id: \.self){ fruit in
                        NavigationLink(
                            value: fruit){
                                Text(fruit)
                            }.navigationTitle(fruit)
                    }
                    
                }
            }
            
        }.navigationTitle("main")
            .navigationDestination(for: String.self){ values in
                Text("the screen of \(values)")
                
            }
    }
}

#Preview {
    NavigationStackBootCamp()
}
