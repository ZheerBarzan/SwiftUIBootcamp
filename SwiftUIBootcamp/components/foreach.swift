//
//  foreach.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 7/12/24.
//

import SwiftUI

struct foreach: View {
    
    let employeeData = [
        CustomComponent(name: "Zheer", job: .developer),
        CustomComponent(name: "Zheer", job: .designer),
        CustomComponent(name: "Zheer", job: .manager)
    ]
    var body: some View {
        
        VStack{
            ForEach (employeeData, id: \.job) { employee in
                employee
            }
        }
        
        HStack{
            ForEach(employeeData.indices) { index in
                employeeData[index]
            }
        }
    }
}

#Preview {
    foreach()
}
