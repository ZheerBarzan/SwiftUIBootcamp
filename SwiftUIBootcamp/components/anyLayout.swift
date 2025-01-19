//
//  anyLayout.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 19/1/25.
//

import SwiftUI

struct anyLayout: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack(spacing: 12){
            Text("horizontal size class: \(horizontalSizeClass.debugDescription)")
            Text("vertical size class: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout{
                Text("Alpha")
                Text("Beta")
                Text("Charlie")
            }
                
            
//            if horizontalSizeClass == .compact {
//                VStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Charlie")
//                }
//            }else {
//                HStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Charlie")
//                }
//            }
        }
    }
}

#Preview {
    anyLayout()
}
