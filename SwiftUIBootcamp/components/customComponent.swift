//
//  initsandEnums.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 6/12/24.
//

import SwiftUI



struct CustomComponent: View {
    
    let name: String
    let job: String
    let backgroundColor: Color
    
    init(name: String, job: Job) {
        self.name = name
        
        
        if job == .developer {
            self.job = "iOS Developer"
            self.backgroundColor = Color.green
        } else if job == .designer {
            self.job = "UI/UX Designer"
            self.backgroundColor = Color.blue
        } else {
            self.job = "Project Manager"
            self.backgroundColor = Color.red
        }
    }
    
    enum Job {
        case developer
        case designer
        case manager
    }
    
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("I'm \(name)!")
                .font(.largeTitle)
                .underline()
            Text("My job is \(job)")
                .font(.headline)
            
        }
        .frame(width: 300, height: 200)
        .background(backgroundColor)
        .foregroundColor(Color.black)
        .cornerRadius(10)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

#Preview {
    CustomComponent(name: "Zheer", job: .developer)
    CustomComponent(name: "Zheer", job: .designer)
    CustomComponent(name: "Zheer", job: .manager)
}
