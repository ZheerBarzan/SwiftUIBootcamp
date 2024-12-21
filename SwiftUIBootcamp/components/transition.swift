//
//  transition.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 21/12/24.
//

import SwiftUI

struct transition: View {
    @State var showView = false
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            VStack{
                        Button("button"){
                            showView.toggle()
                        }
                        Spacer()
                        
                    }
                    
                    if showView {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: UIScreen.main.bounds.height / 2)
                            .transition(.move(edge: .bottom))
                    }
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

#Preview {
    transition()
}
