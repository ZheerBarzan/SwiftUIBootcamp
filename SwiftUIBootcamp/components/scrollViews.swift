//
//  scrollViews.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 7/12/24.
//

import SwiftUI

struct scrollViews: View {
    
    let EmployeeData = [
        CustomComponent(name: "Zheer", job: .developer),
        CustomComponent(name: "Zheer", job: .designer),
        CustomComponent(name: "Zheer", job: .manager),
        CustomComponent(name: "Zheer", job: .developer),
        CustomComponent(name: "Zheer", job: .designer),
        CustomComponent(name: "Zheer", job: .manager)
    ]
    var body: some View {
        
        // vertical Scrollview
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack{
                ForEach (EmployeeData, id: \.job) { employee in
                    employee
                }
            }
        })
        // horizontal Scrollview
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack{
                ForEach(EmployeeData.indices) { index in
                    EmployeeData[index]
                }
            }
            
        })
    }
}

#Preview {
    scrollViews()
}
