//
//  picker.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 24/12/24.
//

import SwiftUI

struct picker: View {
    
    @State private var selected = 0
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Age: \(selected)")
            }
            Picker(selection: $selected, label: Text("Picker"), content: {
                ForEach(18..<100){ number in
                    Text("\(number)").tag(number)
                }
            }).pickerStyle(WheelPickerStyle())
       
               
        }
        
    }
}

#Preview {
    picker()
}
